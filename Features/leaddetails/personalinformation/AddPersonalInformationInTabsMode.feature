@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
#${ApplicantType:["indiv"]}
Feature:Add personal information in tabs mode

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-148
  Scenario Outline: ACAUTOCAS-13397: Required field <Mandatory_Field> in tabs mode of personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    When user select Required tab in Personal Information
    Then "<Mandatory_Field>" field should be visible in personal information
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Mandatory_Field    | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | Applicant's Gender | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | First Name         | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Last Name          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Date Of Birth      | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Marital Status     | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Constitution       | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Nationality        | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Resident Type      | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Category           | <ApplicationStage> | <ApplicantType> |          |     |

      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Mandatory_Field    | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | Applicant's Gender | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | First Name         | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Last Name          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Date Of Birth      | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Marital Status     | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Constitution       | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Nationality        | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Resident Type      | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Category           | <ApplicationStage> | <ApplicantType> |          |     |


      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Mandatory_Field    | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | Applicant's Gender | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | First Name         | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Last Name          | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Date Of Birth      | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Marital Status     | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Constitution       | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Nationality        | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Resident Type      | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Category           | <ApplicationStage> | <ApplicantType> | <Category> |     |

      # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | Mandatory_Field    | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | Applicant's Gender | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | First Name         | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Last Name          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Date Of Birth      | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Marital Status     | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Constitution       | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Nationality        | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Resident Type      | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Category           | <ApplicationStage> | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-148
  Scenario Outline: ACAUTOCAS-13398: All fields <All_Fields> in tabs mode of personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    When user select All Fields in Personal Information
    Then "<All_Fields>" field should be visible in personal information
    @Conventional
    @Release @Part-1
    @ImplementedBy-richa.singh
#${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | All_Fields                 | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | Applicant's Gender         | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | First Name                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Last Name                  | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Date Of Birth              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Marital Status             | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Constitution               | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Nationality                | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Resident Type              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Category                   | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Host ID                    | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Middle Name                | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Alias Name                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Mother's Maiden Name       | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Guardian Name              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Maiden Salutation          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Maiden First Name          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Maiden Middle Name         | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Maiden Last Name           | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Age(years)                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Place of Birth             | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Segment                    | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Religion                   | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Group Name                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Sub Group Name             | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Person with Disability     | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Applicant Profile          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | TAN Number                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Promoter Contribution      | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Relationship With Employee | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Salutation                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Date of Becoming NRI       | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | All_Fields                 | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | Applicant's Gender         | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | First Name                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Last Name                  | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Date Of Birth              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Marital Status             | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Constitution               | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Nationality                | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Resident Type              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Category                   | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Host ID                    | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Middle Name                | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Alias Name                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Mother's Maiden Name       | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Guardian Name              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Maiden Salutation          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Maiden First Name          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Maiden Middle Name         | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Maiden Last Name           | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Age(years)                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Place of Birth             | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Segment                    | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Religion                   | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Group Name                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Sub Group Name             | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Person with Disability     | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Applicant Profile          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | TAN Number                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Promoter Contribution      | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Relationship With Employee | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Salutation                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Date of Becoming NRI       | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | All_Fields                 | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | Applicant's Gender         | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | First Name                 | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Last Name                  | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Date Of Birth              | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Marital Status             | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Constitution               | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Nationality                | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Resident Type              | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Category                   | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Host ID                    | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Middle Name                | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Alias Name                 | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Mother's Maiden Name       | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Guardian Name              | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Maiden Salutation          | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Maiden First Name          | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Maiden Middle Name         | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Maiden Last Name           | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Age(years)                 | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Place of Birth             | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Segment                    | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Religion                   | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Group Name                 | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Sub Group Name             | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Person with Disability     | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Applicant Profile          | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | TAN Number                 | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Promoter Contribution      | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Relationship With Employee | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Salutation                 | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Date of Becoming NRI       | <ApplicationStage> | <ApplicantType> | <Category> |     |




     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | All_Fields                 | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | Applicant's Gender         | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | First Name                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Last Name                  | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Date Of Birth              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Marital Status             | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Constitution               | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Nationality                | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Resident Type              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Category                   | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Host ID                    | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Middle Name                | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Alias Name                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Mother's Maiden Name       | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Guardian Name              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Maiden Salutation          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Maiden First Name          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Maiden Middle Name         | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Maiden Last Name           | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Age(years)                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Place of Birth             | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Segment                    | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Religion                   | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Group Name                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Sub Group Name             | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Person with Disability     | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Applicant Profile          | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | TAN Number                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Promoter Contribution      | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Relationship With Employee | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Salutation                 | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Date of Becoming NRI       | <ApplicationStage> | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-148
  Scenario Outline: ACAUTOCAS-13399: Field type validation of <Field> field in tabs mode of personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    Then field type of "<Field>" field should "<Field_Type>" field in personal information
    @Conventional
    @Release @Part-1
    @ImplementedBy-richa.singh
  #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                      | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Applicant's Gender         | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Salutation                 | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | First Name                 | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Middle Name                | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Last Name                  | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Alias Name                 | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Full Name                  | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Mother's Maiden Name       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Maiden Salutation          | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Maiden First Name          | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Maiden Middle Name         | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Maiden Last Name           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Date Of Birth              | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Place of Birth             | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Marital Status             | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Constitution               | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nationality                | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Resident Type              | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Category                   | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Segment                    | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Religion                   | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Group Name                 | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub Group Name             | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Person with Disability     | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Applicant Profile          | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | TAN Number                 | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Promoter Contribution      | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Relationship With Employee | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


       # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Field                      | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Applicant's Gender         | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Salutation                 | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | First Name                 | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Middle Name                | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Last Name                  | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Alias Name                 | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Full Name                  | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Mother's Maiden Name       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Maiden Salutation          | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Maiden First Name          | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Maiden Middle Name         | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Maiden Last Name           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Date Of Birth              | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Place of Birth             | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Marital Status             | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Constitution               | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nationality                | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Resident Type              | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Category                   | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Segment                    | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Religion                   | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Group Name                 | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub Group Name             | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Person with Disability     | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Applicant Profile          | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | TAN Number                 | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Promoter Contribution      | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Relationship With Employee | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Field                      | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Applicant's Gender         | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Salutation                 | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | First Name                 | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Middle Name                | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Last Name                  | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Alias Name                 | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Full Name                  | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Mother's Maiden Name       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Maiden Salutation          | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Maiden First Name          | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Maiden Middle Name         | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Maiden Last Name           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Date Of Birth              | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Place of Birth             | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Marital Status             | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Constitution               | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nationality                | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Resident Type              | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Category                   | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Segment                    | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Religion                   | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Group Name                 | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Sub Group Name             | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Person with Disability     | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Applicant Profile          | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | TAN Number                 | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Promoter Contribution      | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Relationship With Employee | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |





    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | Field                      | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Applicant's Gender         | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Salutation                 | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | First Name                 | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Middle Name                | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Last Name                  | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Alias Name                 | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Full Name                  | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Mother's Maiden Name       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Maiden Salutation          | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Maiden First Name          | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Maiden Middle Name         | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Maiden Last Name           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Date Of Birth              | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Place of Birth             | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Marital Status             | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Constitution               | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nationality                | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Resident Type              | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Category                   | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Segment                    | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Religion                   | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Group Name                 | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub Group Name             | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Person with Disability     | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Applicant Profile          | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | TAN Number                 | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Promoter Contribution      | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Relationship With Employee | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-148
  Scenario Outline: ACAUTOCAS-13400: Matching Required field <Field> in tabs mode All Fields in tabs mode of personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user select Required in Personal Information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    When user fills "mandatory" field "<Mandatory_Field>" in personal information
    And user select All Fields in Personal Information
    Then "<Mandatory_Field>" field should be already filled with same data as filled in required fields
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
  #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Mandatory_Field    | ApplicationStage   | ApplicantType   | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | Category | key |
      | <ProductType> | Applicant's Gender | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |
      | <ProductType> | First Name         | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |
      | <ProductType> | Last Name          | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |
      | <ProductType> | Date Of Birth      | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |
      | <ProductType> | Marital Status     | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |
      | <ProductType> | Constitution       | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |
      | <ProductType> | Nationality        | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |
      | <ProductType> | Resident Type      | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |
      | <ProductType> | Category           | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |


  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Mandatory_Field    | ApplicationStage   | ApplicantType   | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | Category | key |
      | <ProductType> | Applicant's Gender | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         |          |     |
      | <ProductType> | First Name         | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         |          |     |
      | <ProductType> | Last Name          | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         |          |     |
      | <ProductType> | Date Of Birth      | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         |          |     |
      | <ProductType> | Marital Status     | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         |          |     |
      | <ProductType> | Constitution       | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         |          |     |
      | <ProductType> | Nationality        | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         |          |     |
      | <ProductType> | Resident Type      | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         |          |     |
      | <ProductType> | Category           | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         |          |     |

   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Mandatory_Field    | ApplicationStage   | ApplicantType   | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | Category   | key |
      | <ProductType> | Applicant's Gender | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         | <Category> |     |
      | <ProductType> | First Name         | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         | <Category> |     |
      | <ProductType> | Last Name          | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         | <Category> |     |
      | <ProductType> | Date Of Birth      | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         | <Category> |     |
      | <ProductType> | Marital Status     | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         | <Category> |     |
      | <ProductType> | Constitution       | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         | <Category> |     |
      | <ProductType> | Nationality        | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         | <Category> |     |
      | <ProductType> | Resident Type      | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         | <Category> |     |
      | <ProductType> | Category           | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 169                         | <Category> |     |


    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | Mandatory_Field    | ApplicationStage   | ApplicantType   | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | Category | key |
      | <ProductType> | Applicant's Gender | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |
      | <ProductType> | First Name         | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |
      | <ProductType> | Last Name          | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |
      | <ProductType> | Date Of Birth      | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |
      | <ProductType> | Marital Status     | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |
      | <ProductType> | Constitution       | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |
      | <ProductType> | Nationality        | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |
      | <ProductType> | Resident Type      | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |
      | <ProductType> | Category           | <ApplicationStage> | <ApplicantType> | personal_information.xlsx | home                 | 23                          |          |     |

  #FeatureID-ACAUTOCAS-148
  Scenario Outline: ACAUTOCAS-13401: <Field_Name> field validation with <Validity> <InputType> in tabs mode of personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    And user checks for "<Validity>" "<Field_Name>" with "<InputType>" in personal information
    Then "<Field_Name>" in personal information "<Throws_notThrows>" error
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
  # ${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Field_Name            | Validity | InputType                                         | Throws_notThrows | ApplicationStage   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum |
      | <ProductType> | First Name            | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 40                          |
      | <ProductType> | First Name            | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 41                          |
      | <ProductType> | First Name            | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 42                          |
      | <ProductType> | First Name            | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 43                          |
      | <ProductType> | First Name            | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 44                          |
      | <ProductType> | First Name            | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 45                          |
      | <ProductType> | First Name            | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 46                          |
      | <ProductType> | First Name            | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 47                          |
      | <ProductType> | First Name            | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 48                          |
      | <ProductType> | First Name            | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 49                          |
      | <ProductType> | First Name            | valid    | max length 100 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 50                          |
      | <ProductType> | Middle Name           | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 51                          |
      | <ProductType> | Middle Name           | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 52                          |
      | <ProductType> | Middle Name           | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 53                          |
      | <ProductType> | Middle Name           | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 54                          |
      | <ProductType> | Middle Name           | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 55                          |
      | <ProductType> | Middle Name           | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 56                          |
      | <ProductType> | Middle Name           | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 57                          |
      | <ProductType> | Middle Name           | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 58                          |
      | <ProductType> | Middle Name           | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 59                          |
      | <ProductType> | Middle Name           | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 60                          |
      | <ProductType> | Middle Name           | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 61                          |
      | <ProductType> | Last Name             | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 62                          |
      | <ProductType> | Last Name             | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 63                          |
      | <ProductType> | Last Name             | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 64                          |
      | <ProductType> | Last Name             | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 65                          |
      | <ProductType> | Last Name             | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 66                          |
      | <ProductType> | Last Name             | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 67                          |
      | <ProductType> | Last Name             | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 68                          |
      | <ProductType> | Last Name             | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 69                          |
      | <ProductType> | Last Name             | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 70                          |
      | <ProductType> | Last Name             | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 71                          |
      | <ProductType> | Last Name             | valid    | max length 50 characters                          | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 72                          |
      | <ProductType> | Mother's Maiden Name  | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 73                          |
      | <ProductType> | Mother's Maiden Name  | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 74                          |
      | <ProductType> | Mother's Maiden Name  | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 75                          |
      | <ProductType> | Mother's Maiden Name  | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 76                          |
      | <ProductType> | Mother's Maiden Name  | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 77                          |
      | <ProductType> | Mother's Maiden Name  | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 78                          |
      | <ProductType> | Mother's Maiden Name  | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 79                          |
      | <ProductType> | Mother's Maiden Name  | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 80                          |
      | <ProductType> | Mother's Maiden Name  | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 81                          |
      | <ProductType> | Mother's Maiden Name  | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 82                          |
      | <ProductType> | Mother's Maiden Name  | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 83                          |
      | <ProductType> | Maiden First Name     | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 84                          |
      | <ProductType> | Maiden First Name     | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 85                          |
      | <ProductType> | Maiden First Name     | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 86                          |
      | <ProductType> | Maiden First Name     | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 87                          |
      | <ProductType> | Maiden First Name     | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 88                          |
      | <ProductType> | Maiden First Name     | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 89                          |
      | <ProductType> | Maiden First Name     | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 90                          |
      | <ProductType> | Maiden First Name     | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 91                          |
      | <ProductType> | Maiden First Name     | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 92                          |
      | <ProductType> | Maiden First Name     | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 93                          |
      | <ProductType> | Maiden First Name     | valid    | max length 100 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 94                          |
      | <ProductType> | Maiden Middle Name    | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 95                          |
      | <ProductType> | Maiden Middle Name    | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 96                          |
      | <ProductType> | Maiden Middle Name    | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 97                          |
      | <ProductType> | Maiden Middle Name    | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 98                          |
      | <ProductType> | Maiden Middle Name    | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 99                          |
      | <ProductType> | Maiden Middle Name    | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 100                         |
      | <ProductType> | Maiden Middle Name    | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 101                         |
      | <ProductType> | Maiden Middle Name    | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 102                         |
      | <ProductType> | Maiden Middle Name    | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 103                         |
      | <ProductType> | Maiden Middle Name    | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 104                         |
      | <ProductType> | Maiden Middle Name    | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 105                         |
      | <ProductType> | Maiden Last Name      | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 106                         |
      | <ProductType> | Maiden Last Name      | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 107                         |
      | <ProductType> | Maiden Last Name      | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 108                         |
      | <ProductType> | Maiden Last Name      | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 109                         |
      | <ProductType> | Maiden Last Name      | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 110                         |
      | <ProductType> | Maiden Last Name      | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 111                         |
      | <ProductType> | Maiden Last Name      | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 112                         |
      | <ProductType> | Maiden Last Name      | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 113                         |
      | <ProductType> | Maiden Last Name      | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 114                         |
      | <ProductType> | Maiden Last Name      | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 115                         |
      | <ProductType> | Maiden Last Name      | valid    | max length 50 characters                          | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 116                         |
      | <ProductType> | Date Of Birth         | valid    | correct date format                               | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 117                         |
      | <ProductType> | Date Of Birth         | invalid  | incorrect date format                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 118                         |
      | <ProductType> | Date Of Birth         | invalid  | greater than current date                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 119                         |
      | <ProductType> | Date Of Birth         | invalid  | less than 1942                                    | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 120                         |
      | <ProductType> | Place of Birth        | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 121                         |
      | <ProductType> | Place of Birth        | invalid  | alphanumeric                                      | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 122                         |
      | <ProductType> | Place of Birth        | invalid  | number                                            | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 123                         |
      | <ProductType> | Place of Birth        | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 124                         |
      | <ProductType> | Place of Birth        | invalid  | character with dot                                | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 125                         |
      | <ProductType> | Place of Birth        | invalid  | character with apostrophe                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 126                         |
      | <ProductType> | Place of Birth        | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 127                         |
      | <ProductType> | Place of Birth        | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 128                         |
      | <ProductType> | Place of Birth        | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 129                         |
      | <ProductType> | Place of Birth        | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 130                         |
      | <ProductType> | Place of Birth        | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 131                         |
      | <ProductType> | Constitution          | valid    | mapped                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 132                         |
      | <ProductType> | Constitution          | invalid  | unmapped                                          | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 133                         |
      | <ProductType> | Category              | valid    | mapped                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 134                         |
      | <ProductType> | Category              | invalid  | unmapped                                          | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 135                         |
      | <ProductType> | Group Name            | valid    | mapped                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 136                         |
      | <ProductType> | Group Name            | invalid  | unmapped                                          | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 137                         |
      | <ProductType> | Sub Group Name        | valid    | mapped                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 138                         |
      | <ProductType> | Sub Group Name        | invalid  | unmapped                                          | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 139                         |
      | <ProductType> | TAN Number            | valid    | valid format(AAAA12345A)                          | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 140                         |
      | <ProductType> | TAN Number            | invalid  | character                                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 141                         |
      | <ProductType> | TAN Number            | invalid  | alphanumeric                                      | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 142                         |
      | <ProductType> | TAN Number            | invalid  | number                                            | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 143                         |
      | <ProductType> | TAN Number            | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 144                         |
      | <ProductType> | Promoter Contribution | valid    | value between 0 to 100                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 145                         |
      | <ProductType> | Promoter Contribution | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 146                         |
      | <ProductType> | Promoter Contribution | invalid  | negative values                                   | throw            | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 147                         |
      | <ProductType> | Promoter Contribution | invalid  | value more  than 100                              | throw            | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 148                         |
      | <ProductType> | Promoter Contribution | invalid  | value between 0 to 100 more than 2 decimal places | throw            | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 149                         |


  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Field_Name            | Validity | InputType                                         | Throws_notThrows | ApplicationStage   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum |
      | <ProductType> | First Name            | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 40                          |
      | <ProductType> | First Name            | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 41                          |
      | <ProductType> | First Name            | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 42                          |
      | <ProductType> | First Name            | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 43                          |
      | <ProductType> | First Name            | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 44                          |
      | <ProductType> | First Name            | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 45                          |
      | <ProductType> | First Name            | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 46                          |
      | <ProductType> | First Name            | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 47                          |
      | <ProductType> | First Name            | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 48                          |
      | <ProductType> | First Name            | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 49                          |
      | <ProductType> | First Name            | valid    | max length 100 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 50                          |
      | <ProductType> | Middle Name           | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 51                          |
      | <ProductType> | Middle Name           | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 52                          |
      | <ProductType> | Middle Name           | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 53                          |
      | <ProductType> | Middle Name           | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 54                          |
      | <ProductType> | Middle Name           | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 55                          |
      | <ProductType> | Middle Name           | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 56                          |
      | <ProductType> | Middle Name           | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 57                          |
      | <ProductType> | Middle Name           | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 58                          |
      | <ProductType> | Middle Name           | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 59                          |
      | <ProductType> | Middle Name           | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 60                          |
      | <ProductType> | Middle Name           | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 61                          |
      | <ProductType> | Last Name             | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 62                          |
      | <ProductType> | Last Name             | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 63                          |
      | <ProductType> | Last Name             | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 64                          |
      | <ProductType> | Last Name             | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 65                          |
      | <ProductType> | Last Name             | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 66                          |
      | <ProductType> | Last Name             | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 67                          |
      | <ProductType> | Last Name             | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 68                          |
      | <ProductType> | Last Name             | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 69                          |
      | <ProductType> | Last Name             | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 70                          |
      | <ProductType> | Last Name             | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 71                          |
      | <ProductType> | Last Name             | valid    | max length 50 characters                          | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 72                          |
      | <ProductType> | Mother's Maiden Name  | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 73                          |
      | <ProductType> | Mother's Maiden Name  | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 74                          |
      | <ProductType> | Mother's Maiden Name  | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 75                          |
      | <ProductType> | Mother's Maiden Name  | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 76                          |
      | <ProductType> | Mother's Maiden Name  | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 77                          |
      | <ProductType> | Mother's Maiden Name  | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 78                          |
      | <ProductType> | Mother's Maiden Name  | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 79                          |
      | <ProductType> | Mother's Maiden Name  | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 80                          |
      | <ProductType> | Mother's Maiden Name  | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 81                          |
      | <ProductType> | Mother's Maiden Name  | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 82                          |
      | <ProductType> | Mother's Maiden Name  | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 83                          |
      | <ProductType> | Maiden First Name     | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 84                          |
      | <ProductType> | Maiden First Name     | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 85                          |
      | <ProductType> | Maiden First Name     | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 86                          |
      | <ProductType> | Maiden First Name     | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 87                          |
      | <ProductType> | Maiden First Name     | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 88                          |
      | <ProductType> | Maiden First Name     | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 89                          |
      | <ProductType> | Maiden First Name     | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 90                          |
      | <ProductType> | Maiden First Name     | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 91                          |
      | <ProductType> | Maiden First Name     | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 92                          |
      | <ProductType> | Maiden First Name     | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 93                          |
      | <ProductType> | Maiden First Name     | valid    | max length 100 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 94                          |
      | <ProductType> | Maiden Middle Name    | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 95                          |
      | <ProductType> | Maiden Middle Name    | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 96                          |
      | <ProductType> | Maiden Middle Name    | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 97                          |
      | <ProductType> | Maiden Middle Name    | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 98                          |
      | <ProductType> | Maiden Middle Name    | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 99                          |
      | <ProductType> | Maiden Middle Name    | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 100                         |
      | <ProductType> | Maiden Middle Name    | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 101                         |
      | <ProductType> | Maiden Middle Name    | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 102                         |
      | <ProductType> | Maiden Middle Name    | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 103                         |
      | <ProductType> | Maiden Middle Name    | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 104                         |
      | <ProductType> | Maiden Middle Name    | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 105                         |
      | <ProductType> | Maiden Last Name      | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 106                         |
      | <ProductType> | Maiden Last Name      | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 107                         |
      | <ProductType> | Maiden Last Name      | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 108                         |
      | <ProductType> | Maiden Last Name      | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 109                         |
      | <ProductType> | Maiden Last Name      | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 110                         |
      | <ProductType> | Maiden Last Name      | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 111                         |
      | <ProductType> | Maiden Last Name      | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 112                         |
      | <ProductType> | Maiden Last Name      | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 113                         |
      | <ProductType> | Maiden Last Name      | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 114                         |
      | <ProductType> | Maiden Last Name      | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 115                         |
      | <ProductType> | Maiden Last Name      | valid    | max length 50 characters                          | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 116                         |
      | <ProductType> | Date Of Birth         | valid    | correct date format                               | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 117                         |
      | <ProductType> | Date Of Birth         | invalid  | incorrect date format                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 118                         |
      | <ProductType> | Date Of Birth         | invalid  | greater than current date                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 119                         |
      | <ProductType> | Date Of Birth         | invalid  | less than 1942                                    | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 120                         |
      | <ProductType> | Place of Birth        | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 121                         |
      | <ProductType> | Place of Birth        | invalid  | alphanumeric                                      | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 122                         |
      | <ProductType> | Place of Birth        | invalid  | number                                            | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 123                         |
      | <ProductType> | Place of Birth        | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 124                         |
      | <ProductType> | Place of Birth        | invalid  | character with dot                                | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 125                         |
      | <ProductType> | Place of Birth        | invalid  | character with apostrophe                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 126                         |
      | <ProductType> | Place of Birth        | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 127                         |
      | <ProductType> | Place of Birth        | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 128                         |
      | <ProductType> | Place of Birth        | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 129                         |
      | <ProductType> | Place of Birth        | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 130                         |
      | <ProductType> | Place of Birth        | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 131                         |
      | <ProductType> | Constitution          | valid    | mapped                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 132                         |
      | <ProductType> | Constitution          | invalid  | unmapped                                          | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 133                         |
      | <ProductType> | Category              | valid    | mapped                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 134                         |
      | <ProductType> | Category              | invalid  | unmapped                                          | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 135                         |
      | <ProductType> | Group Name            | valid    | mapped                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 136                         |
      | <ProductType> | Group Name            | invalid  | unmapped                                          | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 137                         |
      | <ProductType> | Sub Group Name        | valid    | mapped                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 138                         |
      | <ProductType> | Sub Group Name        | invalid  | unmapped                                          | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 139                         |
      | <ProductType> | TAN Number            | valid    | valid format(AAAA12345A)                          | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 140                         |
      | <ProductType> | TAN Number            | invalid  | character                                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 141                         |
      | <ProductType> | TAN Number            | invalid  | alphanumeric                                      | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 142                         |
      | <ProductType> | TAN Number            | invalid  | number                                            | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 143                         |
      | <ProductType> | TAN Number            | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 144                         |
      | <ProductType> | Promoter Contribution | valid    | value between 0 to 100                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 145                         |
      | <ProductType> | Promoter Contribution | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 146                         |
      | <ProductType> | Promoter Contribution | invalid  | negative values                                   | throw            | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 147                         |
      | <ProductType> | Promoter Contribution | invalid  | value more  than 100                              | throw            | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 148                         |
      | <ProductType> | Promoter Contribution | invalid  | value between 0 to 100 more than 2 decimal places | throw            | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 149                         |



  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Field_Name            | Validity | InputType                                         | Throws_notThrows | ApplicationStage   | ApplicantType   | Category   | key | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum |
      | <ProductType> | First Name            | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 40                          |
      | <ProductType> | First Name            | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 41                          |
      | <ProductType> | First Name            | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 42                          |
      | <ProductType> | First Name            | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 43                          |
      | <ProductType> | First Name            | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 44                          |
      | <ProductType> | First Name            | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 45                          |
      | <ProductType> | First Name            | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 46                          |
      | <ProductType> | First Name            | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 47                          |
      | <ProductType> | First Name            | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 48                          |
      | <ProductType> | First Name            | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 49                          |
      | <ProductType> | First Name            | valid    | max length 100 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 50                          |
      | <ProductType> | Middle Name           | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 51                          |
      | <ProductType> | Middle Name           | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 52                          |
      | <ProductType> | Middle Name           | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 53                          |
      | <ProductType> | Middle Name           | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 54                          |
      | <ProductType> | Middle Name           | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 55                          |
      | <ProductType> | Middle Name           | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 56                          |
      | <ProductType> | Middle Name           | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 57                          |
      | <ProductType> | Middle Name           | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 58                          |
      | <ProductType> | Middle Name           | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 59                          |
      | <ProductType> | Middle Name           | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 60                          |
      | <ProductType> | Middle Name           | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 61                          |
      | <ProductType> | Last Name             | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 62                          |
      | <ProductType> | Last Name             | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 63                          |
      | <ProductType> | Last Name             | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 64                          |
      | <ProductType> | Last Name             | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 65                          |
      | <ProductType> | Last Name             | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 66                          |
      | <ProductType> | Last Name             | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 67                          |
      | <ProductType> | Last Name             | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 68                          |
      | <ProductType> | Last Name             | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 69                          |
      | <ProductType> | Last Name             | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 70                          |
      | <ProductType> | Last Name             | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 71                          |
      | <ProductType> | Last Name             | valid    | max length 50 characters                          | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 72                          |
      | <ProductType> | Mother's Maiden Name  | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 73                          |
      | <ProductType> | Mother's Maiden Name  | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 74                          |
      | <ProductType> | Mother's Maiden Name  | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 75                          |
      | <ProductType> | Mother's Maiden Name  | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 76                          |
      | <ProductType> | Mother's Maiden Name  | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 77                          |
      | <ProductType> | Mother's Maiden Name  | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 78                          |
      | <ProductType> | Mother's Maiden Name  | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 79                          |
      | <ProductType> | Mother's Maiden Name  | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 80                          |
      | <ProductType> | Mother's Maiden Name  | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 81                          |
      | <ProductType> | Mother's Maiden Name  | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 82                          |
      | <ProductType> | Mother's Maiden Name  | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 83                          |
      | <ProductType> | Maiden First Name     | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 84                          |
      | <ProductType> | Maiden First Name     | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 85                          |
      | <ProductType> | Maiden First Name     | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 86                          |
      | <ProductType> | Maiden First Name     | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 87                          |
      | <ProductType> | Maiden First Name     | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 88                          |
      | <ProductType> | Maiden First Name     | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 89                          |
      | <ProductType> | Maiden First Name     | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 90                          |
      | <ProductType> | Maiden First Name     | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 91                          |
      | <ProductType> | Maiden First Name     | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 92                          |
      | <ProductType> | Maiden First Name     | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 93                          |
      | <ProductType> | Maiden First Name     | valid    | max length 100 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 94                          |
      | <ProductType> | Maiden Middle Name    | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 95                          |
      | <ProductType> | Maiden Middle Name    | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 96                          |
      | <ProductType> | Maiden Middle Name    | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 97                          |
      | <ProductType> | Maiden Middle Name    | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 98                          |
      | <ProductType> | Maiden Middle Name    | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 99                          |
      | <ProductType> | Maiden Middle Name    | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 100                         |
      | <ProductType> | Maiden Middle Name    | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 101                         |
      | <ProductType> | Maiden Middle Name    | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 102                         |
      | <ProductType> | Maiden Middle Name    | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 103                         |
      | <ProductType> | Maiden Middle Name    | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 104                         |
      | <ProductType> | Maiden Middle Name    | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 105                         |
      | <ProductType> | Maiden Last Name      | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 106                         |
      | <ProductType> | Maiden Last Name      | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 107                         |
      | <ProductType> | Maiden Last Name      | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 108                         |
      | <ProductType> | Maiden Last Name      | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 109                         |
      | <ProductType> | Maiden Last Name      | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 110                         |
      | <ProductType> | Maiden Last Name      | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 111                         |
      | <ProductType> | Maiden Last Name      | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 112                         |
      | <ProductType> | Maiden Last Name      | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 113                         |
      | <ProductType> | Maiden Last Name      | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 114                         |
      | <ProductType> | Maiden Last Name      | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 115                         |
      | <ProductType> | Maiden Last Name      | valid    | max length 50 characters                          | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 116                         |
      | <ProductType> | Date Of Birth         | valid    | correct date format                               | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 117                         |
      | <ProductType> | Date Of Birth         | invalid  | incorrect date format                             | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 118                         |
      | <ProductType> | Date Of Birth         | invalid  | greater than current date                         | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 119                         |
      | <ProductType> | Date Of Birth         | invalid  | less than 1942                                    | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 120                         |
      | <ProductType> | Place of Birth        | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 121                         |
      | <ProductType> | Place of Birth        | invalid  | alphanumeric                                      | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 122                         |
      | <ProductType> | Place of Birth        | invalid  | number                                            | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 123                         |
      | <ProductType> | Place of Birth        | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 124                         |
      | <ProductType> | Place of Birth        | invalid  | character with dot                                | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 125                         |
      | <ProductType> | Place of Birth        | invalid  | character with apostrophe                         | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 126                         |
      | <ProductType> | Place of Birth        | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 127                         |
      | <ProductType> | Place of Birth        | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 128                         |
      | <ProductType> | Place of Birth        | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 129                         |
      | <ProductType> | Place of Birth        | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 130                         |
      | <ProductType> | Place of Birth        | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 131                         |
      | <ProductType> | Constitution          | valid    | mapped                                            | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 132                         |
      | <ProductType> | Constitution          | invalid  | unmapped                                          | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 133                         |
      | <ProductType> | Category              | valid    | mapped                                            | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 134                         |
      | <ProductType> | Category              | invalid  | unmapped                                          | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 135                         |
      | <ProductType> | Group Name            | valid    | mapped                                            | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 136                         |
      | <ProductType> | Group Name            | invalid  | unmapped                                          | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 137                         |
      | <ProductType> | Sub Group Name        | valid    | mapped                                            | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 138                         |
      | <ProductType> | Sub Group Name        | invalid  | unmapped                                          | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 139                         |
      | <ProductType> | TAN Number            | valid    | valid format(AAAA12345A)                          | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 140                         |
      | <ProductType> | TAN Number            | invalid  | character                                         | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 141                         |
      | <ProductType> | TAN Number            | invalid  | alphanumeric                                      | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 142                         |
      | <ProductType> | TAN Number            | invalid  | number                                            | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 143                         |
      | <ProductType> | TAN Number            | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 144                         |
      | <ProductType> | Promoter Contribution | valid    | value between 0 to 100                            | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 145                         |
      | <ProductType> | Promoter Contribution | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 146                         |
      | <ProductType> | Promoter Contribution | invalid  | negative values                                   | throw            | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 147                         |
      | <ProductType> | Promoter Contribution | invalid  | value more  than 100                              | throw            | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 148                         |
      | <ProductType> | Promoter Contribution | invalid  | value between 0 to 100 more than 2 decimal places | throw            | <ApplicationStage> | <ApplicantType> | <Category> |     | personal_information.xlsx | home                 | 149                         |


    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | Field_Name            | Validity | InputType                                         | Throws_notThrows | ApplicationStage   | ApplicantType   | Category | key | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum |
      | <ProductType> | First Name            | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 40                          |
      | <ProductType> | First Name            | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 41                          |
      | <ProductType> | First Name            | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 42                          |
      | <ProductType> | First Name            | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 43                          |
      | <ProductType> | First Name            | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 44                          |
      | <ProductType> | First Name            | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 45                          |
      | <ProductType> | First Name            | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 46                          |
      | <ProductType> | First Name            | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 47                          |
      | <ProductType> | First Name            | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 48                          |
      | <ProductType> | First Name            | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 49                          |
      | <ProductType> | First Name            | valid    | max length 100 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 50                          |
      | <ProductType> | Middle Name           | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 51                          |
      | <ProductType> | Middle Name           | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 52                          |
      | <ProductType> | Middle Name           | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 53                          |
      | <ProductType> | Middle Name           | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 54                          |
      | <ProductType> | Middle Name           | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 55                          |
      | <ProductType> | Middle Name           | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 56                          |
      | <ProductType> | Middle Name           | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 57                          |
      | <ProductType> | Middle Name           | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 58                          |
      | <ProductType> | Middle Name           | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 59                          |
      | <ProductType> | Middle Name           | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 60                          |
      | <ProductType> | Middle Name           | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 61                          |
      | <ProductType> | Last Name             | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 62                          |
      | <ProductType> | Last Name             | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 63                          |
      | <ProductType> | Last Name             | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 64                          |
      | <ProductType> | Last Name             | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 65                          |
      | <ProductType> | Last Name             | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 66                          |
      | <ProductType> | Last Name             | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 67                          |
      | <ProductType> | Last Name             | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 68                          |
      | <ProductType> | Last Name             | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 69                          |
      | <ProductType> | Last Name             | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 70                          |
      | <ProductType> | Last Name             | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 71                          |
      | <ProductType> | Last Name             | valid    | max length 50 characters                          | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 72                          |
      | <ProductType> | Mother's Maiden Name  | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 73                          |
      | <ProductType> | Mother's Maiden Name  | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 74                          |
      | <ProductType> | Mother's Maiden Name  | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 75                          |
      | <ProductType> | Mother's Maiden Name  | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 76                          |
      | <ProductType> | Mother's Maiden Name  | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 77                          |
      | <ProductType> | Mother's Maiden Name  | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 78                          |
      | <ProductType> | Mother's Maiden Name  | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 79                          |
      | <ProductType> | Mother's Maiden Name  | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 80                          |
      | <ProductType> | Mother's Maiden Name  | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 81                          |
      | <ProductType> | Mother's Maiden Name  | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 82                          |
      | <ProductType> | Mother's Maiden Name  | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 83                          |
      | <ProductType> | Maiden First Name     | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 84                          |
      | <ProductType> | Maiden First Name     | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 85                          |
      | <ProductType> | Maiden First Name     | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 86                          |
      | <ProductType> | Maiden First Name     | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 87                          |
      | <ProductType> | Maiden First Name     | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 88                          |
      | <ProductType> | Maiden First Name     | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 89                          |
      | <ProductType> | Maiden First Name     | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 90                          |
      | <ProductType> | Maiden First Name     | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 91                          |
      | <ProductType> | Maiden First Name     | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 92                          |
      | <ProductType> | Maiden First Name     | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 93                          |
      | <ProductType> | Maiden First Name     | valid    | max length 100 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 94                          |
      | <ProductType> | Maiden Middle Name    | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 95                          |
      | <ProductType> | Maiden Middle Name    | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 96                          |
      | <ProductType> | Maiden Middle Name    | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 97                          |
      | <ProductType> | Maiden Middle Name    | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 98                          |
      | <ProductType> | Maiden Middle Name    | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 99                          |
      | <ProductType> | Maiden Middle Name    | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 100                         |
      | <ProductType> | Maiden Middle Name    | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 101                         |
      | <ProductType> | Maiden Middle Name    | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 102                         |
      | <ProductType> | Maiden Middle Name    | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 103                         |
      | <ProductType> | Maiden Middle Name    | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 104                         |
      | <ProductType> | Maiden Middle Name    | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 105                         |
      | <ProductType> | Maiden Last Name      | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 106                         |
      | <ProductType> | Maiden Last Name      | valid    | alphanumeric                                      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 107                         |
      | <ProductType> | Maiden Last Name      | valid    | number                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 108                         |
      | <ProductType> | Maiden Last Name      | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 109                         |
      | <ProductType> | Maiden Last Name      | valid    | character with dot                                | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 110                         |
      | <ProductType> | Maiden Last Name      | valid    | character with apostrophe                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 111                         |
      | <ProductType> | Maiden Last Name      | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 112                         |
      | <ProductType> | Maiden Last Name      | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 113                         |
      | <ProductType> | Maiden Last Name      | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 114                         |
      | <ProductType> | Maiden Last Name      | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 115                         |
      | <ProductType> | Maiden Last Name      | valid    | max length 50 characters                          | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 116                         |
      | <ProductType> | Date Of Birth         | valid    | correct date format                               | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 117                         |
      | <ProductType> | Date Of Birth         | invalid  | incorrect date format                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 118                         |
      | <ProductType> | Date Of Birth         | invalid  | greater than current date                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 119                         |
      | <ProductType> | Date Of Birth         | invalid  | less than 1942                                    | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 120                         |
      | <ProductType> | Place of Birth        | valid    | character                                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 121                         |
      | <ProductType> | Place of Birth        | invalid  | alphanumeric                                      | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 122                         |
      | <ProductType> | Place of Birth        | invalid  | number                                            | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 123                         |
      | <ProductType> | Place of Birth        | valid    | character with space                              | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 124                         |
      | <ProductType> | Place of Birth        | invalid  | character with dot                                | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 125                         |
      | <ProductType> | Place of Birth        | invalid  | character with apostrophe                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 126                         |
      | <ProductType> | Place of Birth        | invalid  | character with underscore                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 127                         |
      | <ProductType> | Place of Birth        | invalid  | character with hyphen                             | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 128                         |
      | <ProductType> | Place of Birth        | invalid  | negative number                                   | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 129                         |
      | <ProductType> | Place of Birth        | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 130                         |
      | <ProductType> | Place of Birth        | valid    | max length 255 characters                         | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 131                         |
      | <ProductType> | Constitution          | valid    | mapped                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 132                         |
      | <ProductType> | Constitution          | invalid  | unmapped                                          | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 133                         |
      | <ProductType> | Category              | valid    | mapped                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 134                         |
      | <ProductType> | Category              | invalid  | unmapped                                          | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 135                         |
      | <ProductType> | Group Name            | valid    | mapped                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 136                         |
      | <ProductType> | Group Name            | invalid  | unmapped                                          | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 137                         |
      | <ProductType> | Sub Group Name        | valid    | mapped                                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 138                         |
      | <ProductType> | Sub Group Name        | invalid  | unmapped                                          | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 139                         |
      | <ProductType> | TAN Number            | valid    | valid format(AAAA12345A)                          | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 140                         |
      | <ProductType> | TAN Number            | invalid  | character                                         | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 141                         |
      | <ProductType> | TAN Number            | invalid  | alphanumeric                                      | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 142                         |
      | <ProductType> | TAN Number            | invalid  | number                                            | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 143                         |
      | <ProductType> | TAN Number            | invalid  | special character                                 | throw an         | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 144                         |
      | <ProductType> | Promoter Contribution | valid    | value between 0 to 100                            | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 145                         |
      | <ProductType> | Promoter Contribution | valid    | value between 0 to 100 upto 2 decimal places      | not throw any    | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 146                         |
      | <ProductType> | Promoter Contribution | invalid  | negative values                                   | throw            | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 147                         |
      | <ProductType> | Promoter Contribution | invalid  | value more  than 100                              | throw            | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 148                         |
      | <ProductType> | Promoter Contribution | invalid  | value between 0 to 100 more than 2 decimal places | throw            | <ApplicationStage> | <ApplicantType> |          |     | personal_information.xlsx | home                 | 149                         |


  #FeatureID-ACAUTOCAS-148
  Scenario Outline: ACAUTOCAS-13402: Dependent field <DependentFields> should be <Expected_Behaviour> based on <Fields> in tabs mode of personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 36
    When user fills "given" field "<Fields>" in personal information
    Then "<DependentFields>" should be "<Expected_Behaviour>" in personal information
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release @Part-1
#${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Fields                     | DependentFields | Expected_Behaviour | ApplicationStage   | ApplicantType | Category | key |
      | <ProductType> | Applicant's Gender         | Salutation      | auto filled        | <ApplicationStage> |               |          |     |
      | <ProductType> | First Name                 | Full Name       | auto filled        | <ApplicationStage> |               |          |     |
      | <ProductType> | Middle Name                | Full Name       | auto filled        | <ApplicationStage> |               |          |     |
      | <ProductType> | Last Name                  | Full Name       | auto filled        | <ApplicationStage> |               |          |     |
      | <ProductType> | Date of Birth              | Age(years)      | auto filled        | <ApplicationStage> |               |          |     |
      | <ProductType> | Relationship With Employee | Employee ID     | display            | <ApplicationStage> |               |          |     |
      | <ProductType> | Relationship With Employee | Employee Name   | display            | <ApplicationStage> |               |          |     |


  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Fields                     | DependentFields | Expected_Behaviour | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | Applicant's Gender         | Salutation      | auto filled        | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | First Name                 | Full Name       | auto filled        | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Middle Name                | Full Name       | auto filled        | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Last Name                  | Full Name       | auto filled        | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Date of Birth              | Age(years)      | auto filled        | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Relationship With Employee | Employee ID     | display            | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Relationship With Employee | Employee Name   | display            | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Fields                     | DependentFields | Expected_Behaviour | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | Applicant's Gender         | Salutation      | auto filled        | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | First Name                 | Full Name       | auto filled        | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Middle Name                | Full Name       | auto filled        | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Last Name                  | Full Name       | auto filled        | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Date of Birth              | Age(years)      | auto filled        | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Relationship With Employee | Employee ID     | display            | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Relationship With Employee | Employee Name   | display            | <ApplicationStage> | <ApplicantType> | <Category> |     |


     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | Fields                     | DependentFields | Expected_Behaviour | ApplicationStage   | ApplicantType | Category | key |
      | <ProductType> | Applicant's Gender         | Salutation      | auto filled        | <ApplicationStage> |               |          |     |
      | <ProductType> | First Name                 | Full Name       | auto filled        | <ApplicationStage> |               |          |     |
      | <ProductType> | Middle Name                | Full Name       | auto filled        | <ApplicationStage> |               |          |     |
      | <ProductType> | Last Name                  | Full Name       | auto filled        | <ApplicationStage> |               |          |     |
      | <ProductType> | Date of Birth              | Age(years)      | auto filled        | <ApplicationStage> |               |          |     |
      | <ProductType> | Relationship With Employee | Employee ID     | display            | <ApplicationStage> |               |          |     |
      | <ProductType> | Relationship With Employee | Employee Name   | display            | <ApplicationStage> |               |          |     |


  #FeatureID-ACAUTOCAS-148
  Scenario Outline: ACAUTOCAS-13403: Dependent field <DependentFields> validation which depends on Date of Birth of applicant in tabs mode of personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    When user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    And user enters dob which makes applicant "<Age>"
    And user checks for duplicates on Applicant Details
    And user save the details
    Then "<DependentFields>" should be "<Expected_Behaviour>" in personal information
    @Conventional
    @ImplementedBy-pallavi.singh

    @Release @Part-1
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Age              | DependentFields | Expected_Behaviour | ApplicationStage   | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ApplicantType   | Category | key |
      | <ProductType> | Age more than 18 | Is Minor        | unmarked           | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> |          |     |
      | <ProductType> | Age less than 18 | Is Minor        | marked             | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> |          |     |
      | <ProductType> | Age more than 18 | Guardian Name   | non editable       | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> |          |     |
      | <ProductType> | Age more than 18 | Guardian Name   | non mandatory      | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> |          |     |
      | <ProductType> | Age less than 18 | Guardian Name   | editable           | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> |          |     |
      | <ProductType> | Age less than 18 | Guardian Name   | mandatory          | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> |          |     |


  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Age              | DependentFields | Expected_Behaviour | ApplicationStage   | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ApplicantType   | Category | key |
      | <ProductType> | Age more than 18 | Is Minor        | unmarked           | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> |          |     |
      | <ProductType> | Age less than 18 | Is Minor        | marked             | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> |          |     |
      | <ProductType> | Age more than 18 | Guardian Name   | non editable       | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> |          |     |
      | <ProductType> | Age more than 18 | Guardian Name   | non mandatory      | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> |          |     |
      | <ProductType> | Age less than 18 | Guardian Name   | editable           | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> |          |     |
      | <ProductType> | Age less than 18 | Guardian Name   | mandatory          | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> |          |     |

     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Age              | DependentFields | Expected_Behaviour | ApplicationStage   | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | Age more than 18 | Is Minor        | unmarked           | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Age less than 18 | Is Minor        | marked             | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Age more than 18 | Guardian Name   | non editable       | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Age more than 18 | Guardian Name   | non mandatory      | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Age less than 18 | Guardian Name   | editable           | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Age less than 18 | Guardian Name   | mandatory          | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> | <Category> |     |


    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | Age              | DependentFields | Expected_Behaviour | ApplicationStage   | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ApplicantType   | Category | key |
      | <ProductType> | Age more than 18 | Is Minor        | unmarked           | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> |          |     |
      | <ProductType> | Age less than 18 | Is Minor        | marked             | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> |          |     |
      | <ProductType> | Age more than 18 | Guardian Name   | non editable       | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> |          |     |
      | <ProductType> | Age more than 18 | Guardian Name   | non mandatory      | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> |          |     |
      | <ProductType> | Age less than 18 | Guardian Name   | editable           | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> |          |     |
      | <ProductType> | Age less than 18 | Guardian Name   | mandatory          | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-148
  Scenario Outline: ACAUTOCAS-13404: Salutation of Applicant's Gender <Expected_Behaviour> based on Applicant's Gender of applicant in tabs mode of personal information at at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    When user select applicant gender as "<Applicant_Gender>"
    Then "Salutation" should be "<Expected_Behaviour>" in personal information
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release @Part-1
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Applicant_Gender | Expected_Behaviour         | ApplicationStage   | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ApplicantType   | Category | key |
      | <ProductType> | Male             | auto filled as Mr          | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> |          |     |
      | <ProductType> | Female           | auto filled as Ms          | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> |          |     |
      | <ProductType> | Not Specified    | allow to Select One Option | <ApplicationStage> | personal_information.xlsx | home                 | 38                          | <ApplicantType> |          |     |
      | <ProductType> | Third Gender     | allow to Select One Option | <ApplicationStage> | personal_information.xlsx | home                 | 39                          | <ApplicantType> |          |     |
      | <ProductType> | Male             | mandatory                  | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> |          |     |
      | <ProductType> | Female           | mandatory                  | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> |          |     |
      | <ProductType> | Not Specified    | non mandatory              | <ApplicationStage> | personal_information.xlsx | home                 | 38                          | <ApplicantType> |          |     |
      | <ProductType> | Third Gender     | non mandatory              | <ApplicationStage> | personal_information.xlsx | home                 | 39                          | <ApplicantType> |          |     |

  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Applicant_Gender | Expected_Behaviour         | ApplicationStage   | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ApplicantType   | Category | key |
      | <ProductType> | Male             | auto filled as Mr          | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> |          |     |
      | <ProductType> | Female           | auto filled as Ms          | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> |          |     |
      | <ProductType> | Not Specified    | allow to Select One Option | <ApplicationStage> | personal_information.xlsx | home                 | 38                          | <ApplicantType> |          |     |
      | <ProductType> | Third Gender     | allow to Select One Option | <ApplicationStage> | personal_information.xlsx | home                 | 39                          | <ApplicantType> |          |     |
      | <ProductType> | Male             | mandatory                  | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> |          |     |
      | <ProductType> | Female           | mandatory                  | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> |          |     |
      | <ProductType> | Not Specified    | non mandatory              | <ApplicationStage> | personal_information.xlsx | home                 | 38                          | <ApplicantType> |          |     |
      | <ProductType> | Third Gender     | non mandatory              | <ApplicationStage> | personal_information.xlsx | home                 | 39                          | <ApplicantType> |          |     |

 # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Applicant_Gender | Expected_Behaviour         | ApplicationStage   | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ApplicantType   | Category   | key |
      | <ProductType> | Male             | auto filled as Mr          | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Female           | auto filled as Ms          | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Not Specified    | allow to Select One Option | <ApplicationStage> | personal_information.xlsx | home                 | 38                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Third Gender     | allow to Select One Option | <ApplicationStage> | personal_information.xlsx | home                 | 39                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Male             | mandatory                  | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Female           | mandatory                  | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Not Specified    | non mandatory              | <ApplicationStage> | personal_information.xlsx | home                 | 38                          | <ApplicantType> | <Category> |     |
      | <ProductType> | Third Gender     | non mandatory              | <ApplicationStage> | personal_information.xlsx | home                 | 39                          | <ApplicantType> | <Category> |     |


    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | Applicant_Gender | Expected_Behaviour         | ApplicationStage   | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ApplicantType   | Category | key |
      | <ProductType> | Male             | auto filled as Mr          | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> |          |     |
      | <ProductType> | Female           | auto filled as Ms          | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> |          |     |
      | <ProductType> | Not Specified    | allow to Select One Option | <ApplicationStage> | personal_information.xlsx | home                 | 38                          | <ApplicantType> |          |     |
      | <ProductType> | Third Gender     | allow to Select One Option | <ApplicationStage> | personal_information.xlsx | home                 | 39                          | <ApplicantType> |          |     |
      | <ProductType> | Male             | mandatory                  | <ApplicationStage> | personal_information.xlsx | home                 | 36                          | <ApplicantType> |          |     |
      | <ProductType> | Female           | mandatory                  | <ApplicationStage> | personal_information.xlsx | home                 | 37                          | <ApplicantType> |          |     |
      | <ProductType> | Not Specified    | non mandatory              | <ApplicationStage> | personal_information.xlsx | home                 | 38                          | <ApplicantType> |          |     |
      | <ProductType> | Third Gender     | non mandatory              | <ApplicationStage> | personal_information.xlsx | home                 | 39                          | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-148
  Scenario Outline: ACAUTOCAS-13405: Upload image of applicant in tabs mode of personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    When user selects image with extension "jpg" to upload in personal information
    Then image should be uploaded successfully
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release @Part-1
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-148
  Scenario Outline: ACAUTOCAS-13406: Change image of applicant in tabs mode of personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    When user change images to upload in personal information
    Then selected image should be changed successfully
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release @Part-1
#${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-148
  Scenario Outline: ACAUTOCAS-13407: Remove image of applicant in tabs mode of personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    When user remove images of applicant in personal information
    Then image should be removed successfully
    @Conventional
    @ImplementedBy-pallavi.singh

    @Release @Part-1
#${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-148
  Scenario Outline: ACAUTOCAS-13408: Upload image with extension <Extension> in tabs mode of personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    When user selects image with extension "<Extension>" to upload in personal information
    Then image should be uploaded successfully
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release @Part-1
#${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Extension | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | jpeg      | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | jpg       | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | gif       | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | png       | <ApplicationStage> | <ApplicantType> |          |     |


  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Extension | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | jpeg      | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | jpg       | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | gif       | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | png       | <ApplicationStage> | <ApplicantType> |          |     |


     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Extension | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | jpeg      | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | jpg       | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | gif       | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | png       | <ApplicationStage> | <ApplicantType> | <Category> |     |


        # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | Extension | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | jpeg      | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | jpg       | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | gif       | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | png       | <ApplicationStage> | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-148
  Scenario Outline: ACAUTOCAS-13409: Upload image with Unsupported file format "<Unsupported_File>" in tabs mode of personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    When user selects image with Unsupported file format "<Unsupported_File>" to upload in personal information
    Then image should not be uploaded with an error message
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release @Part-1
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Unsupported_File | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | txt              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | pdf              | <ApplicationStage> | <ApplicantType> |          |     |

    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Unsupported_File | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | txt              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | pdf              | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Unsupported_File | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | txt              | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | pdf              | <ApplicationStage> | <ApplicantType> | <Category> |     |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | Unsupported_File | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | txt              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | pdf              | <ApplicationStage> | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-148

  Scenario Outline: ACAUTOCAS-13410: Proceed to next without filling <Mandatory_Field> field in tabs mode of personal information in <ProductType>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user fill personal information except "<Mandatory_Field>"
    And user clicks on proceed details
    Then personal information did not save with an error message
    @Conventional
    @ImplementedBy-richa.singh
    @Release @Part-1
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Mandatory_Field    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | Applicant's Gender | personal_information.xlsx | home              | 155                      |
      | <ProductType> | First Name         | personal_information.xlsx | home              | 156                      |
      | <ProductType> | Last Name          | personal_information.xlsx | home              | 157                      |
      | <ProductType> | Date of Birth      | personal_information.xlsx | home              | 158                      |
      | <ProductType> | Marital Status     | personal_information.xlsx | home              | 159                      |
      | <ProductType> | Constitution       | personal_information.xlsx | home              | 160                      |
      | <ProductType> | Nationality        | personal_information.xlsx | home              | 161                      |
      | <ProductType> | Resident Type      | personal_information.xlsx | home              | 162                      |
      | <ProductType> | Category           | personal_information.xlsx | home              | 174                      |

  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Mandatory_Field    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | Applicant's Gender | personal_information.xlsx | home              | 155                      |
      | <ProductType> | First Name         | personal_information.xlsx | home              | 156                      |
      | <ProductType> | Last Name          | personal_information.xlsx | home              | 157                      |
      | <ProductType> | Date of Birth      | personal_information.xlsx | home              | 158                      |
      | <ProductType> | Marital Status     | personal_information.xlsx | home              | 159                      |
      | <ProductType> | Constitution       | personal_information.xlsx | home              | 160                      |
      | <ProductType> | Nationality        | personal_information.xlsx | home              | 161                      |
      | <ProductType> | Resident Type      | personal_information.xlsx | home              | 162                      |
      | <ProductType> | Category           | personal_information.xlsx | home              | 174                      |

     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Mandatory_Field    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | Applicant's Gender | personal_information.xlsx | home              | 155                      |
      | <ProductType> | First Name         | personal_information.xlsx | home              | 156                      |
      | <ProductType> | Last Name          | personal_information.xlsx | home              | 157                      |
      | <ProductType> | Date of Birth      | personal_information.xlsx | home              | 158                      |
      | <ProductType> | Marital Status     | personal_information.xlsx | home              | 159                      |
      | <ProductType> | Constitution       | personal_information.xlsx | home              | 160                      |
      | <ProductType> | Nationality        | personal_information.xlsx | home              | 161                      |
      | <ProductType> | Resident Type      | personal_information.xlsx | home              | 162                      |
      | <ProductType> | Category           | personal_information.xlsx | home              | 174                      |

     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | Mandatory_Field    | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | Applicant's Gender | personal_information.xlsx | home              | 155                      |
      | <ProductType> | First Name         | personal_information.xlsx | home              | 156                      |
      | <ProductType> | Last Name          | personal_information.xlsx | home              | 157                      |
      | <ProductType> | Date of Birth      | personal_information.xlsx | home              | 158                      |
      | <ProductType> | Marital Status     | personal_information.xlsx | home              | 159                      |
      | <ProductType> | Constitution       | personal_information.xlsx | home              | 160                      |
      | <ProductType> | Nationality        | personal_information.xlsx | home              | 161                      |
      | <ProductType> | Resident Type      | personal_information.xlsx | home              | 162                      |
      | <ProductType> | Category           | personal_information.xlsx | home              | 174                      |


  #FeatureID-ACAUTOCAS-148
  @Sanity
  Scenario Outline: ACAUTOCAS-13411: Proceed to next with <Mandatory_All> field in tabs mode of personal information in <ProductType>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for "<ProductType>"
    When user fills "<Mandatory_All>" field "field" in personal information
    And user clicks on proceed details
    Then personal information of applicant should be proceed successfully
    @Conventional
    @ImplementedBy-richa.singh
    @Release @Part-1
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Mandatory_All | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | mandatory     | personal_information.xlsx | home              | 23                       |
      | <ProductType> | all           | personal_information.xlsx | home              | 1                        |


    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Mandatory_All | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | mandatory     | personal_information.xlsx | home              | 168                      |
      | <ProductType> | all           | personal_information.xlsx | home              | 169                      |


     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Mandatory_All | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | mandatory     | personal_information.xlsx | home              | 168                      |
      | <ProductType> | all           | personal_information.xlsx | home              | 169                      |


        # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | Mandatory_All | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | mandatory     | personal_information.xlsx | home              | 23                       |
      | <ProductType> | all           | personal_information.xlsx | home              | 1                        |


  #FeatureID-ACAUTOCAS-148
  Scenario Outline: ACAUTOCAS-13412: <Fields> display on proceeding in tabs mode of personal information in <ProductType>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for "<ProductType>"
    And user fills home page of personal information
    When user clicks on proceed to next
    Then "<Fields>" should be display at the top of personal information screen
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release @Part-1
  #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Fields             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | Application Number | personal_information.xlsx | home              | 1                        |
      | <ProductType> | Primary Applicant  | personal_information.xlsx | home              | 1                        |
      | <ProductType> | Neo Cust ID        | personal_information.xlsx | home              | 1                        |
      | <ProductType> | Neo CIF Number     | personal_information.xlsx | home              | 1                        |


    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Fields             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | Application Number | personal_information.xlsx | home              | 169                      |
      | <ProductType> | Primary Applicant  | personal_information.xlsx | home              | 169                      |
      | <ProductType> | Neo Cust ID        | personal_information.xlsx | home              | 169                      |
      | <ProductType> | Neo CIF Number     | personal_information.xlsx | home              | 169                      |


     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Fields                        | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | Application Number            | personal_information.xlsx | home              | 169                      |
      | <ProductType> | Primary Applicant's Full Name | personal_information.xlsx | home              | 169                      |
      | <ProductType> | Neo Cust ID                   | personal_information.xlsx | home              | 169                      |
      | <ProductType> | Neo CIF Number                | personal_information.xlsx | home              | 169                      |


     # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | Fields                        | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | Application Number            | personal_information.xlsx | home              | 1                        |
      | <ProductType> | Primary Applicant's Full Name | personal_information.xlsx | home              | 1                        |
      | <ProductType> | Neo Cust ID                   | personal_information.xlsx | home              | 1                        |
      | <ProductType> | Neo CIF Number                | personal_information.xlsx | home              | 1                        |

  #FeatureID-ACAUTOCAS-148
  Scenario Outline: ACAUTOCAS-13413: Open Identification accordion without clicking on Proceed Button personal information in tabs mode for <ProductType>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for "<ProductType>"
    When user clicks on "Identification" accordion without clicking on proceed button
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 151
    Then accordion did not opened with an error message
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release @Part-1
  # ${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | personal_information.xlsx | home              | 1                        |

   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | personal_information.xlsx | home              | 169                      |

     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | personal_information.xlsx | home              | 169                      |

   # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | personal_information.xlsx | home              | 1                        |

  #FeatureID-ACAUTOCAS-148
  Scenario Outline: ACAUTOCAS-13414: <Fields> created on proceeding in tabs mode of personal information in <ProductType>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for "<ProductType>"
    And user fills home page of personal information
    And user checks for duplicates on Applicant Details
    When user save the details
    Then "<Fields>" should be display at the top of personal information screen
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release @Part-1
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Fields             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | Application Number | personal_information.xlsx | home              | 1                        |
      | <ProductType> | Neo Cust ID        | personal_information.xlsx | home              | 1                        |


  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Fields             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | Application Number | personal_information.xlsx | home              | 169                      |
      | <ProductType> | Neo Cust ID        | personal_information.xlsx | home              | 169                      |


     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Fields             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | Application Number | personal_information.xlsx | home              | 169                      |
      | <ProductType> | Neo Cust ID        | personal_information.xlsx | home              | 169                      |


    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | Fields             | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ProductType> | Application Number | personal_information.xlsx | home              | 1                        |
      | <ProductType> | Neo Cust ID        | personal_information.xlsx | home              | 1                        |



  #FeatureID-ACAUTOCAS-148
  @FixedExp
  Scenario Outline: ACAUTOCAS-13415: <Accordion> accordion after <Expand_Collapse> All the screen in tabs mode of personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    When user select Required tab in Personal Information
    Then "<Accordion>" accordion should be "<Expand_Collapse>"
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release @Part-1
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Expand_Collapse | Accordion                      | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | Expand All      | Personal Information           | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Expand All      | Financial Details              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Expand All      | Bank/Credit Card               | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Expand All      | Customer Communication History | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Expand All      | Activity                       | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Collapse All    | Personal Information           | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Collapse All    | Financial Details              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Collapse All    | Bank/Credit Card               | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Collapse All    | Customer Communication History | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Collapse All    | Activity                       | <ApplicationStage> | <ApplicantType> |          |     |

  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Expand_Collapse | Accordion                      | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | Expand All      | Personal Information           | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Expand All      | Financial Details              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Expand All      | Bank/Credit Card               | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Expand All      | Customer Communication History | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Expand All      | Activity                       | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Collapse All    | Personal Information           | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Collapse All    | Financial Details              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Collapse All    | Bank/Credit Card               | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Collapse All    | Customer Communication History | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Collapse All    | Activity                       | <ApplicationStage> | <ApplicantType> |          |     |

     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Expand_Collapse | Accordion                      | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | Collapse All    | Personal Information           | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Collapse All    | Financial Details              | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Collapse All    | Bank/Credit Card               | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Collapse All    | Customer Communication History | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Collapse All    | Activity                       | <ApplicationStage> | <ApplicantType> | <Category> |     |

     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    @LoggedBug-CAS-228024
    Examples:
      | ProductType   | Expand_Collapse | Accordion                      | ApplicationStage   | ApplicantType   | Category   | key |
      | <ProductType> | Expand All      | Personal Information           | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Expand All      | Financial Details              | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Expand All      | Bank/Credit Card               | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Expand All      | Customer Communication History | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | <ProductType> | Expand All      | Activity                       | <ApplicationStage> | <ApplicantType> | <Category> |     |



    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | Expand_Collapse | Accordion                      | ApplicationStage   | ApplicantType   | Category | key |
      | <ProductType> | Expand All      | Personal Information           | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Expand All      | Financial Details              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Expand All      | Bank/Credit Card               | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Expand All      | Customer Communication History | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Expand All      | Activity                       | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Collapse All    | Personal Information           | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Collapse All    | Financial Details              | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Collapse All    | Bank/Credit Card               | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Collapse All    | Customer Communication History | <ApplicationStage> | <ApplicantType> |          |     |
      | <ProductType> | Collapse All    | Activity                       | <ApplicationStage> | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-148
  Scenario Outline: ACAUTOCAS-13416:  if we click on <Accordion> accordion before clicking on proceed then system should throw pop-up message in <ProductType>
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 0
    And user creates new application for "<ProductType>"
    When user clicks on "<Accordion>" accordion without clicking on proceed button
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 151
    Then accordion did not opened with an error message
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release @Part-1
   #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | Accordion      |
      | <ProductType> | Identification |
    @LoggedBug
    @Deferred
    Examples:
      | ProductType   | Accordion             |
      | <ProductType> | Address               |
      | <ProductType> | Communication Details |

   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Accordion      |
      | <ProductType> | Identification |

   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @LoggedBug
    @Deferred
    Examples:
      | ProductType   | Accordion             |
      | <ProductType> | Address               |
      | <ProductType> | Communication Details |

     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | ProductType   | Accordion      |
      | <ProductType> | Identification |

     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @LoggedBug
    @Deferred
    Examples:
      | ProductType   | Accordion             |
      | <ProductType> | Address               |
      | <ProductType> | Communication Details |

   # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Deferred
    Examples:
      | ProductType   | Accordion      |
      | <ProductType> | Identification |


   # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @LoggedBug
    @Deferred
    Examples:
      | ProductType   | Accordion             |
      | <ProductType> | Address               |
      | <ProductType> | Communication Details |