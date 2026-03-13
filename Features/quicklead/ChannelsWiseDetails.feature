@Epic-Quick_Lead
@ReviewedBy-None
@AuthoredBy-vipin.kishor
@ReviewedByDEV



Feature:Channels wise Details of Loan Related information

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-piyush.agnihotri
  #FeatureID-ACAUTOCAS-70
  Scenario Outline: ACAUTOCAS-4653: "<DependentField>" field should be "<DependentFieldsBehaviour>" which depends on "<Fields>" Channel for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user selects sourcing channel as "<Fields>" in individual applicant
    Then "<DependentField>" should be "<DependentFieldsBehaviour>" in sourcing details section
    @Release3
    Examples:
      | Fields                       | DependentField         | DependentFieldsBehaviour | ApplicantType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Employee Name          | display                  | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Employee No.           | display                  | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Employee Name          | mandatory                | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Employee No.           | mandatory                | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | Referral Code          | display                  | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | DSE Code               | display                  | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | Referral Name          | display                  | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | DSE Name               | display                  | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | ALTERNATE_CHANNEL            | Alternate Channel Mode | display                  | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | BRANCH                       | Employee Name          | display                  | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | BRANCH                       | Sourcing Branch        | display                  | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | BRANCH                       | Employee No.           | display                  | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | BRANCH                       | Employee Name          | mandatory                | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | BRANCH                       | Sourcing Branch        | mandatory                | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | BRANCH                       | Employee No.           | mandatory                | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | CALL_CENTER                  | Employee Name          | display                  | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | CALL_CENTER                  | Employee No.           | display                  | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | CALL_CENTER                  | Employee Name          | mandatory                | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | CALL_CENTER                  | Employee No.           | mandatory                | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
    @NotImplemented
    Examples:
      | Fields | DependentField | DependentFieldsBehaviour | ApplicantType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum |
      | DEALER | Showrooms      | display                  | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | DEALER | Showrooms      | mandatory                | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | DEALER | Dealer         | Sales Officer            | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |


  @ImplementedBy-ayush.garg
    @Release2
  #FeatureID-ACAUTOCAS-70
  Scenario Outline: ACAUTOCAS-4654: Matching "<Fields>" in Loan Related information based on "<Channel>" for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNot>" fields to create "<ApplicantType>" applicant lead
    And user selects sourcing channel as "<Channel>" in non individual applicant with respective fields
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    Then "<Fields>" in Loan Related information should be matched with field which filled before lead creation
    Examples:
      | Channel                      | Fields           | ApplicantType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | MandatoryOrNot | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum |
      | Direct                       | Product type     | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |
      | Direct                       | Requested Amount | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Product type     | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | Product type     | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | Requested Amount | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |
      | EMPLOYEE REFFRRAL            | Product type     | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |
      | EMPLOYEE REFFRRAL            | Requested Amount | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |
      | ALTERNATE_CHANNEL            | Product type     | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |
      | ALTERNATE_CHANNEL            | Requested Amount | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |
      | Internet Channel             | Product type     | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |
      | Internet Channel             | Requested Amount | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |
      | BRANCH                       | Product type     | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |
      | BRANCH                       | Requested Amount | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |
      | CALL_CENTER                  | Product type     | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |
      | CALL_CENTER                  | Requested Amount | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |
      | DEALER                       | Product type     | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |
      | DEALER                       | Requested Amount | individual    | quick_lead.xlsx | home           | 0                     | mandatory      | quick_lead.xlsx | product           | 0                        |

  @ImplementedBy-ayush.garg
  #FeatureID-ACAUTOCAS-70
  Scenario Outline: ACAUTOCAS-4655: Provision to change "<Fields>" in Loan Related information of "<Channel>" for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNot>" fields to create "<ApplicantType>" applicant lead
    And user selects sourcing channel as "<Channel>" in non individual applicant with respective fields
    And user save the individual applicant lead
    And user open created lead from lead grid
    Then "<Fields>" in Loan Related information should be "<FieldBehaviour>"
    @Release2
    Examples:
      | Channel           | Fields           | FieldBehaviour | MandatoryOrNot | ApplicantType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum |
      | Direct            | Product type     | non editable   | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | Direct            | Requested Amount | editable       | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | Direct            | Product type     | non editable   | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | Direct            | Requested Amount | editable       | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | REFERRAL          | Product type     | non editable   | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | REFERRAL          | Requested Amount | editable       | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | EMPLOYEE REFFRRAL | Product type     | non editable   | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | EMPLOYEE REFFRRAL | Requested Amount | editable       | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | ALTERNATE_CHANNEL | Product type     | non editable   | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | ALTERNATE_CHANNEL | Requested Amount | editable       | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | Internet Channel  | Product type     | non editable   | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | Internet Channel  | Requested Amount | editable       | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | BRANCH            | Product type     | non editable   | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | BRANCH            | Requested Amount | editable       | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | CALL_CENTER       | Product type     | non editable   | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | CALL_CENTER       | Requested Amount | editable       | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | DEALER            | Product type     | non editable   | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | DEALER            | Requested Amount | editable       | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
    @NotImplemented
    Examples:
      | Channel           | Fields  | FieldBehaviour | MandatoryOrNot | ApplicantType | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum |
      | EMPLOYEE REFFRRAL | Product | non editable   | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | EMPLOYEE REFFRRAL | Scheme  | editable       | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | REFERRAL          | Scheme  | non editable   | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | Direct            | Scheme  | editable       | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | ALTERNATE_CHANNEL | Scheme  | non editable   | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | Internet Channel  | Scheme  | editable       | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | BRANCH            | Scheme  | non editable   | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | CALL_CENTER       | Scheme  | editable       | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |
      | DEALER            | Scheme  | non editable   | mandatory      | individual    | quick_lead.xlsx | home           | 0                     | quick_lead.xlsx | product           | 0                        |

  @ImplementedBy-manish.yadav2
    @Release3
  #FeatureID-ACAUTOCAS-70
  Scenario Outline: ACAUTOCAS-4656: "<Field_Name>" field in Loan related information with "<Validity>" "<InputType>" of "<Channel>" for individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<MandatoryOrNot>" fields to create "<ApplicantType>" applicant lead
    And user selects sourcing channel as "<Channel>" in non individual applicant with respective fields
    And user save the individual applicant lead
    And user open created lead from lead grid
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_financial_details>" and row <QuickLead_financial_details_rowNum>
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in Loan related information
    Then "<Field_Name>" field "<Throws_notThrows>" error
    Examples:
      | Channel                      | Field_Name       | Validity | InputType                          | Throws_notThrows | QuickLead_financial_details_rowNum | QuickLeadWB     | ProductType        | ApplicantType | MandatoryOrNot | QuickLead_home | QuickLead_home_rowNum | QuickLead_financial_details | QuickLead_product | QuickLead_product_rowNum |
      | ALTERNATE_CHANNEL            | Requested Amount | invalid  | more than 18 digits                | throw an         | 49                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | ALTERNATE_CHANNEL            | Requested Amount | valid    | less than 18 digits                | not throw any    | 50                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | ALTERNATE_CHANNEL            | Requested Amount | invalid  | character                          | throw an         | 51                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | ALTERNATE_CHANNEL            | Requested Amount | invalid  | special character                  | throw an         | 52                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | ALTERNATE_CHANNEL            | Requested Amount | invalid  | negative values                    | throw an         | 53                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | ALTERNATE_CHANNEL            | Requested Amount | invalid  | character with space               | throw an         | 54                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | ALTERNATE_CHANNEL            | Requested Amount | invalid  | digits with space                  | throw an         | 55                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | ALTERNATE_CHANNEL            | Requested Amount | valid    | positive values and Upto 18 digits | not throw any    | 56                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | BRANCH                       | Requested Amount | invalid  | more than 18 digits                | throw an         | 49                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | BRANCH                       | Requested Amount | valid    | less than 18 digits                | not throw any    | 50                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | BRANCH                       | Requested Amount | invalid  | character                          | throw an         | 51                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | BRANCH                       | Requested Amount | invalid  | special character                  | throw an         | 52                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | BRANCH                       | Requested Amount | invalid  | negative values                    | throw an         | 53                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | BRANCH                       | Requested Amount | invalid  | character with space               | throw an         | 54                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | BRANCH                       | Requested Amount | invalid  | digits with space                  | throw an         | 55                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | BRANCH                       | Requested Amount | valid    | positive values and Upto 18 digits | not throw any    | 56                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | BRANCH                       | Indicative Price | invalid  | more than 18 digits                | throw an         | 57                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | BRANCH                       | Indicative Price | valid    | less than 18 digits                | not throw any    | 58                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | BRANCH                       | Indicative Price | invalid  | character                          | throw an         | 59                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | BRANCH                       | Indicative Price | invalid  | special character                  | throw an         | 60                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | BRANCH                       | Indicative Price | invalid  | negative values                    | throw an         | 61                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | BRANCH                       | Indicative Price | invalid  | character with space               | throw an         | 62                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | BRANCH                       | Indicative Price | invalid  | digits with space                  | throw an         | 63                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | BRANCH                       | Indicative Price | valid    | positive values and Upto 18 digits | not throw any    | 64                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | CALL_CENTER                  | Requested Amount | valid    | more than 18 digits                | throw an         | 49                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | CALL_CENTER                  | Requested Amount | valid    | less than 18 digits                | not throw any    | 50                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | CALL_CENTER                  | Requested Amount | invalid  | character                          | throw an         | 51                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | CALL_CENTER                  | Requested Amount | invalid  | special character                  | throw an         | 52                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | CALL_CENTER                  | Requested Amount | invalid  | negative values                    | throw an         | 53                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | CALL_CENTER                  | Requested Amount | invalid  | character with space               | throw an         | 54                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | CALL_CENTER                  | Requested Amount | invalid  | digits with space                  | throw an         | 55                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | CALL_CENTER                  | Requested Amount | valid    | positive values and Upto 18 digits | not throw any    | 56                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | invalid  | more than 18 digits                | throw an         | 49                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | valid    | less than 18 digits                | not throw any    | 50                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | invalid  | character                          | throw an         | 51                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | invalid  | special character                  | throw an         | 52                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | invalid  | negative values                    | throw an         | 53                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | invalid  | character with space               | throw an         | 54                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | invalid  | digits with space                  | throw an         | 55                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Requested Amount | valid    | positive values and Upto 18 digits | not throw any    | 56                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Indicative Price | invalid  | more than 18 digits                | throw an         | 57                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Indicative Price | valid    | less than 18 digits                | not throw any    | 58                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Indicative Price | invalid  | character                          | throw an         | 59                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Indicative Price | invalid  | special character                  | throw an         | 60                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Indicative Price | invalid  | negative values                    | throw an         | 61                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Indicative Price | invalid  | character with space               | throw an         | 62                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Indicative Price | invalid  | digits with space                  | throw an         | 63                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Indicative Price | valid    | positive values and Upto 18 digits | not throw any    | 64                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | REFERRAL                     | Requested Amount | valid    | more than 18 digits                | throw an         | 49                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | REFERRAL                     | Requested Amount | valid    | less than 18 digits                | not throw any    | 50                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | REFERRAL                     | Requested Amount | invalid  | character                          | throw an         | 51                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | REFERRAL                     | Requested Amount | invalid  | special character                  | throw an         | 52                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | REFERRAL                     | Requested Amount | invalid  | negative values                    | throw an         | 53                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | REFERRAL                     | Requested Amount | invalid  | character with space               | throw an         | 54                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | REFERRAL                     | Requested Amount | invalid  | digits with space                  | throw an         | 55                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | REFERRAL                     | Requested Amount | valid    | positive values and Upto 18 digits | not throw any    | 56                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | REFERRAL                     | Indicative Price | invalid  | more than 18 digits                | throw an         | 57                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | REFERRAL                     | Indicative Price | valid    | less than 18 digits                | not throw any    | 58                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | REFERRAL                     | Indicative Price | invalid  | character                          | throw an         | 59                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | REFERRAL                     | Indicative Price | invalid  | special character                  | throw an         | 60                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | REFERRAL                     | Indicative Price | invalid  | negative values                    | throw an         | 61                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | REFERRAL                     | Indicative Price | invalid  | character with space               | throw an         | 62                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | REFERRAL                     | Indicative Price | invalid  | digits with space                  | throw an         | 63                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
      | REFERRAL                     | Indicative Price | valid    | positive values and Upto 18 digits | not throw any    | 64                                 | quick_lead.xlsx | Commercial Vehicle | individual    | mandatory      | home           | 0                     | financial_details           | product           | 4                        |
