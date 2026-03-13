@Epic-Quick_Lead
@AuthoredBy-vipin.kishor
@ReviewedBy-ayush.garg
@ReviewedByDEV

Feature:Channels wise Details of Loan Related information for non individual applicant

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
  #FeatureID-ACAUTOCAS-70
  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-4657: "<DependentField>" field should be "<DependentFieldsBehaviour>" which depends on "<Fields>" Channel for non individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<Quick_lead_WB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<Quick_lead_WB>" under sheet "<Quick_lead_Home>" and row <Row_no>
    And user selects sourcing channel as "<SourcingChannel>" in non individual applicant
    Then "<DependentField>" should be "<DependentFieldsBehaviour>" in sourcing details section
    Examples:
      | SourcingChannel              | DependentField         | DependentFieldsBehaviour | ApplicantType  | Quick_lead_WB   | Quick_lead_Home | Row_no | QuickLead_product | QuickLead_product_rowNum |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Employee Name          | display                  | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Employee No.           | display                  | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Employee Name          | mandatory                | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Employee No.           | mandatory                | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | REFERRAL                     | Referral Code          | display                  | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | REFERRAL                     | DSE Code               | display                  | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | REFERRAL                     | Referral Name          | display                  | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | REFERRAL                     | DSE Name               | display                  | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | ALTERNATE_CHANNEL            | Alternate Channel Mode | display                  | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | BRANCH                       | Employee Name          | display                  | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | BRANCH                       | Sourcing Branch        | display                  | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | BRANCH                       | Employee No.           | display                  | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | BRANCH                       | Employee Name          | mandatory                | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | BRANCH                       | Sourcing Branch        | mandatory                | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | BRANCH                       | Employee No.           | mandatory                | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | CALL_CENTER                  | Employee Name          | display                  | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | CALL_CENTER                  | Employee No.           | display                  | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | CALL_CENTER                  | Employee Name          | mandatory                | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |
      | CALL_CENTER                  | Employee No.           | mandatory                | non-individual | quick_lead.xlsx | home            | 0      | product           | 0                        |


  #FeatureID-ACAUTOCAS-70
  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-4658: Matching "<Fields>" in Loan Related information based on "<Channel>" for non individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<Quick_lead_WB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<Quick_lead_WB>" under sheet "<Quick_lead_Home>" and row <Row_no>
    And user fills "<Mandatory>" fields to create "<ApplicantType>" applicant lead
    And user selects sourcing channel as "<SourcingChannel>" in non individual applicant at lead
    And user save the non individual applicant lead
    When user open created lead from lead grid
    And user reads data from the excel file "<Quick_lead_WB>" under sheet "<Quick_lead_Home>" and row <Row_no>
    Then "<Fields>" in Loan Related information should be matched with field which filled before lead creation
    Examples:
      | SourcingChannel              | Fields           | ApplicantType  | Quick_lead_WB   | Quick_lead_Home | Row_no | Mandatory | QuickLead_product | QuickLead_product_rowNum |
      | Direct                       | Product type     | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | Direct                       | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Product type     | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | REFERRAL                     | Product type     | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | REFERRAL                     | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | EMPLOYEE REFFRRAL            | Product type     | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | EMPLOYEE REFFRRAL            | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | ALTERNATE_CHANNEL            | Product type     | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | ALTERNATE_CHANNEL            | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | Internet Channel             | Product type     | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | Internet Channel             | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | BRANCH                       | Product type     | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | BRANCH                       | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | CALL_CENTER                  | Product type     | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | CALL_CENTER                  | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | DEALER                       | Product type     | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | DEALER                       | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |

  #FeatureID-ACAUTOCAS-70
  @ImplementedBy-deep.maurya
  @Release3
  Scenario Outline: ACAUTOCAS-4659: Provision to change "<Fields>" in Loan Related information of "<Channel>" for non individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<Quick_lead_WB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<Quick_lead_WB>" under sheet "<Quick_lead_Home>" and row <Row_no>
    And user fills "<Mandatory>" fields to create "<ApplicantType>" applicant lead
    And user selects sourcing channel as "<SourcingChannel>" in non individual applicant at lead
    And user save the non individual applicant lead
    When user open created lead from lead grid
    Then user have provision to change "<Fields>" in Loan Related information
    Examples:
      | SourcingChannel              | Fields           | ApplicantType  | Quick_lead_WB   | Quick_lead_Home | Row_no | Mandatory | QuickLead_product | QuickLead_product_rowNum |
      | Direct                       | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | Direct                       | Product          | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | Direct                       | Scheme           | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Product type     | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Product          | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Scheme           | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | REFERRAL                     | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | REFERRAL                     | Product          | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | REFERRAL                     | Scheme           | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | EMPLOYEE REFFRRAL            | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | EMPLOYEE REFFRRAL            | Product          | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | EMPLOYEE REFFRRAL            | Scheme           | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | ALTERNATE_CHANNEL            | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | ALTERNATE_CHANNEL            | Product          | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | ALTERNATE_CHANNEL            | Scheme           | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | Internet Channel             | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | Internet Channel             | Product          | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | Internet Channel             | Scheme           | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | BRANCH                       | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | BRANCH                       | Product          | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | BRANCH                       | Scheme           | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | CALL_CENTER                  | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | CALL_CENTER                  | Product          | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | CALL_CENTER                  | Scheme           | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | DEALER                       | Requested Amount | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | DEALER                       | Product          | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |
      | DEALER                       | Scheme           | non-individual | quick_lead.xlsx | home            | 0      | mandatory | product           | 0                        |


  @ImplementedBy-ayush.garg
  @Release2
    #FeatureID-ACAUTOCAS-70
  Scenario Outline: ACAUTOCAS-4660: <Field_Name> field in Loan related information with <Validity> <InputType> of <Channel> for non individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<Quick_lead_Home>" and row 0
    And user fills "<MandatoryOrNot>" fields to create "<ApplicantType>" applicant lead
    And user selects sourcing channel as "<Channel>" in non individual applicant with respective fields
    And user save the non individual applicant lead
    And user open created lead from lead grid
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<Quick_lead_Financial_details>" and row <Row_no>
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in Loan related information
    Then "<Field_Name>" field "<Throws_notThrows>" error
    Examples:
      | Channel                      | Field_Name       | Validity | InputType                          | Throws_notThrows | MandatoryOrNot | Row_no | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum | ApplicantType  | Quick_lead_Financial_details | Quick_lead_Home |
      | ALTERNATE_CHANNEL            | Requested Amount | invalid  | more than 18 digits                | throw an         | mandatory      | 49     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | ALTERNATE_CHANNEL            | Requested Amount | valid    | less than 18 digits                | not throw any    | mandatory      | 50     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | ALTERNATE_CHANNEL            | Requested Amount | invalid  | character                          | throw an         | mandatory      | 51     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | ALTERNATE_CHANNEL            | Requested Amount | invalid  | special character                  | throw an         | mandatory      | 52     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | ALTERNATE_CHANNEL            | Requested Amount | invalid  | negative values                    | throw an         | mandatory      | 53     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | ALTERNATE_CHANNEL            | Requested Amount | invalid  | character with space               | throw an         | mandatory      | 54     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | ALTERNATE_CHANNEL            | Requested Amount | invalid  | digits with space                  | throw an         | mandatory      | 55     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | ALTERNATE_CHANNEL            | Requested Amount | valid    | positive values and Upto 18 digits | not throw any    | mandatory      | 56     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | BRANCH                       | Requested Amount | invalid  | more than 18 digits                | throw an         | mandatory      | 57     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | BRANCH                       | Requested Amount | valid    | less than 18 digits                | not throw any    | mandatory      | 50     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | BRANCH                       | Requested Amount | invalid  | character                          | throw an         | mandatory      | 51     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | BRANCH                       | Requested Amount | invalid  | special character                  | throw an         | mandatory      | 52     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | BRANCH                       | Requested Amount | invalid  | negative values                    | throw an         | mandatory      | 53     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | BRANCH                       | Requested Amount | invalid  | character with space               | throw an         | mandatory      | 54     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | BRANCH                       | Requested Amount | invalid  | digits with space                  | throw an         | mandatory      | 55     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | BRANCH                       | Requested Amount | valid    | positive values and Upto 18 digits | not throw any    | mandatory      | 56     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | BRANCH                       | Indicative Price | invalid  | more than 18 digits                | throw an         | mandatory      | 57     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | BRANCH                       | Indicative Price | valid    | less than 18 digits                | not throw any    | mandatory      | 58     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | BRANCH                       | Indicative Price | invalid  | character                          | throw an         | Mandatory      | 59     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | BRANCH                       | Indicative Price | invalid  | special character                  | throw an         | mandatory      | 60     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | BRANCH                       | Indicative Price | invalid  | negative values                    | throw an         | mandatory      | 61     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | BRANCH                       | Indicative Price | invalid  | character with space               | throw an         | mandatory      | 62     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | BRANCH                       | Indicative Price | invalid  | digits with space                  | throw an         | mandatory      | 63     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | BRANCH                       | Indicative Price | valid    | positive values and Upto 18 digits | not throw any    | mandatory      | 64     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | CALL_CENTER                  | Requested Amount | valid    | more than 18 digits                | throw an         | mandatory      | 65     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | CALL_CENTER                  | Requested Amount | valid    | less than 18 digits                | not throw any    | mandatory      | 50     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | CALL_CENTER                  | Requested Amount | invalid  | character                          | throw an         | mandatory      | 51     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | CALL_CENTER                  | Requested Amount | invalid  | special character                  | throw an         | mandatory      | 52     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | CALL_CENTER                  | Requested Amount | invalid  | negative values                    | throw an         | mandatory      | 53     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | CALL_CENTER                  | Requested Amount | invalid  | character with space               | throw an         | mandatory      | 54     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | CALL_CENTER                  | Requested Amount | invalid  | digits with space                  | throw an         | mandatory      | 55     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | CALL_CENTER                  | Requested Amount | valid    | positive values and Upto 18 digits | not throw any    | mandatory      | 56     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | invalid  | more than 18 digits                | throw an         | mandatory      | 57     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | valid    | less than 18 digits                | not throw any    | mandatory      | 50     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | invalid  | character                          | throw an         | mandatory      | 51     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | invalid  | special character                  | throw an         | mandatory      | 52     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | invalid  | negative values                    | throw an         | mandatory      | 53     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | invalid  | character with space               | throw an         | mandatory      | 54     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | invalid  | digits with space                  | throw an         | mandatory      | 55     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | valid    | positive values and Upto 18 digits | not throw any    | mandatory      | 56     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Indicative Price | invalid  | more than 18 digits                | throw an         | mandatory      | 57     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Indicative Price | valid    | less than 18 digits                | not throw any    | mandatory      | 58     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Indicative Price | invalid  | character                          | throw an         | mandatory      | 59     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Indicative Price | invalid  | special character                  | throw an         | mandatory      | 60     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Indicative Price | invalid  | negative values                    | throw an         | mandatory      | 61     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Indicative Price | invalid  | character with space               | throw an         | mandatory      | 62     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Indicative Price | invalid  | digits with space                  | throw an         | mandatory      | 63     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Indicative Price | valid    | positive values and Upto 18 digits | not throw any    | mandatory      | 64     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | REFERRAL                     | Requested Amount | valid    | more than 18 digits                | throw an         | mandatory      | 65     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | REFERRAL                     | Requested Amount | valid    | less than 18 digits                | not throw any    | mandatory      | 50     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | REFERRAL                     | Requested Amount | invalid  | character                          | throw an         | mandatory      | 51     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | REFERRAL                     | Requested Amount | invalid  | special character                  | throw an         | mandatory      | 52     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | REFERRAL                     | Requested Amount | invalid  | negative values                    | throw an         | mandatory      | 53     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | REFERRAL                     | Requested Amount | invalid  | character with space               | throw an         | Mandatory      | 54     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | REFERRAL                     | Requested Amount | invalid  | digits with space                  | throw an         | mandatory      | 55     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | REFERRAL                     | Requested Amount | valid    | positive values and Upto 18 digits | not throw any    | mandatory      | 56     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | REFERRAL                     | Indicative Price | invalid  | more than 18 digits                | throw an         | mandatory      | 57     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | REFERRAL                     | Indicative Price | valid    | less than 18 digits                | not throw any    | mandatory      | 50     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | REFERRAL                     | Indicative Price | invalid  | character                          | throw an         | mandatory      | 51     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | REFERRAL                     | Indicative Price | invalid  | special character                  | throw an         | mandatory      | 52     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | REFERRAL                     | Indicative Price | invalid  | negative values                    | throw an         | mandatory      | 53     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | REFERRAL                     | Indicative Price | invalid  | character with space               | throw an         | mandatory      | 54     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | REFERRAL                     | Indicative Price | invalid  | digits with space                  | throw an         | mandatory      | 55     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
      | REFERRAL                     | Indicative Price | valid    | positive values and Upto 18 digits | not throw any    | mandatory      | 56     | quick_lead.xlsx | product           | 4                        | non-individual | financial_details            | home            |
