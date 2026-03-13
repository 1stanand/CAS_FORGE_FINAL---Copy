@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@NotImplemented
@Conventional
@Islamic
@Deferred
Feature: Invoice Details Validation for Commercial Vehicle and Commercial Equipment under Multi Asset

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the field name marked as Mandatory NonMandatory in invoice details for Funding For as <FundingFor> in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    When user opens invoice details section
    Then user should be able to see marked Field Name as Mandatory NonMandatory
      | FieldName                     | Mandatory_NonMandatory |
      | Invoice Number                | mandatory              |
      | Invoice Date                  | mandatory              |
      | Invoice Value                 | mandatory              |
      | Hypothecation                 | non mandatory          |
      | Invoice Type                  | mandatory              |
      | Invoice For                   | mandatory              |
      | Invoice Item Reference Number | non mandatory          |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the field name marked as Mandatory NonMandatory in invoice details for Funding For as <FundingFor> in collateral details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    When user opens invoice details section
    Then user should be able to see marked Field Name as Mandatory NonMandatory
      | FieldName                     | Mandatory_NonMandatory |
      | Invoice Number                | mandatory              |
      | Invoice Date                  | mandatory              |
      | Invoice Value                 | mandatory              |
      | Hypothecation                 | non mandatory          |
      | Invoice Type                  | mandatory              |
      | Invoice For                   | mandatory              |
      | Invoice Item Reference Number | non mandatory          |

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |

#CAS-94743
   #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validation of <FieldName> in Invoice Details with <Validity> for Funding For as <FundingFor> in multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens invoice details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    When user fill "<FieldName>" with "<Validity>" in invoice details
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | Validity | FieldName      | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               |

    #CAS-94743
   #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validation of <FieldName> in Invoice Details with <Validity> for Funding For as <FundingFor> under multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens invoice details section
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    When user fill "<FieldName>" with "<Validity>" in invoice details
    Then "<FieldName>" field "<Throws_NotThrows>" error message in collateral details
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | Validity | FieldName      | Throws_NotThrows                | CollateralWB    | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 42                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 43                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 44                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 45                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 46                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Date   | throws error with error message | collateral.xlsx | invoice_details           | 47                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Date   | does not throw any error        | collateral.xlsx | invoice_details           | 48                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 35                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 36                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 37                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 38                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 39                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 40                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Number | does not throw any error        | collateral.xlsx | invoice_details           | 41                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 49                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 50                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Invoice Value  | does not throw any error        | collateral.xlsx | invoice_details           | 51                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 52                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 53                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 54                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Invoice Value  | throws error with error message | collateral.xlsx | invoice_details           | 55                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 56                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | valid    | Hypothecation  | does not throw any error        | collateral.xlsx | invoice_details           | 57                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 58                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 59                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 60                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | invalid  | Hypothecation  | throws error with error message | collateral.xlsx | invoice_details           | 61                               |

 #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the field name of invoice details with Proper label for Funding For as <FundingFor> in multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    When user opens invoice details section
    Then user should be able to see invoice details with proper labels
      | FieldName                     |
      | Invoice Number                |
      | Invoice Date                  |
      | Invoice Value                 |
      | Hypothecation                 |
      | Invoice Type                  |
      | Invoice For                   |
      | Invoice Item Reference Number |
      | Actions                       |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |

#  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the field name of invoice details with Proper label for Funding For as <FundingFor> under multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    When user opens invoice details section
    Then user should be able to see invoice details with proper labels
      | FieldName                     |
      | Invoice Number                |
      | Invoice Date                  |
      | Invoice Value                 |
      | Hypothecation                 |
      | Invoice Type                  |
      | Invoice For                   |
      | Invoice Item Reference Number |
      | Actions                       |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Chassis    | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | FBV        | Refinance   |

    #  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate field name of invoice details with Proper label for Funding For as <FundingFor> in multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    When user opens invoice details section
    Then user should be able to see invoice details with proper labels
      | FieldName                     |
      | Invoice Number                |
      | Invoice Date                  |
      | Invoice Value                 |
      | Hypothecation                 |
      | Invoice Type                  |
      | Invoice For                   |
      | Invoice Item Reference Number |
      | Actions                       |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FundingFor | FinanceMode |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Both       | Refinance   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Purchase    |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Body       | Refinance   |

    #  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Data Modification of <FieldName> in Invoice Details for Funding For as <FundingFor> in multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user closes duplicate check result box after checking the duplicates
    And user fills reason section
    And user saves the data
    When user modifies the saved collateral
    Then user should be able to modify the invoice data in "<FieldName>" field
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | FieldName                     | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Invoice Number                | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Invoice Number                | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Invoice Number                | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Invoice Number                | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Invoice Date                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Invoice Date                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Invoice Date                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Invoice Date                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Invoice Value                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Invoice Value                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Invoice Value                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Invoice Value                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Hypothecation                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Hypothecation                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Hypothecation                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Hypothecation                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Invoice Type                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Invoice Type                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Invoice Type                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Invoice Type                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Invoice For                   | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Invoice For                   | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Invoice For                   | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Invoice For                   | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | Invoice Item Reference Number | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | Invoice Item Reference Number | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | Invoice Item Reference Number | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | Invoice Item Reference Number | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |

   #  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Data Modification of <FieldName> in Invoice Details for Funding For as <FundingFor> under multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user closes duplicate check result box after checking the duplicates
    And user fills reason section
    And user saves the data
    When user modifies the saved collateral
    Then user should be able to modify the invoice data in "<FieldName>" field
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | FieldName                     | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Invoice Number                | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Invoice Number                | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Invoice Number                | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Invoice Number                | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Invoice Date                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Invoice Date                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Invoice Date                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Invoice Date                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Invoice Value                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Invoice Value                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Invoice Value                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Invoice Value                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Hypothecation                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Hypothecation                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Hypothecation                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Hypothecation                 | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Invoice Type                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Invoice Type                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Invoice Type                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Invoice Type                  | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Invoice For                   | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Invoice For                   | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Invoice For                   | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Invoice For                   | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    | Invoice Item Reference Number | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   | Invoice Item Reference Number | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    | Invoice Item Reference Number | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   | Invoice Item Reference Number | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 0                                |

      #  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the modification of invoice details including deletions for Funding For as <FundingFor> in multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 0 |
      | collateral.xlsx | invoice_details | 1 |
      | collateral.xlsx | invoice_details | 2 |
      | collateral.xlsx | invoice_details | 3 |
      | collateral.xlsx | invoice_details | 4 |
      | collateral.xlsx | invoice_details | 5 |
      | collateral.xlsx | invoice_details | 6 |
      | collateral.xlsx | invoice_details | 7 |
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    When user modifies the saved collateral
    And deletes all the invoices linked to the collateral
    And user saves the Collateral Details
    Then collateral should saved successfully
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode |
      | collateral.xlsx | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    |
      | collateral.xlsx | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   |
      | collateral.xlsx | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    |
      | collateral.xlsx | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   |

#  Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the modification of invoice details including deletions for Funding For as <FundingFor> under multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 0 |
      | collateral.xlsx | invoice_details | 1 |
      | collateral.xlsx | invoice_details | 2 |
      | collateral.xlsx | invoice_details | 3 |
      | collateral.xlsx | invoice_details | 4 |
      | collateral.xlsx | invoice_details | 5 |
      | collateral.xlsx | invoice_details | 6 |
      | collateral.xlsx | invoice_details | 7 |
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    When user modifies the saved collateral
    And deletes all the invoices linked to the collateral
    And user saves the Collateral Details
    Then collateral should saved successfully
    Examples:
      | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode |
      | collateral.xlsx | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Purchase    |
      | collateral.xlsx | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | Both       | Refinance   |
      | collateral.xlsx | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Purchase    |
      | collateral.xlsx | vehicle_details           | 1                                | <ProductType> | <ApplicantType> | <ApplicationStage> | Body       | Refinance   |

#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the modification of invoice details with adding more invoices for Funding For as <FundingFor> in multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 0 |
      | collateral.xlsx | invoice_details | 1 |
      | collateral.xlsx | invoice_details | 2 |
      | collateral.xlsx | invoice_details | 3 |
      | collateral.xlsx | invoice_details | 4 |
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user modifies the saved collateral
    When user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 5 |
      | collateral.xlsx | invoice_details | 6 |
      | collateral.xlsx | invoice_details | 7 |
    And user saves the Collateral Details
    Then collateral should saved successfully
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | FundingFor | FinanceMode |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 1                                | Chassis    | Purchase    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 1                                | Chassis    | Refinance   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 1                                | FBV        | Purchase    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 1                                | FBV        | Refinance   |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the modification of invoice details with adding more invoices for Funding For as <FundingFor> under multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 0 |
      | collateral.xlsx | invoice_details | 1 |
      | collateral.xlsx | invoice_details | 2 |
      | collateral.xlsx | invoice_details | 3 |
      | collateral.xlsx | invoice_details | 4 |
    And user closes duplicate check result box after checking the duplicates
    And user fills Reason Section
    And user saves the Collateral Details
    And user modifies the saved collateral
    When user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 5 |
      | collateral.xlsx | invoice_details | 6 |
      | collateral.xlsx | invoice_details | 7 |
    And user saves the Collateral Details
    Then collateral should saved successfully
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | FundingFor | FinanceMode |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 1                                | Both       | Purchase    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 1                                | Both       | Refinance   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 1                                | Body       | Purchase    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | collateral.xlsx | vehicle_details           | 1                                | Body       | Refinance   |

#Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the modification of invoice details with adding second final invoice for Funding For as <FundingFor> in multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 0 |
      | collateral.xlsx | invoice_details | 1 |
      | collateral.xlsx | invoice_details | 2 |
      | collateral.xlsx | invoice_details | 3 |
      | collateral.xlsx | invoice_details | 4 |
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user opens invoice details section
    And clicks on plus icon to add invoice details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user saves the Collateral Details
    Then user receives a proper error message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 119                              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 119                              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 119                              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 119                              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 120                              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 120                              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 120                              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 120                              |

    #Prerequisite:Application already punch with application type as Multi Asset
# ${ ProductType : ["CEQ","CV"]}
# ${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ApplicantType:["indiv","nonindiv"]}
   #FeatureID-ACAUTOCAS-11906
  Scenario Outline:Validate the modification of invoice details with adding second final invoice for Funding For as <FundingFor> under multi Asset at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user select Funding For as "<FundingFor>"
    And user select Finance Mode as "<FinanceMode>"
    And user fill mandatory details of asset requested for used asset
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills mandatory fields of vehicle details
    And user adds invoices to the collateral with data from:
      | collateral.xlsx | invoice_details | 0 |
      | collateral.xlsx | invoice_details | 1 |
      | collateral.xlsx | invoice_details | 2 |
      | collateral.xlsx | invoice_details | 3 |
      | collateral.xlsx | invoice_details | 4 |
    And user closes duplicate check result box after checking the duplicates
    And user saves the Collateral Details
    When user modifies the saved collateral
    And user opens invoice details section
    And clicks on plus icon to add invoice details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_invoiceDetails>" and row <Collateral_invoiceDetails_rowNum>
    And user fill Invoice Details
    And user saves the Collateral Details
    Then user receives a proper error message
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | FundingFor | FinanceMode | CollateralWB    | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 119                              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 119                              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 119                              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 119                              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Purchase    | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 120                              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Chassis    | Refinance   | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 120                              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Purchase    | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 120                              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FBV        | Refinance   | collateral.xlsx | vehicle_details           | 1                                | invoice_details           | 120                              |

