@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-
@TechReviewedBy-
@Reconciled

 # ${ApplicantType:["nonindiv"]}
 # ${Mode:["Tabs","Expanded"]}
Feature:Customer Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


    #FeatureID-ACAUTOCAS-8488
  Scenario Outline: ACAUTOCAS-13460: Required field of customer details in <Mode> at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "<Mode>" mode button
    When user clicks on Required fields in customer details
    Then the following mandatory fields should be present in customer details
      | Mandatory_Field          |
      | Institution Name         |
      | Incorporation Date       |
      | Registration Type        |
      | Registration No.         |
      | Registration Expiry Date |
      | Constitution             |
      | Industry Classification  |
      | Industry                 |

    # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-pallavi.singh
    Examples:
      | ProductType   | ApplicationStage   | Mode   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <Mode> | <ApplicantType> |          |     |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | Mode   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <Mode> | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | Mode   | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | <Mode> | <ApplicantType> | <Category> |     |


  #FeatureID-ACAUTOCAS-8488
  Scenario Outline: ACAUTOCAS-13461: All fields of customer details in <Mode> at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "<Mode>" mode button
    When user clicks on All Fields in customer details
    Then all fields should be present in customer details
      | All_Fields                |
      | Host ID                   |
      | Institution Name          |
      | Institution Description   |
      | Incorporation Date        |
      | Registration Type         |
      | Commencement Date         |
      | No. of Controlling Person |
      | Registration No.          |
      | Registration Expiry Date  |
      | Constitution              |
      | Group Name                |
      | Sub Group Name            |
      | Business Category         |
      | Industry Classification   |
      | Industry                  |
      | Sub-Industry              |
      | Nature of Business        |
      | Total Years Of Operation  |
      | Website                   |
      | Net Worth                 |
      | Turnover                  |
      | Monthly Sale              |
      | Monthly Purchase          |
      | Employee Strength         |
      | TAN Number                |
      | Is a Classified Customer  |
      | Promoter Contribution     |
      | Account Holder Type       |
      | Legal Entity Identifier   |

    # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-pallavi.singh
    Examples:
      | ProductType   | ApplicationStage   | Mode   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <Mode> | <ApplicantType> |          |     |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | Mode   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <Mode> | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | ApplicationStage   | Mode   | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | <Mode> | <ApplicantType> | <Category> |     |


  #FeatureID-ACAUTOCAS-8488
  Scenario Outline: ACAUTOCAS-13462: <Field_Name> field validation of customer details with <Validity> <InputType> in <Mode> at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "<Mode>" mode button
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    When user fill "<Validity>" "<Field_Name>" with "<InputType>" in customer details
    Then "<Field_Name>" in customer details "<Throws_notThrows>" error

    # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-pallavi.singh
    Examples:
      | ProductType   | Field_Name                | Validity | InputType                                         | Throws_notThrows | Mode   | ApplicationStage   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ApplicantType   | Category | key |
      | <ProductType> | Institution Name          | valid    | character                                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 2                           | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | valid    | alphanumeric                                      | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 3                           | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | valid    | number                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 4                           | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | valid    | character with space                              | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 5                           | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | valid    | character with dot                                | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 6                           | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | valid    | character with apostrophe                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 7                           | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | invalid  | character with underscore                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 8                           | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | invalid  | character with hyphen                             | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 9                           | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | invalid  | negative number                                   | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 10                          | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | invalid  | special character except @                        | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 11                          | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | valid    | max length 200 characters                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 12                          | <ApplicantType> |          |     |
      | <ProductType> | Institution Description   | valid    | character                                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 13                          | <ApplicantType> |          |     |
      | <ProductType> | Institution Description   | valid    | alphanumeric                                      | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 14                          | <ApplicantType> |          |     |
      | <ProductType> | Institution Description   | valid    | number                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 15                          | <ApplicantType> |          |     |
      | <ProductType> | Institution Description   | invalid  | negative number                                   | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 16                          | <ApplicantType> |          |     |
      | <ProductType> | Institution Description   | invalid  | special character                                 | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 17                          | <ApplicantType> |          |     |
      | <ProductType> | Institution Description   | valid    | max length 100 characters                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 18                          | <ApplicantType> |          |     |
      | <ProductType> | Incorporation Date        | valid    | correct date format                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 19                          | <ApplicantType> |          |     |
      | <ProductType> | Incorporation Date        | invalid  | incorrect date format                             | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 20                          | <ApplicantType> |          |     |
      | <ProductType> | Incorporation Date        | valid    | less than current date                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 21                          | <ApplicantType> |          |     |
      | <ProductType> | Incorporation Date        | invalid  | greater than current date                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 22                          | <ApplicantType> |          |     |
      | <ProductType> | Incorporation Date        | invalid  | less than 1942                                    | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 23                          | <ApplicantType> |          |     |
      | <ProductType> | Commencement Date         | valid    | correct date format                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 24                          | <ApplicantType> |          |     |
      | <ProductType> | Commencement Date         | invalid  | incorrect date format                             | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 25                          | <ApplicantType> |          |     |
      | <ProductType> | Commencement Date         | valid    | less than current date                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 26                          | <ApplicantType> |          |     |
      | <ProductType> | Commencement Date         | valid    | greater than current date                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 27                          | <ApplicantType> |          |     |
      | <ProductType> | Commencement Date         | invalid  | less than 1942                                    | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 28                          | <ApplicantType> |          |     |
      | <ProductType> | Registration Expiry Date  | valid    | correct date format                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 29                          | <ApplicantType> |          |     |
      | <ProductType> | Registration Expiry Date  | invalid  | incorrect date format                             | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 30                          | <ApplicantType> |          |     |
      | <ProductType> | Registration Expiry Date  | invalid  | less than current date                            | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 31                          | <ApplicantType> |          |     |
      | <ProductType> | Registration Expiry Date  | valid    | greater than current date                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 32                          | <ApplicantType> |          |     |
      | <ProductType> | Registration Expiry Date  | invalid  | less than 1942                                    | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 33                          | <ApplicantType> |          |     |
      | <ProductType> | No. of Controlling Person | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 34                          | <ApplicantType> |          |     |
      | <ProductType> | No. of Controlling Person | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 35                          | <ApplicantType> |          |     |
      | <ProductType> | No. of Controlling Person | valid    | digits                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 36                          | <ApplicantType> |          |     |
      | <ProductType> | No. of Controlling Person | valid    | max two digits                                    | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 37                          | <ApplicantType> |          |     |
      | <ProductType> | Registration No.          | valid    | alphanumeric                                      | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 38                          | <ApplicantType> |          |     |
      | <ProductType> | Registration No.          | valid    | hyphen between characters                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 39                          | <ApplicantType> |          |     |
      | <ProductType> | Registration No.          | valid    | spaces between characters                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 40                          | <ApplicantType> |          |     |
      | <ProductType> | Registration No.          | invalid  | special characters                                | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 41                          | <ApplicantType> |          |     |
      | <ProductType> | Registration No.          | valid    | max length 50 characters                          | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 42                          | <ApplicantType> |          |     |
      | <ProductType> | Constitution              | valid    | mapped                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 43                          | <ApplicantType> |          |     |
      | <ProductType> | Constitution              | invalid  | unmapped                                          | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 44                          | <ApplicantType> |          |     |
      | <ProductType> | Group Name                | valid    | mapped                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 45                          | <ApplicantType> |          |     |
      | <ProductType> | Group Name                | invalid  | unmapped                                          | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 46                          | <ApplicantType> |          |     |
      | <ProductType> | Sub Group Name            | valid    | mapped                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 47                          | <ApplicantType> |          |     |
      | <ProductType> | Sub Group Name            | invalid  | unmapped                                          | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 48                          | <ApplicantType> |          |     |
      | <ProductType> | Business Category         | valid    | mapped                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 49                          | <ApplicantType> |          |     |
      | <ProductType> | Business Category         | invalid  | unmapped                                          | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 50                          | <ApplicantType> |          |     |
      | <ProductType> | Website                   | valid    | correct URL                                       | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 51                          | <ApplicantType> |          |     |
      | <ProductType> | Website                   | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 52                          | <ApplicantType> |          |     |
      | <ProductType> | Website                   | invalid  | alphanumeric                                      | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 53                          | <ApplicantType> |          |     |
      | <ProductType> | Website                   | invalid  | number                                            | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 54                          | <ApplicantType> |          |     |
      | <ProductType> | Website                   | invalid  | max length 255 characters                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 55                          | <ApplicantType> |          |     |
      | <ProductType> | Website                   | invalid  | special characters                                | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 56                          | <ApplicantType> |          |     |
      | <ProductType> | Net Worth                 | invalid  | more than 18 digits                               | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 57                          | <ApplicantType> |          |     |
      | <ProductType> | Net Worth                 | valid    | less than 18 digits                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 58                          | <ApplicantType> |          |     |
      | <ProductType> | Net Worth                 | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 59                          | <ApplicantType> |          |     |
      | <ProductType> | Net Worth                 | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 60                          | <ApplicantType> |          |     |
      | <ProductType> | Net Worth                 | invalid  | negative values                                   | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 61                          | <ApplicantType> |          |     |
      | <ProductType> | Net Worth                 | invalid  | character with space                              | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 62                          | <ApplicantType> |          |     |
      | <ProductType> | Net Worth                 | invalid  | digits with space                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 63                          | <ApplicantType> |          |     |
      | <ProductType> | Net Worth                 | valid    | positive values and Upto 18 digits                | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 64                          | <ApplicantType> |          |     |
      | <ProductType> | Turnover                  | invalid  | more than 18 digits                               | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 65                          | <ApplicantType> |          |     |
      | <ProductType> | Turnover                  | valid    | less than 18 digits                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 66                          | <ApplicantType> |          |     |
      | <ProductType> | Turnover                  | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 67                          | <ApplicantType> |          |     |
      | <ProductType> | Turnover                  | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 68                          | <ApplicantType> |          |     |
      | <ProductType> | Turnover                  | invalid  | negative values                                   | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 69                          | <ApplicantType> |          |     |
      | <ProductType> | Turnover                  | invalid  | character with space                              | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 70                          | <ApplicantType> |          |     |
      | <ProductType> | Turnover                  | invalid  | digits with space                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 71                          | <ApplicantType> |          |     |
      | <ProductType> | Turnover                  | valid    | positive values and Upto 18 digits                | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 72                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Sale              | invalid  | more than 18 digits                               | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 73                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Sale              | valid    | less than 18 digits                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 74                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Sale              | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 75                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Sale              | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 76                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Sale              | invalid  | negative values                                   | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 77                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Sale              | invalid  | character with space                              | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 78                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Sale              | invalid  | digits with space                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 79                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Sale              | valid    | positive values and Upto 18 digits                | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 80                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Purchase          | invalid  | more than 18 digits                               | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 81                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Purchase          | valid    | less than 18 digits                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 82                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Purchase          | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 83                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Purchase          | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 84                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Purchase          | invalid  | negative values                                   | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 85                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Purchase          | invalid  | character with space                              | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 86                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Purchase          | invalid  | digits with space                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 87                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Purchase          | valid    | positive values and Upto 18 digits                | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 88                          | <ApplicantType> |          |     |
      | <ProductType> | Employee Strength         | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 89                          | <ApplicantType> |          |     |
      | <ProductType> | Employee Strength         | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 90                          | <ApplicantType> |          |     |
      | <ProductType> | Employee Strength         | valid    | digits                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 91                          | <ApplicantType> |          |     |
      | <ProductType> | Employee Strength         | valid    | max 18 digits                                     | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 92                          | <ApplicantType> |          |     |
      | <ProductType> | TAN Number                | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 93                          | <ApplicantType> |          |     |
      | <ProductType> | TAN Number                | invalid  | alphanumeric                                      | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 94                          | <ApplicantType> |          |     |
      | <ProductType> | TAN Number                | invalid  | number                                            | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 95                          | <ApplicantType> |          |     |
      | <ProductType> | TAN Number                | valid    | valid format(AAAA12345A)                          | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 96                          | <ApplicantType> |          |     |
      | <ProductType> | TAN Number                | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 97                          | <ApplicantType> |          |     |
      | <ProductType> | Promoter Contribution     | valid    | value between 0 to 100                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 98                          | <ApplicantType> |          |     |
      | <ProductType> | Promoter Contribution     | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 99                          | <ApplicantType> |          |     |
      | <ProductType> | Promoter Contribution     | invalid  | negative values                                   | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 100                         | <ApplicantType> |          |     |
      | <ProductType> | Promoter Contribution     | invalid  | value more  than 100                              | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 101                         | <ApplicantType> |          |     |
      | <ProductType> | Promoter Contribution     | invalid  | value between 0 to 100 more than 2 decimal places | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 102                         | <ApplicantType> |          |     |
      | <ProductType> | Promoter Contribution     | invalid  | max length 255 characters                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 103                         | <ApplicantType> |          |     |
      | <ProductType> | Legal Entity Identifier   | valid    | alphanumeric                                      | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 104                         | <ApplicantType> |          |     |
      | <ProductType> | Legal Entity Identifier   | valid    | max length 20 characters                          | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 105                         | <ApplicantType> |          |     |
      | <ProductType> | Legal Entity Identifier   | invalid  | special characters                                | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 106                         | <ApplicantType> |          |     |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | Field_Name                | Validity | InputType                                         | Throws_notThrows | Mode   | ApplicationStage   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ApplicantType   | Category | key |
      | <ProductType> | Institution Name          | valid    | character                                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 2                           | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | valid    | alphanumeric                                      | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 3                           | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | valid    | number                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 4                           | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | valid    | character with space                              | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 5                           | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | valid    | character with dot                                | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 6                           | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | valid    | character with apostrophe                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 7                           | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | invalid  | character with underscore                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 8                           | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | invalid  | character with hyphen                             | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 9                           | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | invalid  | negative number                                   | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 10                          | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | invalid  | special character except @                        | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 11                          | <ApplicantType> |          |     |
      | <ProductType> | Institution Name          | valid    | max length 200 characters                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 12                          | <ApplicantType> |          |     |
      | <ProductType> | Institution Description   | valid    | character                                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 13                          | <ApplicantType> |          |     |
      | <ProductType> | Institution Description   | valid    | alphanumeric                                      | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 14                          | <ApplicantType> |          |     |
      | <ProductType> | Institution Description   | valid    | number                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 15                          | <ApplicantType> |          |     |
      | <ProductType> | Institution Description   | invalid  | negative number                                   | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 16                          | <ApplicantType> |          |     |
      | <ProductType> | Institution Description   | invalid  | special character                                 | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 17                          | <ApplicantType> |          |     |
      | <ProductType> | Institution Description   | valid    | max length 100 characters                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 18                          | <ApplicantType> |          |     |
      | <ProductType> | Incorporation Date        | valid    | correct date format                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 19                          | <ApplicantType> |          |     |
      | <ProductType> | Incorporation Date        | invalid  | incorrect date format                             | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 20                          | <ApplicantType> |          |     |
      | <ProductType> | Incorporation Date        | valid    | less than current date                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 21                          | <ApplicantType> |          |     |
      | <ProductType> | Incorporation Date        | invalid  | greater than current date                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 22                          | <ApplicantType> |          |     |
      | <ProductType> | Incorporation Date        | invalid  | less than 1942                                    | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 23                          | <ApplicantType> |          |     |
      | <ProductType> | Commencement Date         | valid    | correct date format                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 24                          | <ApplicantType> |          |     |
      | <ProductType> | Commencement Date         | invalid  | incorrect date format                             | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 25                          | <ApplicantType> |          |     |
      | <ProductType> | Commencement Date         | valid    | less than current date                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 26                          | <ApplicantType> |          |     |
      | <ProductType> | Commencement Date         | valid    | greater than current date                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 27                          | <ApplicantType> |          |     |
      | <ProductType> | Commencement Date         | invalid  | less than 1942                                    | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 28                          | <ApplicantType> |          |     |
      | <ProductType> | Registration Expiry Date  | valid    | correct date format                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 29                          | <ApplicantType> |          |     |
      | <ProductType> | Registration Expiry Date  | invalid  | incorrect date format                             | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 30                          | <ApplicantType> |          |     |
      | <ProductType> | Registration Expiry Date  | invalid  | less than current date                            | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 31                          | <ApplicantType> |          |     |
      | <ProductType> | Registration Expiry Date  | valid    | greater than current date                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 32                          | <ApplicantType> |          |     |
      | <ProductType> | Registration Expiry Date  | invalid  | less than 1942                                    | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 33                          | <ApplicantType> |          |     |
      | <ProductType> | No. of Controlling Person | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 34                          | <ApplicantType> |          |     |
      | <ProductType> | No. of Controlling Person | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 35                          | <ApplicantType> |          |     |
      | <ProductType> | No. of Controlling Person | valid    | digits                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 36                          | <ApplicantType> |          |     |
      | <ProductType> | No. of Controlling Person | valid    | max two digits                                    | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 37                          | <ApplicantType> |          |     |
      | <ProductType> | Registration No.          | valid    | alphanumeric                                      | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 38                          | <ApplicantType> |          |     |
      | <ProductType> | Registration No.          | valid    | hyphen between characters                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 39                          | <ApplicantType> |          |     |
      | <ProductType> | Registration No.          | valid    | spaces between characters                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 40                          | <ApplicantType> |          |     |
      | <ProductType> | Registration No.          | invalid  | special characters                                | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 41                          | <ApplicantType> |          |     |
      | <ProductType> | Registration No.          | valid    | max length 50 characters                          | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 42                          | <ApplicantType> |          |     |
      | <ProductType> | Constitution              | valid    | mapped                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 43                          | <ApplicantType> |          |     |
      | <ProductType> | Constitution              | invalid  | unmapped                                          | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 44                          | <ApplicantType> |          |     |
      | <ProductType> | Group Name                | valid    | mapped                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 45                          | <ApplicantType> |          |     |
      | <ProductType> | Group Name                | invalid  | unmapped                                          | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 46                          | <ApplicantType> |          |     |
      | <ProductType> | Sub Group Name            | valid    | mapped                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 47                          | <ApplicantType> |          |     |
      | <ProductType> | Sub Group Name            | invalid  | unmapped                                          | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 48                          | <ApplicantType> |          |     |
      | <ProductType> | Business Category         | valid    | mapped                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 49                          | <ApplicantType> |          |     |
      | <ProductType> | Business Category         | invalid  | unmapped                                          | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 50                          | <ApplicantType> |          |     |
      | <ProductType> | Website                   | valid    | correct URL                                       | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 51                          | <ApplicantType> |          |     |
      | <ProductType> | Website                   | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 52                          | <ApplicantType> |          |     |
      | <ProductType> | Website                   | invalid  | alphanumeric                                      | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 53                          | <ApplicantType> |          |     |
      | <ProductType> | Website                   | invalid  | number                                            | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 54                          | <ApplicantType> |          |     |
      | <ProductType> | Website                   | invalid  | max length 255 characters                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 55                          | <ApplicantType> |          |     |
      | <ProductType> | Website                   | invalid  | special characters                                | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 56                          | <ApplicantType> |          |     |
      | <ProductType> | Net Worth                 | invalid  | more than 18 digits                               | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 57                          | <ApplicantType> |          |     |
      | <ProductType> | Net Worth                 | valid    | less than 18 digits                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 58                          | <ApplicantType> |          |     |
      | <ProductType> | Net Worth                 | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 59                          | <ApplicantType> |          |     |
      | <ProductType> | Net Worth                 | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 60                          | <ApplicantType> |          |     |
      | <ProductType> | Net Worth                 | invalid  | negative values                                   | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 61                          | <ApplicantType> |          |     |
      | <ProductType> | Net Worth                 | invalid  | character with space                              | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 62                          | <ApplicantType> |          |     |
      | <ProductType> | Net Worth                 | invalid  | digits with space                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 63                          | <ApplicantType> |          |     |
      | <ProductType> | Net Worth                 | valid    | positive values and Upto 18 digits                | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 64                          | <ApplicantType> |          |     |
      | <ProductType> | Turnover                  | invalid  | more than 18 digits                               | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 65                          | <ApplicantType> |          |     |
      | <ProductType> | Turnover                  | valid    | less than 18 digits                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 66                          | <ApplicantType> |          |     |
      | <ProductType> | Turnover                  | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 67                          | <ApplicantType> |          |     |
      | <ProductType> | Turnover                  | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 68                          | <ApplicantType> |          |     |
      | <ProductType> | Turnover                  | invalid  | negative values                                   | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 69                          | <ApplicantType> |          |     |
      | <ProductType> | Turnover                  | invalid  | character with space                              | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 70                          | <ApplicantType> |          |     |
      | <ProductType> | Turnover                  | invalid  | digits with space                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 71                          | <ApplicantType> |          |     |
      | <ProductType> | Turnover                  | valid    | positive values and Upto 18 digits                | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 72                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Sale              | invalid  | more than 18 digits                               | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 73                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Sale              | valid    | less than 18 digits                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 74                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Sale              | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 75                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Sale              | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 76                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Sale              | invalid  | negative values                                   | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 77                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Sale              | invalid  | character with space                              | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 78                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Sale              | invalid  | digits with space                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 79                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Sale              | valid    | positive values and Upto 18 digits                | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 80                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Purchase          | invalid  | more than 18 digits                               | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 81                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Purchase          | valid    | less than 18 digits                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 82                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Purchase          | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 83                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Purchase          | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 84                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Purchase          | invalid  | negative values                                   | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 85                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Purchase          | invalid  | character with space                              | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 86                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Purchase          | invalid  | digits with space                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 87                          | <ApplicantType> |          |     |
      | <ProductType> | Monthly Purchase          | valid    | positive values and Upto 18 digits                | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 88                          | <ApplicantType> |          |     |
      | <ProductType> | Employee Strength         | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 89                          | <ApplicantType> |          |     |
      | <ProductType> | Employee Strength         | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 90                          | <ApplicantType> |          |     |
      | <ProductType> | Employee Strength         | valid    | digits                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 91                          | <ApplicantType> |          |     |
      | <ProductType> | Employee Strength         | valid    | max 18 digits                                     | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 92                          | <ApplicantType> |          |     |
      | <ProductType> | TAN Number                | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 93                          | <ApplicantType> |          |     |
      | <ProductType> | TAN Number                | invalid  | alphanumeric                                      | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 94                          | <ApplicantType> |          |     |
      | <ProductType> | TAN Number                | invalid  | number                                            | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 95                          | <ApplicantType> |          |     |
      | <ProductType> | TAN Number                | valid    | valid format(AAAA12345A)                          | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 96                          | <ApplicantType> |          |     |
      | <ProductType> | TAN Number                | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 97                          | <ApplicantType> |          |     |
      | <ProductType> | Promoter Contribution     | valid    | value between 0 to 100                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 98                          | <ApplicantType> |          |     |
      | <ProductType> | Promoter Contribution     | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 99                          | <ApplicantType> |          |     |
      | <ProductType> | Promoter Contribution     | invalid  | negative values                                   | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 100                         | <ApplicantType> |          |     |
      | <ProductType> | Promoter Contribution     | invalid  | value more  than 100                              | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 101                         | <ApplicantType> |          |     |
      | <ProductType> | Promoter Contribution     | invalid  | value between 0 to 100 more than 2 decimal places | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 102                         | <ApplicantType> |          |     |
      | <ProductType> | Promoter Contribution     | invalid  | max length 255 characters                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 103                         | <ApplicantType> |          |     |
      | <ProductType> | Legal Entity Identifier   | valid    | alphanumeric                                      | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 104                         | <ApplicantType> |          |     |
      | <ProductType> | Legal Entity Identifier   | valid    | max length 20 characters                          | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 105                         | <ApplicantType> |          |     |
      | <ProductType> | Legal Entity Identifier   | invalid  | special characters                                | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 106                         | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | Field_Name                | Validity | InputType                                         | Throws_notThrows | Mode   | ApplicationStage   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | Institution Name          | valid    | character                                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 2                           | <ApplicantType> | <Category> |     |
      | <ProductType> | Institution Name          | valid    | alphanumeric                                      | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 3                           | <ApplicantType> | <Category> |     |
      | <ProductType> | Institution Name          | valid    | number                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 4                           | <ApplicantType> | <Category> |     |
      | <ProductType> | Institution Name          | valid    | character with space                              | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 5                           | <ApplicantType> | <Category> |     |
      | <ProductType> | Institution Name          | valid    | character with dot                                | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 6                           | <ApplicantType> | <Category> |     |
      | <ProductType> | Institution Name          | valid    | character with apostrophe                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 7                           | <ApplicantType> | <Category> |     |
      | <ProductType> | Institution Name          | invalid  | character with underscore                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 8                           | <ApplicantType> | <Category> |     |
      | <ProductType> | Institution Name          | invalid  | character with hyphen                             | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 9                           | <ApplicantType> | <Category> |     |
      | <ProductType> | Institution Name          | invalid  | negative number                                   | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 10                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Institution Name          | invalid  | special character except @                        | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 11                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Institution Name          | valid    | max length 200 characters                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 12                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Institution Description   | valid    | character                                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 13                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Institution Description   | valid    | alphanumeric                                      | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 14                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Institution Description   | valid    | number                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 15                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Institution Description   | invalid  | negative number                                   | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 16                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Institution Description   | invalid  | special character                                 | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 17                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Institution Description   | valid    | max length 100 characters                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 18                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Incorporation Date        | valid    | correct date format                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 19                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Incorporation Date        | invalid  | incorrect date format                             | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 20                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Incorporation Date        | valid    | less than current date                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 21                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Incorporation Date        | invalid  | greater than current date                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 22                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Incorporation Date        | invalid  | less than 1942                                    | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 23                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Commencement Date         | valid    | correct date format                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 24                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Commencement Date         | invalid  | incorrect date format                             | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 25                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Commencement Date         | valid    | less than current date                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 26                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Commencement Date         | valid    | greater than current date                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 27                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Commencement Date         | invalid  | less than 1942                                    | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 28                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Registration Expiry Date  | valid    | correct date format                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 29                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Registration Expiry Date  | invalid  | incorrect date format                             | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 30                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Registration Expiry Date  | invalid  | less than current date                            | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 31                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Registration Expiry Date  | valid    | greater than current date                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 32                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Registration Expiry Date  | invalid  | less than 1942                                    | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 33                          | <ApplicantType> | <Category> |     |
      | <ProductType> | No. of Controlling Person | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 34                          | <ApplicantType> | <Category> |     |
      | <ProductType> | No. of Controlling Person | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 35                          | <ApplicantType> | <Category> |     |
      | <ProductType> | No. of Controlling Person | valid    | digits                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 36                          | <ApplicantType> | <Category> |     |
      | <ProductType> | No. of Controlling Person | valid    | max two digits                                    | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 37                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Registration No.          | valid    | alphanumeric                                      | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 38                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Registration No.          | valid    | hyphen between characters                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 39                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Registration No.          | valid    | spaces between characters                         | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 40                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Registration No.          | invalid  | special characters                                | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 41                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Registration No.          | valid    | max length 50 characters                          | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 42                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Constitution              | valid    | mapped                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 43                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Constitution              | invalid  | unmapped                                          | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 44                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Group Name                | valid    | mapped                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 45                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Group Name                | invalid  | unmapped                                          | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 46                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Sub Group Name            | valid    | mapped                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 47                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Sub Group Name            | invalid  | unmapped                                          | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 48                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Business Category         | valid    | mapped                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 49                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Business Category         | invalid  | unmapped                                          | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 50                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Website                   | valid    | correct URL                                       | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 51                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Website                   | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 52                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Website                   | invalid  | alphanumeric                                      | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 53                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Website                   | invalid  | number                                            | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 54                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Website                   | invalid  | max length 255 characters                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 55                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Website                   | invalid  | special characters                                | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 56                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Net Worth                 | invalid  | more than 18 digits                               | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 57                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Net Worth                 | valid    | less than 18 digits                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 58                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Net Worth                 | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 59                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Net Worth                 | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 60                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Net Worth                 | invalid  | negative values                                   | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 61                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Net Worth                 | invalid  | character with space                              | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 62                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Net Worth                 | invalid  | digits with space                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 63                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Net Worth                 | valid    | positive values and Upto 18 digits                | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 64                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Turnover                  | invalid  | more than 18 digits                               | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 65                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Turnover                  | valid    | less than 18 digits                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 66                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Turnover                  | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 67                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Turnover                  | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 68                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Turnover                  | invalid  | negative values                                   | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 69                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Turnover                  | invalid  | character with space                              | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 70                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Turnover                  | invalid  | digits with space                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 71                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Turnover                  | valid    | positive values and Upto 18 digits                | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 72                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Monthly Sale              | invalid  | more than 18 digits                               | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 73                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Monthly Sale              | valid    | less than 18 digits                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 74                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Monthly Sale              | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 75                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Monthly Sale              | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 76                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Monthly Sale              | invalid  | negative values                                   | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 77                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Monthly Sale              | invalid  | character with space                              | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 78                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Monthly Sale              | invalid  | digits with space                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 79                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Monthly Sale              | valid    | positive values and Upto 18 digits                | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 80                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Monthly Purchase          | invalid  | more than 18 digits                               | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 81                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Monthly Purchase          | valid    | less than 18 digits                               | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 82                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Monthly Purchase          | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 83                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Monthly Purchase          | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 84                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Monthly Purchase          | invalid  | negative values                                   | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 85                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Monthly Purchase          | invalid  | character with space                              | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 86                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Monthly Purchase          | invalid  | digits with space                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 87                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Monthly Purchase          | valid    | positive values and Upto 18 digits                | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 88                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Employee Strength         | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 89                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Employee Strength         | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 90                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Employee Strength         | valid    | digits                                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 91                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Employee Strength         | valid    | max 18 digits                                     | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 92                          | <ApplicantType> | <Category> |     |
      | <ProductType> | TAN Number                | invalid  | character                                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 93                          | <ApplicantType> | <Category> |     |
      | <ProductType> | TAN Number                | invalid  | alphanumeric                                      | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 94                          | <ApplicantType> | <Category> |     |
      | <ProductType> | TAN Number                | invalid  | number                                            | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 95                          | <ApplicantType> | <Category> |     |
      | <ProductType> | TAN Number                | valid    | valid format(AAAA12345A)                          | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 96                          | <ApplicantType> | <Category> |     |
      | <ProductType> | TAN Number                | invalid  | special character                                 | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 97                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Promoter Contribution     | valid    | value between 0 to 100                            | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 98                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Promoter Contribution     | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 99                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Promoter Contribution     | invalid  | negative values                                   | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 100                         | <ApplicantType> | <Category> |     |
      | <ProductType> | Promoter Contribution     | invalid  | value more  than 100                              | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 101                         | <ApplicantType> | <Category> |     |
      | <ProductType> | Promoter Contribution     | invalid  | value between 0 to 100 more than 2 decimal places | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 102                         | <ApplicantType> | <Category> |     |
      | <ProductType> | Promoter Contribution     | invalid  | max length 255 characters                         | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 103                         | <ApplicantType> | <Category> |     |
      | <ProductType> | Legal Entity Identifier   | valid    | alphanumeric                                      | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 104                         | <ApplicantType> | <Category> |     |
      | <ProductType> | Legal Entity Identifier   | valid    | max length 20 characters                          | not throw any    | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 105                         | <ApplicantType> | <Category> |     |
      | <ProductType> | Legal Entity Identifier   | invalid  | special characters                                | throw an         | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 106                         | <ApplicantType> | <Category> |     |



  #FeatureID-ACAUTOCAS-8488
  Scenario Outline: ACAUTOCAS-13463: Proceed to next without filling <Mandatory_Field> field of customer details in <Mode> for <ProductType>
    And user create new "<ProductType>" application of non individual applicant
    And user clicks on "<Mode>" mode button
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fill customer details except "<Mandatory_Field>"
    When user proceed to next in customer details
    Then customer details did not proceed with an error message

     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-pallavi.singh
    Examples:
      | ProductType   | Mandatory_Field         | Mode   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum |
      | <ProductType> | Institution Name        | <Mode> | customer_details.xlsx | home                 | 107                         |
      | <ProductType> | Incorporation Date      | <Mode> | customer_details.xlsx | home                 | 108                         |
      | <ProductType> | Registration Type       | <Mode> | customer_details.xlsx | home                 | 109                         |
      | <ProductType> | Constitution            | <Mode> | customer_details.xlsx | home                 | 110                         |
      | <ProductType> | Industry Classification | <Mode> | customer_details.xlsx | home                 | 111                         |
      | <ProductType> | Industry                | <Mode> | customer_details.xlsx | home                 | 112                         |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | Mandatory_Field         | Mode   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum |
      | <ProductType> | Institution Name        | <Mode> | customer_details.xlsx | home                 | 107                         |
      | <ProductType> | Incorporation Date      | <Mode> | customer_details.xlsx | home                 | 108                         |
      | <ProductType> | Registration Type       | <Mode> | customer_details.xlsx | home                 | 109                         |
      | <ProductType> | Constitution            | <Mode> | customer_details.xlsx | home                 | 110                         |
      | <ProductType> | Industry Classification | <Mode> | customer_details.xlsx | home                 | 111                         |
      | <ProductType> | Industry                | <Mode> | customer_details.xlsx | home                 | 112                         |


	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | Mandatory_Field         | Mode   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum |
      | <ProductType> | Institution Name        | <Mode> | customer_details.xlsx | home                 | 107                         |
      | <ProductType> | Incorporation Date      | <Mode> | customer_details.xlsx | home                 | 108                         |
      | <ProductType> | Registration Type       | <Mode> | customer_details.xlsx | home                 | 109                         |
      | <ProductType> | Constitution            | <Mode> | customer_details.xlsx | home                 | 110                         |
      | <ProductType> | Industry Classification | <Mode> | customer_details.xlsx | home                 | 111                         |
      | <ProductType> | Industry                | <Mode> | customer_details.xlsx | home                 | 112                         |



  #FeatureID-ACAUTOCAS-8488
  @Sanity
  Scenario Outline: ACAUTOCAS-13464: Proceed to next with <Field> field of customer details in <Mode> for <ProductType>
    And user create new "<ProductType>" application of non individual applicant
    And user clicks on "<Mode>" mode button
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user fill customer details with "<Field>" fields
    When user proceed to next in customer details
    Then customer details should be proceed

      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-pallavi.singh
    Examples:
      | ProductType   | Field     | Mode   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum |
      | <ProductType> | mandatory | <Mode> | customer_details.xlsx | home                 | 114                         |
      | <ProductType> | all       | <Mode> | customer_details.xlsx | home                 | 113                         |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | Field     | Mode   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum |
      | <ProductType> | mandatory | <Mode> | customer_details.xlsx | home                 | 114                         |
      | <ProductType> | all       | <Mode> | customer_details.xlsx | home                 | 113                         |


	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | Field     | Mode   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum |
      | <ProductType> | mandatory | <Mode> | customer_details.xlsx | home                 | 114                         |
      | <ProductType> | all       | <Mode> | customer_details.xlsx | home                 | 113                         |




  #FeatureID-ACAUTOCAS-8488
  Scenario Outline: ACAUTOCAS-13465: <Fields> populate on proceeding in <Mode> of customer details for <ProductType>
    And user create new "<ProductType>" application of non individual applicant
    And user clicks on "<Mode>" mode button
    And user reads data from the excel file "customer_details.xlsx" under sheet "home" and row 114
    And user fill customer details with "mandatory" fields
    When user proceed to next in customer details
    Then "<Fields>" should be populate on yellow ribbon

    # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-pallavi.singh
    Examples:
      | ProductType   | Fields             | Mode   |
      | <ProductType> | Application Number | <Mode> |
      | <ProductType> | Primary Applicant  | <Mode> |
      | <ProductType> | Neo Cust ID        | <Mode> |
      | <ProductType> | Neo CIF Number     | <Mode> |

      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | Fields             | Mode   |
      | <ProductType> | Application Number | <Mode> |
      | <ProductType> | Primary Applicant  | <Mode> |
      | <ProductType> | Neo Cust ID        | <Mode> |
      | <ProductType> | Neo CIF Number     | <Mode> |


	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | Fields             | Mode   |
      | <ProductType> | Application Number | <Mode> |
      | <ProductType> | Primary Applicant  | <Mode> |
      | <ProductType> | Neo Cust ID        | <Mode> |
      | <ProductType> | Neo CIF Number     | <Mode> |




  #FeatureID-ACAUTOCAS-8488
  Scenario Outline: ACAUTOCAS-13466: Open Identification accordion without clicking on Proceed Button customer details in <Mode> for <ProductType>
    And user create new "<ProductType>" application of non individual applicant
    And user clicks on "<Mode>" mode button
    And user reads data from the excel file "customer_details.xlsx" under sheet "home" and row 114
    And user fill customer details with "mandatory" fields
    When user open Identification accordion without clicking on Proceed Button
    Then accordion didn't opened with an error message
     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-pallavi.singh
    Examples:
      | ProductType   | Mode   |
      | <ProductType> | <Mode> |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | Mode   |
      | <ProductType> | <Mode> |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | Mode   |
      | <ProductType> | <Mode> |


  #FeatureID-ACAUTOCAS-8488
  Scenario Outline: ACAUTOCAS-13467: <Fields> generated on proceeding in <Mode> of customer details for <ProductType>
    And user create new "<ProductType>" application of non individual applicant
    And user clicks on "<Mode>" mode button
    And user reads data from the excel file "customer_details.xlsx" under sheet "home" and row 114
    And user fill customer details with "mandatory" fields
    When user proceed to next in customer details
    Then "<Fields>" should be generated successfully with filled data

      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-pallavi.singh
    Examples:
      | ProductType   | Fields             | Mode   |
      | <ProductType> | Application Number | <Mode> |
      | <ProductType> | Neo Cust ID        | <Mode> |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | Fields             | Mode   |
      | <ProductType> | Application Number | <Mode> |
      | <ProductType> | Neo Cust ID        | <Mode> |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | Fields             | Mode   |
      | <ProductType> | Application Number | <Mode> |
      | <ProductType> | Neo Cust ID        | <Mode> |

  #FeatureID-ACAUTOCAS-8488
  Scenario Outline: ACAUTOCAS-13468: <Accordion> accordion after <Expand_Collapse> All the screen of customer details in "<Mode>" expanded mode at "<ApplicationStage>" for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "<Mode>" mode button
    When user clicks on Required fields in customer details
    Then "<Accordion>" accordion should be "<Expand_Collapse>" for expanded mode
     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-kanika.mahal
    Examples:
      | ProductType   | Expand_Collapse | Accordion                            | Mode   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | Expand          | Identification                       | <Mode> | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Expand          | Organization Address                 | <Mode> | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Expand          | Electricity Bill Authentication Info | <Mode> | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | collapsed       | Identification                       | <Mode> | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | collapsed       | Organization Address                 | <Mode> | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | collapsed       | Electricity Bill Authentication Info | <Mode> | <ApplicationStage> | <ApplicantType> |          |     |

          #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | Expand_Collapse | Accordion                            | Mode   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | Expand          | Identification                       | <Mode> | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Expand          | Organization Address                 | <Mode> | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Expand          | Electricity Bill Authentication Info | <Mode> | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | collapsed       | Identification                       | <Mode> | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | collapsed       | Organization Address                 | <Mode> | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | collapsed       | Electricity Bill Authentication Info | <Mode> | <ApplicationStage> | <ApplicantType> |          |     |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    Examples:
      | ProductType   | Expand_Collapse | Accordion                            | Mode   | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | Expand          | Identification                       | <Mode> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Expand          | Organization Address                 | <Mode> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Expand          | Electricity Bill Authentication Info | <Mode> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | collapsed       | Identification                       | <Mode> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | collapsed       | Organization Address                 | <Mode> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | collapsed       | Electricity Bill Authentication Info | <Mode> | <ApplicationStage> | <ApplicantType> | <Category> |     |


  #FeatureID-ACAUTOCAS-8488
  Scenario Outline: ACAUTOCAS-13470: Dependent field <DependentFields> should be <Expected_Behaviour> based on <Fields> in "<Mode>" of customer details for "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on "<Mode>" mode button
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    When user fill "<Fields>" in customer details
    Then "<DependentFields>" should be "<Expected_Behaviour>" in customer details
        # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-kanika.mahal
    Examples:
      | ProductType   | Fields                          | DependentFields          | Expected_Behaviour | Mode   | ApplicationStage   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ApplicantType   | Category | key |
      | <ProductType> | Registration Type as Not Listed | Registration No.         | non mandatory      | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 0                           | <ApplicantType> |          |     |
      | <ProductType> | Registration Type as Not Listed | Registration Expiry Date | non mandatory      | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 0                           | <ApplicantType> |          |     |
      | <ProductType> | Registration Type as Listed     | Registration No.         | mandatory          | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 110                         | <ApplicantType> |          |     |
      | <ProductType> | Registration Type as Listed     | Registration Expiry Date | mandatory          | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 110                         | <ApplicantType> |          |     |
      | <ProductType> | Registration Type as Listed     | Registration No.         | display            | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 110                         | <ApplicantType> |          |     |
      | <ProductType> | Registration Type as Listed     | Registration Expiry Date | display            | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 110                         | <ApplicantType> |          |     |

      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | Fields                          | DependentFields          | Expected_Behaviour | Mode   | ApplicationStage   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ApplicantType   | Category | key |
      | <ProductType> | Registration Type as Not Listed | Registration No.         | non mandatory      | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 0                           | <ApplicantType> |          |     |
      | <ProductType> | Registration Type as Not Listed | Registration Expiry Date | non mandatory      | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 0                           | <ApplicantType> |          |     |
      | <ProductType> | Registration Type as Listed     | Registration No.         | mandatory          | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 110                         | <ApplicantType> |          |     |
      | <ProductType> | Registration Type as Listed     | Registration Expiry Date | mandatory          | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 110                         | <ApplicantType> |          |     |
      | <ProductType> | Registration Type as Listed     | Registration No.         | display            | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 110                         | <ApplicantType> |          |     |
      | <ProductType> | Registration Type as Listed     | Registration Expiry Date | display            | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 110                         | <ApplicantType> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | Fields                          | DependentFields          | Expected_Behaviour | Mode   | ApplicationStage   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | Registration Type as Not Listed | Registration No.         | non mandatory      | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 0                           | <ApplicantType> | <Category> |     |
      | <ProductType> | Registration Type as Not Listed | Registration Expiry Date | non mandatory      | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 0                           | <ApplicantType> | <Category> |     |
      | <ProductType> | Registration Type as Listed     | Registration No.         | mandatory          | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 110                         | <ApplicantType> | <Category> |     |
      | <ProductType> | Registration Type as Listed     | Registration Expiry Date | mandatory          | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 110                         | <ApplicantType> | <Category> |     |
      | <ProductType> | Registration Type as Listed     | Registration No.         | display            | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 110                         | <ApplicantType> | <Category> |     |
      | <ProductType> | Registration Type as Listed     | Registration Expiry Date | display            | <Mode> | <ApplicationStage> | customer_details.xlsx | home                 | 110                         | <ApplicantType> | <Category> |     |


  #FeatureID-ACAUTOCAS-8488
  Scenario Outline: ACAUTOCAS-13471:  if we click on <Accordion> accordion before clicking on proceed then system should throw pop-up message in <ProductType>
    And user create new "<ProductType>" application of non individual applicant
    And user clicks on "<Mode>" mode button
    And user reads data from the excel file "customer_details.xlsx" under sheet "home" and row 114
    And user fill customer details with "mandatory" fields
    When user clicks on "<Accordion>" accordion without clicking on proceed button in customer detail
    Then accordion didn't opened with an error message

       # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-pallavi.singh
    Examples:
      | ProductType   | Accordion            | Mode   |
      | <ProductType> | Identification       | <Mode> |
      | <ProductType> | Organization Address | <Mode> |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | Accordion            | Mode   |
      | <ProductType> | Identification       | <Mode> |
      | <ProductType> | Organization Address | <Mode> |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ProductType   | Accordion            | Mode   |
      | <ProductType> | Identification       | <Mode> |
      | <ProductType> | Organization Address | <Mode> |

  #FeatureID-ACAUTOCAS-8488
  Scenario Outline: ACAUTOCAS-13472: Field type validation of customer details in <Mode> at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    When user clicks on "<Mode>" mode button
    Then "<Field>" field should be "<Field_Type>" type in customer details
        # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}

    @Conventional
    @Release
    @Part-3
    @ImplementedBy-pallavi.singh
    Examples:
      | Field                     | Field_Type     | ApplicationStage   | ProductType   | Mode   | ApplicantType   | Category | key |
      | Host ID                   | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Institution Name          | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Institution Description   | textarea       | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Incorporation Date        | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Registration Type         | drop down      | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Commencement Date         | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | No. of Controlling Person | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Registration No.          | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Registration Expiry Date  | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Constitution              | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Group Name                | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Sub Group Name            | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Business Category         | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Industry Classification   | drop down      | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Industry                  | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Sub-Industry              | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Nature of Business        | drop down      | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Total Years Of Operation  | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Website                   | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Net Worth                 | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Turnover                  | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Monthly Sale              | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Monthly Purchase          | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Employee Strength         | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Is a Classified Customer  | checkbox       | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | TAN Number                | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Account Holder Type       | drop down      | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Promoter Contribution     | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |



    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Field                     | Field_Type     | ApplicationStage   | ProductType   | Mode   | ApplicantType   | Category | key |
      | Host ID                   | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Institution Name          | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Institution Description   | textarea       | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Incorporation Date        | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Registration Type         | drop down      | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Commencement Date         | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | No. of Controlling Person | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Registration No.          | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Registration Expiry Date  | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Constitution              | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Group Name                | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Sub Group Name            | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Business Category         | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Industry Classification   | drop down      | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Industry                  | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Sub-Industry              | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Nature of Business        | drop down      | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Total Years Of Operation  | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Website                   | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Net Worth                 | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Turnover                  | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Monthly Sale              | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Monthly Purchase          | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Employee Strength         | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Is a Classified Customer  | checkbox       | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | TAN Number                | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Account Holder Type       | drop down      | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |
      | Promoter Contribution     | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> |          |     |


	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Field                     | Field_Type     | ApplicationStage   | ProductType   | Mode   | ApplicantType   | Category   | key |
      | Host ID                   | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Institution Name          | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Institution Description   | textarea       | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Incorporation Date        | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Registration Type         | drop down      | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Commencement Date         | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | No. of Controlling Person | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Registration No.          | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Registration Expiry Date  | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Constitution              | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Group Name                | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Sub Group Name            | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Business Category         | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Industry Classification   | drop down      | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Industry                  | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Sub-Industry              | list of values | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Nature of Business        | drop down      | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Total Years Of Operation  | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Website                   | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Net Worth                 | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Turnover                  | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Monthly Sale              | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Monthly Purchase          | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Employee Strength         | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Is a Classified Customer  | checkbox       | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | TAN Number                | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Account Holder Type       | drop down      | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
      | Promoter Contribution     | input          | <ApplicationStage> | <ProductType> | <Mode> | <ApplicantType> | <Category> |     |
