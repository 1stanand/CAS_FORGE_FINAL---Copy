@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-
@TechReviewedBy-
@AppInfoAdoption

Feature:View personal information

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #FeatureID-ACAUTOCAS-149
  Scenario Outline: ACAUTOCAS-13417: Verify <Field> filed of personal information at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    And user fills "<Field>" fields in personal information
    And user save personal information details
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    When user navigates to personal information page of "<ApplicationStage>"
    Then "<Field>" should be matched with filled data in personal information

    @Release @Part-1
    @Conventional
    @ImplementedBy-rishabh.sachan
 # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum |
      | Applicant's Gender         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Salutation                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | First Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Middle Name                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Last Name                  | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Alias Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Full Name                  | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Mother's Maiden Name       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Maiden Salutation          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Maiden First Name          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Maiden Middle Name         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Maiden Last Name           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Date Of Birth              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Place of Birth             | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Marital Status             | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Constitution               | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Nationality                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Resident Type              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Category                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Segment                    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Religion                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Group Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Person with Disability     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Applicant Profile          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | TAN Number                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Promoter Contribution      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Relationship With Employee | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Employee ID                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Employee Name              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ProductType:["IAF","IHF"]}
    @Release
@Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | Field                      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum |
      | Applicant's Gender         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Salutation                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | First Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Middle Name                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Last Name                  | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Alias Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Full Name                  | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Mother's Maiden Name       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Maiden Salutation          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Maiden First Name          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Maiden Middle Name         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Maiden Last Name           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Date Of Birth              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Place of Birth             | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Marital Status             | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Constitution               | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Nationality                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Resident Type              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Category                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Segment                    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Religion                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Group Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Person with Disability     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Applicant Profile          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | TAN Number                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Promoter Contribution      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Relationship With Employee | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Employee ID                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Employee Name              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ProductType:["IPF"]}
    #${Category:["bonds"]}
    @Release
@Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | Field                      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum |
      | Applicant's Gender         | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Salutation                 | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | First Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Middle Name                | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Last Name                  | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Alias Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Full Name                  | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Mother's Maiden Name       | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Maiden Salutation          | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Maiden First Name          | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Maiden Middle Name         | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Maiden Last Name           | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Date Of Birth              | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Place of Birth             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Marital Status             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Constitution               | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Nationality                | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Resident Type              | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Category                   | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Segment                    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Religion                   | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Group Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Person with Disability     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Applicant Profile          | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | TAN Number                 | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Promoter Contribution      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Relationship With Employee | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Employee ID                | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Employee Name              | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |

    @Deferred
 # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum |
      | Applicant's Gender         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Salutation                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | First Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Middle Name                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Last Name                  | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Alias Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Full Name                  | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Mother's Maiden Name       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Maiden Salutation          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Maiden First Name          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Maiden Middle Name         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Maiden Last Name           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Date Of Birth              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Place of Birth             | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Marital Status             | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Constitution               | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Nationality                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Resident Type              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Category                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Segment                    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Religion                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Group Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Person with Disability     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Applicant Profile          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | TAN Number                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Promoter Contribution      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Relationship With Employee | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Employee ID                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Employee Name              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |

    #FeatureID-ACAUTOCAS-149
  Scenario Outline: ACAUTOCAS-13418: Verify <DependentFields> field of personal information at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <PersonalInformationWB_home_rowNum>
    And user fills "<Field>" fields in personal information
    And user save personal information details
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    When user navigates to personal information page of "<ApplicationStage>"
    Then "<DependentFields>" should be matched in personal information

    @Release @Part-1
    @Conventional
    @ImplementedBy-rishabh.sachan
 # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Field         | DependentFields | ApplicationStage   | PersonalInformationWB_home_rowNum | ApplicantType   | Category | key |
      | <ProductType> | Date Of Birth | Is Minor        | <ApplicationStage> | 153                               | <ApplicantType> |          |     |
      | <ProductType> | Date Of Birth | Guardian Name   | <ApplicationStage> | 154                               | <ApplicantType> |          |     |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ProductType:["IAF","IHF"]}
    @Release
@Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Field         | DependentFields | ApplicationStage   | PersonalInformationWB_home_rowNum | ApplicantType   | Category | key |
      | <ProductType> | Date Of Birth | Is Minor        | <ApplicationStage> | 153                               | <ApplicantType> |          |     |
      | <ProductType> | Date Of Birth | Guardian Name   | <ApplicationStage> | 154                               | <ApplicantType> |          |     |


     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ProductType:["IPF"]}
   #${Category:["bonds"]}
    @Release
@Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Field         | DependentFields | ApplicationStage   | PersonalInformationWB_home_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | Date Of Birth | Is Minor        | <ApplicationStage> | 153                               | <ApplicantType> | <Category> |     |
      | <ProductType> | Date Of Birth | Guardian Name   | <ApplicationStage> | 154                               | <ApplicantType> | <Category> |     |


        @Deferred
 # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Field         | DependentFields | ApplicationStage   | PersonalInformationWB_home_rowNum | ApplicantType   | Category | key |
      | <ProductType> | Date Of Birth | Is Minor        | <ApplicationStage> | 153                               | <ApplicantType> |          |     |
      | <ProductType> | Date Of Birth | Guardian Name   | <ApplicationStage> | 154                               | <ApplicantType> |          |     |




    #FeatureID-ACAUTOCAS-149
  Scenario Outline: ACAUTOCAS-13419: Verify <Field> field of personal information in expanded mode at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    And user fills "<Field>" fields in personal information
    And user save personal information details
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    When user navigates to personal information page of "<ApplicationStage>"
    And user selects Expanded Mode in applicant information
    Then "<Field>" should be matched with filled data in personal information

    @Release @Part-1
    @Conventional
    @ImplementedBy-rishabh.sachan
  # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum |
      | Applicant's Gender         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Salutation                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | First Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Middle Name                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Last Name                  | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Alias Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Full Name                  | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Mother's Maiden Name       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Maiden Salutation          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Maiden First Name          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Maiden Middle Name         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Maiden Last Name           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Date Of Birth              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Place of Birth             | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Marital Status             | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Constitution               | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Nationality                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Resident Type              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Category                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Segment                    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Religion                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Group Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Person with Disability     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Applicant Profile          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | TAN Number                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Promoter Contribution      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Relationship With Employee | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Employee ID                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Employee Name              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ProductType:["IAF","IHF"]}
    @Release
@Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | Field                      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum |
      | Applicant's Gender         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Salutation                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | First Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Middle Name                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Last Name                  | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Alias Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Full Name                  | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Mother's Maiden Name       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Maiden Salutation          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Maiden First Name          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Maiden Middle Name         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Maiden Last Name           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Date Of Birth              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Place of Birth             | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Marital Status             | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Constitution               | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Nationality                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Resident Type              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Category                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Segment                    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Religion                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Group Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Person with Disability     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Applicant Profile          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | TAN Number                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Promoter Contribution      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Relationship With Employee | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Employee ID                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |
      | Employee Name              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 170                         |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ProductType:["IPF"]}
   #${Category:["bonds"]}
    @Release
@Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | Field                      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum |
      | Applicant's Gender         | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Salutation                 | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | First Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Middle Name                | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Last Name                  | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Alias Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Full Name                  | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Mother's Maiden Name       | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Maiden Salutation          | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Maiden First Name          | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Maiden Middle Name         | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Maiden Last Name           | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Date Of Birth              | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Place of Birth             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Marital Status             | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Constitution               | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Nationality                | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Resident Type              | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Category                   | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Segment                    | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Religion                   | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Group Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Person with Disability     | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Applicant Profile          | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | TAN Number                 | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Promoter Contribution      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Relationship With Employee | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Employee ID                | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |
      | Employee Name              | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 170                         |

    @Deferred
 # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                      | ProductType   | ApplicationStage   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum |
      | Applicant's Gender         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Salutation                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | First Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Middle Name                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Last Name                  | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Alias Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Full Name                  | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Mother's Maiden Name       | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Maiden Salutation          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Maiden First Name          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Maiden Middle Name         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Maiden Last Name           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Date Of Birth              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Place of Birth             | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Marital Status             | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Constitution               | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Nationality                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Resident Type              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Category                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Segment                    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Religion                   | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Group Name                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Person with Disability     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Applicant Profile          | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | TAN Number                 | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Promoter Contribution      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Relationship With Employee | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Employee ID                | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |
      | Employee Name              | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 152                         |


    #FeatureID-ACAUTOCAS-149
  Scenario Outline: ACAUTOCAS-13420: Verify <DependentFields> field of personal information in expanded mode  at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <PersonalInformationWB_home_rowNum>
    And user fills "<Field>" fields in personal information
    And user save personal information details
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    When user navigates to personal information page of "<ApplicationStage>"
    And user selects Expanded Mode in applicant information
    Then "<DependentFields>" should be matched in personal information

    @Release @Part-1
    @Conventional
    @ImplementedBy-rishabh.sachan
 # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Field         | DependentFields | ApplicationStage   | PersonalInformationWB_home_rowNum | ApplicantType   | Category | key |
      | <ProductType> | Date Of Birth | Is Minor        | <ApplicationStage> | 153                               | <ApplicantType> |          |     |
      | <ProductType> | Date Of Birth | Guardian Name   | <ApplicationStage> | 154                               | <ApplicantType> |          |     |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ProductType:["IAF","IHF"]}
    @Release
@Part-1
    @Islamic
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Field         | DependentFields | ApplicationStage   | PersonalInformationWB_home_rowNum | ApplicantType   | Category | key |
      | <ProductType> | Date Of Birth | Is Minor        | <ApplicationStage> | 153                               | <ApplicantType> |          |     |
      | <ProductType> | Date Of Birth | Guardian Name   | <ApplicationStage> | 154                               | <ApplicantType> |          |     |

      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IAF","IHF"]}
    #${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Field         | DependentFields | ApplicationStage   | PersonalInformationWB_home_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | Date Of Birth | Is Minor        | <ApplicationStage> | 153                               | <ApplicantType> | <Category> |     |
      | <ProductType> | Date Of Birth | Guardian Name   | <ApplicationStage> | 154                               | <ApplicantType> | <Category> |     |


     @Deferred
 # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Field         | DependentFields | ApplicationStage   | PersonalInformationWB_home_rowNum | ApplicantType   | Category | key |
      | <ProductType> | Date Of Birth | Is Minor        | <ApplicationStage> | 153                               | <ApplicantType> |          |     |
      | <ProductType> | Date Of Birth | Guardian Name   | <ApplicationStage> | 154                               | <ApplicantType> |          |     |
