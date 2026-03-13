@Epic-Quick_Lead
@ReviewedBy-
@AuthoredBy-vipin.kishor
@Release3
@Reconciled
@ReviewedByDEV


Feature:Lead information validation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-59,ACAUTOCAS-76
  Scenario Outline: ACAUTOCAS-4691: Create Lead with individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_SheetName>" and row <RowNum>
    And user fills "<MandtoryOrNotMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the individual applicant lead
    Then individual applicant lead created successfully
    Examples:
      | ApplicantType | MandtoryOrNotMandatory | QuickLeadWB     | QuickLead_SheetName | RowNum | QuickLead_product | QuickLead_product_rowNum |
      | individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 4                        |
      | individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 6                        |
      | individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 16                       |
      | individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 0                        |
      | individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 18                       |
      | individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 14                       |
      | individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 10                       |
      | individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 22                       |
      | individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 20                       |
      | individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 12                       |
      | individual    | mandatory              | quick_lead.xlsx | home                | 0      | product           | 22                       |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-61,ACAUTOCAS-76
  Scenario Outline: ACAUTOCAS-4692: Create Lead with non individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_SheetName>" and row <RowNum>
    And user fills "<MandtoryOrNotMandatory>" fields to create "<ApplicantType>" applicant lead
    And user save the non individual applicant lead
    Then non individual applicant lead created successfully
    Examples:
      | ApplicantType  | MandtoryOrNotMandatory | QuickLeadWB     | QuickLead_SheetName | RowNum | QuickLead_product | QuickLead_product_rowNum |
      | non-individual | mandatory              | quick_lead.xlsx | home                | 0      | product           | 0                        |
      | non-individual | mandatory              | quick_lead.xlsx | home                | 0      | product           | 2                        |
      | non-individual | mandatory              | quick_lead.xlsx | home                | 0      | product           | 4                        |
      | non-individual | mandatory              | quick_lead.xlsx | home                | 0      | product           | 6                        |
      | non-individual | mandatory              | quick_lead.xlsx | home                | 0      | product           | 10                       |
      | non-individual | mandatory              | quick_lead.xlsx | home                | 0      | product           | 12                       |
      | non-individual | mandatory              | quick_lead.xlsx | home                | 0      | product           | 14                       |
      | non-individual | mandatory              | quick_lead.xlsx | home                | 0      | product           | 16                       |
      | non-individual | mandatory              | quick_lead.xlsx | home                | 0      | product           | 18                       |
      | non-individual | mandatory              | quick_lead.xlsx | home                | 0      | product           | 20                       |


  @ImplementedBy-deep.maurya
  #FeatureID-ACAUTOCAS-59
  Scenario Outline: ACAUTOCAS-4695: Mandatory fields validation of individual applicant Lead
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_rowNum>
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in non individual applicant lead
    Then "<Field_Name>" field "<Throws_notThrows>" error on page
    Examples:
      | Field_Name                 | Validity | InputType                          | Throws_notThrows | QuickLeadWB     | QuickLead_home | QuickLead_rowNum | ApplicantType  | QuickLead_product | QuickLead_product_rowNum |
      | Name of the Entity/Company | valid    | alphabets                          | not throw any    | quick_lead.xlsx | home           | 0                | non-individual | product           | 0                        |
      | Name of the Entity/Company | valid    | numbers                            | not throw any    | quick_lead.xlsx | home           | 1                | non-individual | product           | 0                        |
      | Name of the Entity/Company | valid    | .(dot)                             | not throw any    | quick_lead.xlsx | home           | 2                | non-individual | product           | 0                        |
      | Name of the Entity/Company | valid    | character with spaces              | not throw any    | quick_lead.xlsx | home           | 3                | non-individual | product           | 0                        |
      | Name of the Entity/Company | valid    | !(Exclmation Mark)                 | not throw any    | quick_lead.xlsx | home           | 4                | non-individual | product           | 0                        |
      | Name of the Entity/Company | valid    | alpha numeric values               | not throw any    | quick_lead.xlsx | home           | 6                | non-individual | product           | 0                        |
      | Amount Requested           | invalid  | more than 15 digits                | throw an         | quick_lead.xlsx | home           | 7                | non-individual | product           | 0                        |
      | Amount Requested           | valid    | less than 15 digits                | not throw any    | quick_lead.xlsx | home           | 8                | non-individual | product           | 0                        |
      | Amount Requested           | invalid  | character                          | throw an         | quick_lead.xlsx | home           | 9                | non-individual | product           | 0                        |
      | Amount Requested           | invalid  | special character                  | throw an         | quick_lead.xlsx | home           | 10               | non-individual | product           | 0                        |
      | Amount Requested           | invalid  | negative values                    | throw an         | quick_lead.xlsx | home           | 11               | non-individual | product           | 0                        |
      | Designation                | valid    | character                          | not throw any    | quick_lead.xlsx | home           | 12               | non-individual | product           | 0                        |
      | Designation                | valid    | character with spaces              | not throw any    | quick_lead.xlsx | home           | 13               | non-individual | product           | 0                        |
      | Designation                | invalid  | special character                  | throw an         | quick_lead.xlsx | home           | 14               | non-individual | product           | 0                        |
      | Designation                | valid    | alpha numeric start with alphabets | not throw any    | quick_lead.xlsx | home           | 15               | non-individual | product           | 0                        |
      | Designation                | invalid  | alpha numeric start with numbers   | throw an         | quick_lead.xlsx | home           | 16               | non-individual | product           | 0                        |
      | First Name                 | valid    | alphabets                          | not throw any    | quick_lead.xlsx | home           | 17               | non-individual | product           | 0                        |
      | First Name                 | valid    | numbers                            | not throw any    | quick_lead.xlsx | home           | 18               | non-individual | product           | 0                        |
      | First Name                 | valid    | .(dot)                             | not throw any    | quick_lead.xlsx | home           | 19               | non-individual | product           | 0                        |
      | First Name                 | valid    | decimal values                     | not throw any    | quick_lead.xlsx | home           | 21               | non-individual | product           | 0                        |
      | First Name                 | invalid  | !(Exclmation Mark)                 | throw an         | quick_lead.xlsx | home           | 22               | non-individual | product           | 0                        |
      | First Name                 | valid    | alphabets with _ (underscore)      | not throw any    | quick_lead.xlsx | home           | 23               | non-individual | product           | 0                        |
      | First Name                 | valid    | alpha numeric values               | not throw any    | quick_lead.xlsx | home           | 24               | non-individual | product           | 0                        |
      | Last Name                  | valid    | alphabets                          | not throw any    | quick_lead.xlsx | home           | 25               | non-individual | product           | 0                        |
      | Last Name                  | valid    | numbers                            | not throw any    | quick_lead.xlsx | home           | 26               | non-individual | product           | 0                        |
      | Last Name                  | valid    | .(dot)                             | not throw any    | quick_lead.xlsx | home           | 27               | non-individual | product           | 0                        |
      | Last Name                  | valid    | decimal values                     | not throw any    | quick_lead.xlsx | home           | 29               | non-individual | product           | 0                        |
      | Last Name                  | valid    | alphabets with _ (underscore)      | throw an         | quick_lead.xlsx | home           | 31               | non-individual | product           | 0                        |
      | Last Name                  | valid    | alpha numeric values               | not throw any    | quick_lead.xlsx | home           | 32               | non-individual | product           | 0                        |
      | Mobile Phone               | valid    | 10 digits                          | not throw any    | quick_lead.xlsx | home           | 33               | non-individual | product           | 0                        |
      | Last Name                  | invalid  | !(Exclmation Mark)                 | throw an         | quick_lead.xlsx | home           | 30               | non-individual | product           | 0                        |
      | Mobile Phone               | invalid  | number with decimal values         | throw an         | quick_lead.xlsx | home           | 36               | non-individual | product           | 0                        |

    @LoggedBug
    Examples:
      | Field_Name                 | Validity | InputType                     | Throws_notThrows | QuickLeadWB     | QuickLead_home | QuickLead_rowNum | ApplicantType  | QuickLead_product | QuickLead_product_rowNum |
      | Mobile Phone               | invalid  | less than 10 digits           | throw an         | quick_lead.xlsx | home           | 35               | non-individual | product           | 0                        |
      | Mobile Phone               | invalid  | more than 10 digits           | throw an         | quick_lead.xlsx | home           | 34               | non-individual | product           | 0                        |
      | Last Name                  | invalid  | character with spaces         | throw an         | quick_lead.xlsx | home           | 28               | non-individual | product           | 0                        |
      | First Name                 | invalid  | character with spaces         | throw an         | quick_lead.xlsx | home           | 20               | non-individual | product           | 0                        |
      | Name of the Entity/Company | invalid  | alphabets with _ (underscore) | throw an         | quick_lead.xlsx | home           | 5                | non-individual | product           | 0                        |


  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-59
  Scenario Outline: ACAUTOCAS-4697: Dependent fields validation of individual applicant Lead
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user selects sourcing channel as "<SourcingChannel>" in individual applicant
    Then "<DependentField>" field should be "<DependentFieldsBehaviour>" in individual applicant
    Examples:
      | SourcingChannel              | DependentField | DependentFieldsBehaviour | ApplicantType | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Employee Name  | display                  | individual    | quick_lead.xlsx | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Employee No.   | display                  | individual    | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | Referral Code  | display                  | individual    | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | DSE Code       | display                  | individual    | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | Referral Name  | display                  | individual    | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | Referral Name  | display                  | individual    | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | DSE Name       | display                  | individual    | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | DSE Name       | display                  | individual    | quick_lead.xlsx | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Employee Name  | mandatory                | individual    | quick_lead.xlsx | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Employee No.   | mandatory                | individual    | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | Referral Code  | non mandatory            | individual    | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | DSE Code       | non mandatory            | individual    | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | Referral Name  | non editable             | individual    | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | Referral Name  | non mandatory            | individual    | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | DSE Name       | non editable             | individual    | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | DSE Name       | non mandatory            | individual    | quick_lead.xlsx | product           | 0                        |

  @ImplementedBy-yash.sharma
  #FeatureID-ACAUTOCAS-61
  Scenario Outline: ACAUTOCAS-4698: Dependent fields validation of non individual applicant Lead
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user selects sourcing channel as "<SourcingChannel>" in non individual applicant
    Then "<DependentField>" field should be "<DependentFieldsBehaviour>" in non individual applicant
    Examples:
      | SourcingChannel              | DependentField | DependentFieldsBehaviour | ApplicantType  | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Employee Name  | display                  | non-individual | quick_lead.xlsx | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Employee No.   | display                  | non-individual | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | Referral Code  | display                  | non-individual | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | DSE Code       | display                  | non-individual | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | Referral Name  | display                  | non-individual | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | Referral Name  | display                  | non-individual | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | DSE Name       | display                  | non-individual | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | DSE Name       | display                  | non-individual | quick_lead.xlsx | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Employee Name  | mandatory                | non-individual | quick_lead.xlsx | product           | 0                        |
      | EMPLOYEE_REFERRAL_NON_BRANCH | Employee No.   | mandatory                | non-individual | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | Referral Code  | non mandatory            | non-individual | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | DSE Code       | non mandatory            | non-individual | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | Referral Name  | non editable             | non-individual | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | Referral Name  | non mandatory            | non-individual | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | DSE Name       | non editable             | non-individual | quick_lead.xlsx | product           | 0                        |
      | REFERRAL                     | DSE Name       | non mandatory            | non-individual | quick_lead.xlsx | product           | 0                        |


  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-60
  Scenario Outline: ACAUTOCAS-4699: Existing Customer fields validation of individual applicant Lead
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user checked Existing Customer checkbox for "<ApplicantType>" applicant
    Then "<DependentField>" field should be "<DependentFieldsBehaviour>" for "<ApplicantType>" applicant
    Examples:
      | DependentField        | DependentFieldsBehaviour | ApplicantType | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum |
      | Customer ID           | display                  | individual    | quick_lead.xlsx | product           | 2                        |
      | Account Number        | display                  | individual    | quick_lead.xlsx | product           | 2                        |
      | Customer Relationship | display                  | individual    | quick_lead.xlsx | product           | 2                        |
      | Customer ID           | non mandatory            | individual    | quick_lead.xlsx | product           | 2                        |
      | Account Number        | non mandatory            | individual    | quick_lead.xlsx | product           | 2                        |
      | Customer Relationship | mandatory                | individual    | quick_lead.xlsx | product           | 2                        |

  @ImplementedBy-manish.yadav2
  #FeatureID-ACAUTOCAS-62
  Scenario Outline: ACAUTOCAS-4700: Existing Customer fields validation of non individual applicant Lead
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user checked Existing Customer checkbox for "<ApplicantType>" applicant
    Then "<DependentField>" field should be "<DependentFieldsBehaviour>" for "<ApplicantType>" applicant
    Examples:
      | DependentField        | DependentFieldsBehaviour | ApplicantType  | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum |
      | Customer ID           | display                  | non-individual | quick_lead.xlsx | product           | 2                        |
      | Account Number        | display                  | non-individual | quick_lead.xlsx | product           | 2                        |
      | Customer Relationship | display                  | non-individual | quick_lead.xlsx | product           | 2                        |
      | Customer ID           | non mandatory            | non-individual | quick_lead.xlsx | product           | 2                        |
      | Account Number        | non mandatory            | non-individual | quick_lead.xlsx | product           | 2                        |
      | Customer Relationship | mandatory                | non-individual | quick_lead.xlsx | product           | 2                        |


  @ImplementedBy-rishabh.sachan
  #FeatureID-ACAUTOCAS-60
  Scenario Outline: ACAUTOCAS-4701: Staff fields validation of individual applicant Lead
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user checked Staff checkbox
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fill "<Validity>" "<Field_Name>" with "<InputType>" in individual applicant lead
    Then "<Field_Name>" field "<Throws_notThrows>" error in quick lead page
    Examples:
      | Field_Name            | Validity | InputType            | Throws_notThrows | ApplicantType | QuickLeadWB     | QuickLead_product | QuickLead_product_rowNum | QuickLead_home | QuickLead_home_rowNum |
      | Staff Employee Number | invalid  | character            | throws an        | individual    | quick_lead.xlsx | product           | 0                        | home           | 0                     |
      | Staff Employee Number | valid    | numbers              | not throw any    | individual    | quick_lead.xlsx | product           | 0                        | home           | 1                     |
      | Staff Employee Number | invalid  | alpha numeric values | throws an        | individual    | quick_lead.xlsx | product           | 0                        | home           | 2                     |

  @ImplementedBy-kanika.mahal
  #FeatureID-ACAUTOCAS-61
  Scenario Outline: ACAUTOCAS-4696: Mandatory fields validation of non individual applicant Lead
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    When user selects applicant is "individual" applicant
    And user fills "<Validity>" "<Field_Name>" with "<InputType>" in the individual applicant lead
    Then "<Field_Name>" fields "<Throws_notThrows>" error on the page
    Examples:
      | Field_Name          | Validity | InputType                     | Throws_notThrows | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | Amount Requested    | invalid  | more than 15 digits           | throw an         | quick_lead.xlsx | home           | 7                     | product           | 0                        |
      | Amount Requested    | valid    | less than 15 digits           | not throw any    | quick_lead.xlsx | home           | 8                     | product           | 0                        |
      | Amount Requested    | invalid  | character                     | throw an         | quick_lead.xlsx | home           | 9                     | product           | 0                        |
      | Amount Requested    | invalid  | special character             | throw an         | quick_lead.xlsx | home           | 10                    | product           | 0                        |
      | Amount Requested    | invalid  | negative values               | throw an         | quick_lead.xlsx | home           | 11                    | product           | 0                        |
      | Amount Requested    | valid    | decimal values upto 18 digit  | not throw any    | quick_lead.xlsx | home           | 0                     | product           | 0                        |
      | First Name          | valid    | alphabets                     | not throw any    | quick_lead.xlsx | home           | 17                    | product           | 0                        |
      | First Name          | valid    | numbers                       | not throw any    | quick_lead.xlsx | home           | 18                    | product           | 0                        |
      | First Name          | valid    | .(dot)                        | not throw any    | quick_lead.xlsx | home           | 19                    | product           | 0                        |
      | First Name          | valid    | decimal values                | not throw any    | quick_lead.xlsx | home           | 21                    | product           | 0                        |
      | First Name          | invalid  | !(Exclmation Mark)            | throw an         | quick_lead.xlsx | home           | 22                    | product           | 0                        |
      | First Name          | invalid  | special character             | throw an         | quick_lead.xlsx | home           | 143                   | product           | 0                        |
      | First Name          | valid    | alphabets with _ (underscore) | not throw any    | quick_lead.xlsx | home           | 23                    | product           | 0                        |
      | First Name          | valid    | alphabets with . (dot)        | not throw any    | quick_lead.xlsx | home           | 0                     | product           | 0                        |
      | First Name          | valid    | alpha numeric values          | not throw any    | quick_lead.xlsx | home           | 24                    | product           | 0                        |
      | First Name          | valid    | ,(Comma)                      | not throw any    | quick_lead.xlsx | home           | 132                   | product           | 0                        |
      | Last Name           | valid    | alphabets                     | not throw any    | quick_lead.xlsx | home           | 25                    | product           | 0                        |
      | Last Name           | valid    | numbers                       | not throw any    | quick_lead.xlsx | home           | 26                    | product           | 0                        |
      | Last Name           | valid    | .(dot)                        | not throw any    | quick_lead.xlsx | home           | 27                    | product           | 0                        |
      | Last Name           | valid    | decimal values                | not throw any    | quick_lead.xlsx | home           | 29                    | product           | 0                        |
      | Last Name           | invalid  | special character             | throw an         | quick_lead.xlsx | home           | 142                   | product           | 0                        |
      | Last Name           | invalid  | ,(Comma)                      | throw an         | quick_lead.xlsx | home           | 144                   | product           | 0                        |
      | Last Name           | invalid  | !(Exclmation Mark)            | throw an         | quick_lead.xlsx | home           | 30                    | product           | 0                        |
      | Last Name           | valid    | alpha numeric values          | not throw any    | quick_lead.xlsx | home           | 32                    | product           | 0                        |
      | Last Name           | valid    | alphabets with . (dot)        | not throw any    | quick_lead.xlsx | home           | 0                     | product           | 0                        |
      | Mobile Phone (lead) | valid    | 10 digits                     | not throw any    | quick_lead.xlsx | home           | 33                    | product           | 0                        |
      | Mobile Phone (lead) | invalid  | more than 10 digits           | throw an         | quick_lead.xlsx | home           | 34                    | product           | 0                        |
      | Mobile Phone (lead) | invalid  | less than 10 digits           | throw an         | quick_lead.xlsx | home           | 35                    | product           | 0                        |
      | Mobile Phone (lead) | invalid  | number with decimal values    | throw an         | quick_lead.xlsx | home           | 36                    | product           | 0                        |
    @LoggedBug
    Examples:
      | Field_Name | Validity | InputType                     | Throws_notThrows | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | QuickLead_product | QuickLead_product_rowNum |
      | First Name | invalid  | character with spaces         | throw an         | quick_lead.xlsx | home           | 20                    | product           | 0                        |
      | Last Name  | valid    | alphabets with _ (underscore) | not throw any    | quick_lead.xlsx | home           | 31                    | product           | 0                        |
      | Last Name  | invalid  | character with spaces         | throw an         | quick_lead.xlsx | home           | 28                    | product           | 0                        |
      | First Name | invalid  | &(And)                        | throw an         | quick_lead.xlsx | home           | 131                   | product           | 0                        |
      | Last Name  | invalid  | &(And)                        | throw an         | quick_lead.xlsx | home           | 131                   | product           | 0                        |
      | First Name | invalid  | Hash symbol                   | throw an         | quick_lead.xlsx | home           | 141                   | product           | 0                        |
      | Last Name  | invalid  | Hash symbol                   | throw an         | quick_lead.xlsx | home           | 140                   | product           | 0                        |


  @ImplementedBy-kanika.mahal
  #FeatureID-ACAUTOCAS-59
  Scenario Outline: ACAUTOCAS-4693: Create new Lead with individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "individual" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<Mandatory_NonMandatory>" fields to create "individual" applicant lead
    And user save the individual applicant lead
    And individual applicant lead created successfully
    Examples:
      | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | Mandatory_NonMandatory | QuickLead_product | QuickLead_product_rowNum |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 2                        |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 4                        |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 6                        |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 16                       |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 0                        |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 18                       |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 14                       |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 10                       |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 20                       |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 12                       |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 22                       |

  @ImplementedBy-kanika.mahal
  #FeatureID-ACAUTOCAS-61
  Scenario Outline: ACAUTOCAS-4694: Create new Lead with non individual applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "non-individual" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_home>" and row <QuickLead_home_rowNum>
    And user fills "<Mandatory_NonMandatory>" fields to create "non-individual" applicant lead
    And user save the non individual applicant lead
    Then non individual applicant lead created successfully
    Examples:
      | QuickLeadWB     | QuickLead_home | QuickLead_home_rowNum | Mandatory_NonMandatory | QuickLead_product | QuickLead_product_rowNum |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 3                        |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 5                        |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 7                        |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 17                       |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 1                        |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 19                       |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 15                       |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 11                       |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 21                       |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 13                       |
      | quick_lead.xlsx | home           | 0                     | mandatory              | product           | 23                       |

  #FeatureID-ACAUTOCAS-60
  @ImplementedBy-manish.yadav2
  Scenario Outline: ACAUTOCAS-4771: Add Existing Customer in individual applicant Lead
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_SheetName>" and row <RowNum>
    And user fills "<MandatoryOrNotMandatory>" fields to create "<ApplicantType>" applicant lead
    And user checked Existing Customer checkbox for "<ApplicantType>" applicant
    And user add Existing Customer in "<ApplicantType>" applicant
    Then Existing Customer added successfully in "<ApplicantType>" applicant
    Examples:
      | ApplicantType | MandatoryOrNotMandatory | QuickLeadWB     | QuickLead_SheetName | RowNum | QuickLead_product | QuickLead_product_rowNum |
      | individual    | mandatory               | quick_lead.xlsx | home                | 0      | product           | 2                        |

  #FeatureID-ACAUTOCAS-60
  @ImplementedBy-yash.sharma
  Scenario Outline: ACAUTOCAS-4772: Add Existing Customer in non individual applicant Lead
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    When user selects applicant is "<ApplicantType>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_SheetName>" and row <RowNum>
    And user fills "<MandatoryOrNotMandatory>" fields to create "<ApplicantType>" applicant lead
    And user checked Existing Customer checkbox for "<ApplicantType>" applicant
    And user add Existing Customer in "<ApplicantType>" applicant
    Then Existing Customer added successfully in "<ApplicantType>" applicant
    Examples:
      | ApplicantType  | MandatoryOrNotMandatory | QuickLeadWB     | QuickLead_SheetName | RowNum | QuickLead_product | QuickLead_product_rowNum |
      | non-individual | mandatory               | quick_lead.xlsx | home                | 0      | product           | 2                        |

  @ImplementedBy-yash.sharma
    #FeatureID-ACAUTOCAS-64
  Scenario Outline: ACAUTOCAS-4702: Add more "<NewApplicant>" applicant in "<ExistingApplicant>" applicant
    And user open lead grid
    And user opens quick lead entries to create new quick lead
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_product>" and row <QuickLead_product_rowNum>
    And user selects the product type
    And user selects applicant is "<ExistingApplicant>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_SheetName>" and row <RowNum>
    And user fills "<MandatoryOrNotMandatory>" fields to create "<ExistingApplicant>" applicant lead
    And user save the "<ExistingApplicant>" applicant lead
    And user open created lead from lead grid
    And user add more details to the lead for "<ExistingApplicant>"
    And user click on add more applicant button
    When user selects "<NewApplicant>" applicant
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_SheetName>" and row <RowNum>
    And user fill Personal information with selecting relationship with existing applicant for "<NewApplicant>" applicant
    And user fill work details for new Applicant for "<NewApplicant>" applicant
    And user reads data from the excel file "<financial_detailsWB>" under sheet "<financial_details_sheetName>" and row <financial_details_rowNum>
    And user fill financial details for new Applicant for "<NewApplicant>" applicant
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user reads data from the excel file "<QuickLeadWB>" under sheet "<QuickLead_SheetName>" and row <RowNum>
    And user move to application from the lead with lead status as Appointment taken
    And user save the more applicants details
    Then more "<NewApplicant>" applicant in "<ExistingApplicant>" applicant added successfully
    Examples:
      | NewApplicant   | MandatoryOrNotMandatory | ExistingApplicant | QuickLeadWB     | QuickLead_SheetName | RowNum | QuickLead_product | QuickLead_product_rowNum | financial_detailsWB | financial_details_sheetName | financial_details_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | individual     | mandatory               | individual        | quick_lead.xlsx | home                | 0      | product           | 2                        | quick_lead.xlsx     | work_and_income             | 36                       | employment_details.xlsx | home                   | 89                            |
      | individual     | mandatory               | non-individual    | quick_lead.xlsx | home                | 0      | product           | 2                        | quick_lead.xlsx     | work_and_income             | 36                       | employment_details.xlsx | home                   | 89                            |
      | non-individual | mandatory               | non-individual    | quick_lead.xlsx | home                | 0      | product           | 2                        | quick_lead.xlsx     | work_and_income             | 36                       | employment_details.xlsx | home                   | 89                            |
      | non-individual | mandatory               | individual        | quick_lead.xlsx | home                | 0      | product           | 2                        | quick_lead.xlsx     | work_and_income             | 36                       | employment_details.xlsx | home                   | 89                            |
