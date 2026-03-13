@Epic-Recommendation
@AuthoredBy-harshita.nayak
@ReviewedBy-None
@ImplementedBy-bhanu.singh1
@Release3
@ReviewedByDEV
Feature: Loan information Repayment Parameters Field Validation in Recommendation
#FeatureID-ACAUTOCAS-576
  Scenario Outline: ACAUTOCAS-6249: Validating the <visibility> of <FieldName> with single disbursal type in Repayment Parameters Details in loan information for Individual Applicant Type at Recommendation in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Loan information Repayment Parameters details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                       | visibility   | SourceDataFile       | SheetName | RowNumber | Var_Stage      |
      | Recovery Type                   | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Repayment Type                  | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Anchor Rate                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Recovery Sub Type               | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Rate(%)                         | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Installment Mode                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Anchor Type                     | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Spread                          | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Total Discount                  | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Total Number of Installments    | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Number of Advanced Installments | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Application Amount              | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Disbursal Type                  | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Disbursal To                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Repayment Frequency             | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Number of Disbursals            | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Tenure                          | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | TenureIn                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Installment Type                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Interest Start Date             | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Installment Based On            | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Interest Charge Method          | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Anchor Type                     | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Product Discount                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Due Day                         | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Package Discount                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Policy Rate                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Interest Charge Type            | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Actual Date                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Broken Period Adjustment        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Moratorium                      | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |

#FeatureID-ACAUTOCAS-576
  Scenario Outline: ACAUTOCAS-6250: Validating the <visibility> of <FieldName> with single disbursal type in Repayment Parameters Details in loan information for Individual Applicant Type at Recommendation in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Loan information Repayment Parameters details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                       | visibility   | SourceDataFile       | SheetName | RowNumber | Var_Stage                    |
      | Recovery Type                   | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Repayment Type                  | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Anchor Rate                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Recovery Sub Type               | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Rate(%)                         | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Installment Mode                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Anchor Type                     | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Spread                          | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Total Discount                  | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Total Number of Installments    | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Number of Advanced Installments | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Application Amount              | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Disbursal Type                  | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Disbursal To                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Repayment Frequency             | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Number of Disbursals            | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Tenure                          | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | TenureIn                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Installment Type                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Interest Start Date             | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Installment Based On            | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Interest Charge Method          | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Anchor Type                     | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Product Discount                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Due Day                         | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Package Discount                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Policy Rate                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Interest Charge Type            | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Actual Date                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Broken Period Adjustment        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Moratorium                      | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |


#FeatureID-ACAUTOCAS-576
  Scenario Outline: ACAUTOCAS-6251: Validating the <visibility> of <FieldName> with single disbursal type in Repayment Parameters Details in loan information for Individual Applicant Type at Recommendation in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Loan information Repayment Parameters details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                       | visibility   | SourceDataFile       | SheetName | RowNumber | Var_Stage                    |
      | Recovery Type                   | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Repayment Type                  | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Anchor Rate                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Recovery Sub Type               | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Rate(%)                         | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Installment Mode                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Anchor Type                     | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Spread                          | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Total Discount                  | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Total Number of Installments    | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Number of Advanced Installments | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Application Amount              | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Disbursal Type                  | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Disbursal To                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Repayment Frequency             | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Number of Disbursals            | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Tenure                          | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | TenureIn                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Installment Type                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Interest Start Date             | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Installment Based On            | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Interest Charge Method          | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Anchor Type                     | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Product Discount                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Due Day                         | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Package Discount                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Policy Rate                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Interest Charge Type            | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Actual Date                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Broken Period Adjustment        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Moratorium                      | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |


#FeatureID-ACAUTOCAS-576
  Scenario Outline: ACAUTOCAS-6252: Validating the <visibility> of <FieldName> with single disbursal type  in Repayment Parameters Details in loan information for Non-Individual Applicant Type at Recommendation in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Loan information Repayment Parameters details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                       | visibility   | SourceDataFile       | SheetName | RowNumber | Var_Stage                       |
      | Recovery Type                   | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Repayment Type                  | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Anchor Rate                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Recovery Sub Type               | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Rate(%)                         | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Installment Mode                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Anchor Type                     | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Spread                          | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Total Discount                  | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Total Number of Installments    | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Number of Advanced Installments | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Application Amount              | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Disbursal Type                  | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Disbursal To                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Repayment Frequency             | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Number of Disbursals            | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Tenure                          | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | TenureIn                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Installment Type                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Interest Start Date             | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Installment Based On            | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Interest Charge Method          | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Anchor Type                     | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Product Discount                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Due Day                         | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Package Discount                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Policy Rate                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Interest Charge Type            | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Actual Date                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Broken Period Adjustment        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Moratorium                      | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |


 #FeatureID-ACAUTOCAS-576
  Scenario Outline: ACAUTOCAS-6253: Validating the <visibility> of <FieldName> with single disbursal type in Repayment Parameters Details in loan information for Non-Individual Applicant Type at Recommendation in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Loan information Repayment Parameters details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                       | visibility   | SourceDataFile       | SheetName | RowNumber | Var_Stage                       |
      | Recovery Type                   | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Repayment Type                  | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Anchor Rate                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Recovery Sub Type               | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Rate(%)                         | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Installment Mode                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Anchor Type                     | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Spread                          | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Total Discount                  | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Total Number of Installments    | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Number of Advanced Installments | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Application Amount              | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Disbursal Type                  | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Disbursal To                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Repayment Frequency             | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Number of Disbursals            | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Tenure                          | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | TenureIn                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Installment Type                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Interest Start Date             | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Installment Based On            | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Interest Charge Method          | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Anchor Type                     | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Product Discount                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Due Day                         | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Package Discount                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Policy Rate                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Interest Charge Type            | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Actual Date                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Broken Period Adjustment        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Moratorium                      | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
 #FeatureID-ACAUTOCAS-576
  Scenario Outline: ACAUTOCAS-6254: Validating the <visibility> of <FieldName> with single disbursal type in Repayment Parameters Details in loan information for Non-Individual Applicant Type at Recommendation in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Loan information Repayment Parameters details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                       | visibility   | SourceDataFile       | SheetName | RowNumber | Var_Stage                       |
      | Recovery Type                   | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Repayment Type                  | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Anchor Rate                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Recovery Sub Type               | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Rate(%)                         | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Installment Mode                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Anchor Type                     | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Spread                          | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Total Discount                  | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Total Number of Installments    | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Number of Advanced Installments | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Application Amount              | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Disbursal Type                  | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Disbursal To                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Repayment Frequency             | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Number of Disbursals            | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Tenure                          | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | TenureIn                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Installment Type                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Interest Start Date             | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Installment Based On            | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Interest Charge Method          | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Anchor Type                     | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Product Discount                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Due Day                         | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Package Discount                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Policy Rate                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Interest Charge Type            | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Actual Date                     | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Broken Period Adjustment        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Moratorium                      | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
