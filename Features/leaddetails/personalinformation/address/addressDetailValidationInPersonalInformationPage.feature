@Epic-Applicant_Information
@AuthoredBy-harshita.nayak
@Reconciled
@ReviewedByDEV
@AppInfoAdoption
@AppInfoAddressTest
# ${ApplicantType:["indiv","nonindiv"]}
Feature: Address Detail Validation In Personal Information Page

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


    @Sanity
  Scenario Outline: ACAUTOCAS-3967:  Fill the applicant's address with <var> fields
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    When user fills address with "<var>"
    Then address details should save successfully
    @Conventional
    @ImplementedBy-harshprit.kumar
    @Release1
    @Release @Part-1
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | var       | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | mandatory | personal_information.xlsx | address           | 0                        |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | all       | personal_information.xlsx | address           | 1                        |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | var       | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | mandatory | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | all       | personal_information.xlsx | address           | 139                      |

# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Category   | key | ApplicantType   | var       | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | mandatory | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | all       | personal_information.xlsx | address           | 139                      |

   #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | var       | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | mandatory | personal_information.xlsx | address           | 0                        |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | all       | personal_information.xlsx | address           | 1                        |

#  FeatureID:ACAUTOCAS-151,CAS-99291
   #StoryID:CAS-99291
  @Sanity
  Scenario Outline: ACAUTOCAS-13422: Capability to accept multiple <Address> in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    When user add multiple "<Address>" in personal information
    Then multiple address should be added successfully
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                                          | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address                       |          |     | <ApplicantType> | personal_information.xlsx | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Additional Address with purpose combination      |          |     | <ApplicantType> | personal_information.xlsx | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Additional Address with same purpose combination |          |     | <ApplicantType> | personal_information.xlsx | address           | 164                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address                         |          |     | <ApplicantType> | personal_information.xlsx | address           | 165                      |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                                          | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address                       |          |     | <ApplicantType> | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Additional Address with purpose combination      |          |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Additional Address with same purpose combination |          |     | <ApplicantType> | personal_information.xlsx | address           | 140                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address                         |          |     | <ApplicantType> | personal_information.xlsx | address           | 141                      |

# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                                          | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address                       | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Additional Address with purpose combination      | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Additional Address with same purpose combination | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 140                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address                         | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 141                      |

  #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                                          | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address                       |          |     | <ApplicantType> | personal_information.xlsx | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Additional Address with purpose combination      |          |     | <ApplicantType> | personal_information.xlsx | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Additional Address with same purpose combination |          |     | <ApplicantType> | personal_information.xlsx | address           | 164                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address                         |          |     | <ApplicantType> | personal_information.xlsx | address           | 165                      |

  #StoryID:CAS-102674,CAS-25615
#SquashID:06_CAS-109608
#FeatureID:ACAUTOCAS-151,CAS-109608,CAS-25615,CAS-102674
  Scenario Outline: ACAUTOCAS-13423: Required <Field> field validation for Additional Address in Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user selects address type as "Additional Address" after navigate to personal Info page
    When user select Required button in Personal Information
    Then "<Field>" field should be present for "Additional Address" in Address as required field
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Purpose                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Purpose                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Emirate                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |

   #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Country                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |

#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Purpose                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |

    #StoryID:CAS-102674,CAS-25615
  #FeatureID:ACAUTOCAS-151,CAS-25615,CAS-102674
  Scenario Outline: ACAUTOCAS-13424: <Field> field validation in All Fields for Additional Address in Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user selects address type as "Additional Address" after navigate to personal Info page
    When user select All Fields in Personal Information
    Then "<Field>" field should be present for "Additional Address" in Address
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    @Conventional
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Purpose                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Full Address                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Region                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | City                                   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | District                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Village                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Residence Type                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Landmark                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Purpose                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Full Address                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Region                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Emirate                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | City                                   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | District                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Village                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Residence Type                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Landmark                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |

    #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Country                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Region                                 | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | City                                   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | District                               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Village                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Residence Type                         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Purpose                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Full Address                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Region                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | City                                   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | District                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Village                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Residence Type                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Landmark                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |


    #StoryID:CAS-102674,CAS-25615
#FeatureID:ACAUTOCAS-151,CAS-102674,CAS-25615
  Scenario Outline: ACAUTOCAS-13425: Field type validation of <Field> field for Additional Address in Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user selects address type as "Additional Address" after navigate to personal Info page
    Then field type of "<Field>" field should "<Field_Type>" field in Address for "Additional Address"
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | PinCode                                | list of values |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | State                                  | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Residence Type                         | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | list of values |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Residence Type                         | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |

     #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | list of values | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Residence Type                         | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |

#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | PinCode                                | list of values |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | State                                  | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Residence Type                         | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |


#FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-13426: Required <Field> field validation for Alternate Business Address in Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user selects address type as "Alternate Business Address" after navigate to personal Info page
    When user select Required button in Personal Information
    Then "<Field>" field should be present for "Alternate Business Address" in Address as required field
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Emirate                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |

      #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Country                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |

#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |


    #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-13427: <Field> field validation in All Fields for Alternate Business Address in Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user selects address type as "Alternate Business Address" after navigate to personal Info page
    When user select All Fields in Personal Information
    Then "<Field>" field should be present for "Alternate Business Address" in Address
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Full Address                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Region                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | City                                   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | District                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Village                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Landmark                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Full Address                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Region                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Emirate                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | City                                   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | District                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Village                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Landmark                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |

      #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Country                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Region                                 | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | City                                   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | District                               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Village                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |

#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Full Address                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Region                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | City                                   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | District                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Village                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Landmark                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |


    #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-13428: Field type validation of <Field> field in Address for Alternate Business Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user selects address type as "Alternate Business Address" after navigate to personal Info page
    Then field type of "<Field>" field should "<Field_Type>" field in Address for "Alternate Business Address"
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | PinCode                                | list of values |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | State                                  | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | list of values |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | State                                  | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |

 #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | list of values | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | State                                  | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | PinCode                                | list of values |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | State                                  | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |


#FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-13429: Required <Field> field validation for Office/ Business Address in Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user selects address type as "Office/ Business Address" after navigate to personal Info page
    When user select Required button in Personal Information
    Then "<Field>" field should be present for "Office/ Business Address" in Address as required field
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
# ${ ProductType : ["IHF",IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Emirate                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Country                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |


    #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-13430: <Field> field validation in All Fields for Office/ Business Address in Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user selects address type as "Office/ Business Address" after navigate to personal Info page
    When user select All Fields in Personal Information
    Then "<Field>" field should be present for "Office/ Business Address" in Address
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Full Address                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Region                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | City                                   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | District                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Village                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Landmark                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Full Address                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Region                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Emirate                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | City                                   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | District                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Village                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Landmark                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |

      #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Country                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Region                                 | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | City                                   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | District                               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Village                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Full Address                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Region                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | City                                   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | District                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Village                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Landmark                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |


    #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-13431: Field type validation of <Field> field in Address for Office/ Business Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user selects address type as "Office/ Business Address" after navigate to personal Info page
    Then field type of "<Field>" field should "<Field_Type>" field in Address for "Office/ Business Address"
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
   #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | PinCode                                | list of values |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | State                                  | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | list of values |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |

      #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | list of values | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | PinCode                                | list of values |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | State                                  | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |


#FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-13432: Required <Field> field validation for Permanent Address in Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user selects address type as "Permanent Address" after navigate to personal Info page
    When user select Required button in Personal Information
    Then "<Field>" field should be present for "Permanent Address" in Address as required field
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Emirate                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |

     #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Country                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |


    #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-13433: <Field> field validation in All Fields for Permanent Address in Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user selects address type as "Permanent Address" after navigate to personal Info page
    When user select All Fields in Personal Information
    Then "<Field>" field should be present for "Permanent Address" in Address
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Full Address                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Region                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | City                                   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | District                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Village                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Landmark                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Full Address                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Region                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Emirate                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | City                                   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | District                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Village                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Landmark                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |

      #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Country                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Region                                 | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | City                                   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | District                               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Village                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Full Address                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Region                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | City                                   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | District                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Village                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Landmark                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |

    #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-13434: Field type validation of <Field> field in Permanent Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user selects address type as "Permanent Address" after navigate to personal Info page
    Then field type of "<Field>" field should "<Field_Type>" field in Address for "Permanent Address"
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | PinCode                                | list of values |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | State                                  | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residence Type                         | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | list of values |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residence Type                         | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |

     #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | list of values | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residence Type                         | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |

#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | PinCode                                | list of values |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | State                                  | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residence Type                         | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |

#FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-13435: Required <Field> field validation for Residential Address in Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user selects address type as "Residential Address" after navigate to personal Info page
    When user select Required button in Personal Information
    Then "<Field>" field should be present for "Residential Address" in Address as required field
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Landmark conditional mandatory         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Emirate                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Landmark conditional mandatory         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |

     #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Country                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Landmark conditional mandatory         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Landmark conditional mandatory         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |

    #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-13436: <Field> field validation in All Fields for Residential Address in Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user selects address type as "Residential Address" after navigate to personal Info page
    When user select All Fields in Personal Information
    Then "<Field>" field should be present for "Residential Address" in Address
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Full Address                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Region                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | City                                   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | District                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Village                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Landmark                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Full Address                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Region                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Emirate                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | City                                   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | District                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Village                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Landmark                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |

   #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Country                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Region                                 | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | City                                   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | District                               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Village                                | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Full Address                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Country                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | PinCode                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Region                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | State                                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | City                                   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | District                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Village                                |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Landmark                               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |

    #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-13437: Field type validation of <Field> field in Residential Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user selects address type as "Residential Address" after navigate to personal Info page
    Then field type of "<Field>" field should "<Field_Type>" field in Address for "Residential Address"
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | PinCode                                | list of values |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | State                                  | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residence Type                         | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | list of values |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Residence Type                         | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |

 #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | P.O.Box                                | list of values | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Emirate                                | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Residence Type                         | drop down      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field                                  | Field_Type     | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address Type                           | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Purpose                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Full Address                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Country                                | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Address Line 2                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Address Line 3                         | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | PinCode                                | list of values |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Region                                 | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | State                                  | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | City                                   | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | District                               | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Taluka                                 | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Village                                | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residence Status                       | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residence Type                         | drop down      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Landmark                               | textarea       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Duration at this Address               | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Duration at this City                  | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Primary Phone                          | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           | input          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox | checkbox       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |


    #Copy address functionality: Addition of validation to check mandatory fields in copied record
#StoryId:CAS-99514
   #FeatureID:ACAUTOCAS-151,CAS-99514
  @Perishable

  Scenario Outline: ACAUTOCAS-9917: Copy address functionality in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    When user add only one "<Address>" with all fields in personal information
    And user copy from an existing "<Address>" to add another "<Copied_Address>"
    And user selects address type as "<Copied_Address>"
    And user click on "<Button>"
    Then "<Copied_Address>" "<Throw_notThrow>" message
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Copied_Address             | Button | Throw_notThrow      | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Permanent Address          | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Residential Address        | Done   | throw an error      |          |     | <ApplicantType> | personal_information.xlsx | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Additional Address         | Done   | throw an error      |          |     | <ApplicantType> | personal_information.xlsx | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Residential Address        | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Additional Address         | Done   | throw an error      |          |     | <ApplicantType> | personal_information.xlsx | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Permanent Address          | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Additional Address         | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Permanent Address          | Done   | throw an error      |          |     | <ApplicantType> | personal_information.xlsx | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Residential Address        | Done   | throw an error      |          |     | <ApplicantType> | personal_information.xlsx | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Additional Address         | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Permanent Address          | Done   | throw an error      |          |     | <ApplicantType> | personal_information.xlsx | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Residential Address        | Done   | throw an error      |          |     | <ApplicantType> | personal_information.xlsx | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Alternate Business Address | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Office/ Business Address   | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Alternate Business Address | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Office/ Business Address   | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Alternate Business Address | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Office/ Business Address   | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 167                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Copied_Address             | Button | Throw_notThrow      | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Permanent Address          | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Residential Address        | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Additional Address         | Done   | throw an error      | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Residential Address        | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Additional Address         | Done   | throw an error      | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Permanent Address          | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Alternate Business Address | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Permanent Address          | Done   | throw an error      | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Office/ Business Address   | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Permanent Address          | Done   | throw an error      | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Alternate Business Address | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Office/ Business Address   | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Alternate Business Address | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Alternate Business Address | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 143                      |

   #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Copied_Address             | Button | Throw_notThrow      | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Permanent Address          | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Residential Address        | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Additional Address         | Done   | throw an error      | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Residential Address        | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Additional Address         | Done   | throw an error      | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Permanent Address          | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Alternate Business Address | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Permanent Address          | Done   | throw an error      | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Office/ Business Address   | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Permanent Address          | Done   | throw an error      | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Alternate Business Address | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Office/ Business Address   | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Alternate Business Address | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Alternate Business Address | Done   | not throw any error | <Category> |     | <ApplicantType> | personal_information.xlsx | address           | 143                      |


    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Copied_Address             | Button | Throw_notThrow      | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Permanent Address          | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Residential Address        | Done   | throw an error      |          |     | <ApplicantType> | personal_information.xlsx | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Additional Address         | Done   | throw an error      |          |     | <ApplicantType> | personal_information.xlsx | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Residential Address        | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Additional Address         | Done   | throw an error      |          |     | <ApplicantType> | personal_information.xlsx | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Permanent Address          | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Additional Address         | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Permanent Address          | Done   | throw an error      |          |     | <ApplicantType> | personal_information.xlsx | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Residential Address        | Done   | throw an error      |          |     | <ApplicantType> | personal_information.xlsx | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Additional Address         | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Permanent Address          | Done   | throw an error      |          |     | <ApplicantType> | personal_information.xlsx | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Residential Address        | Done   | throw an error      |          |     | <ApplicantType> | personal_information.xlsx | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Alternate Business Address | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Office/ Business Address   | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Alternate Business Address | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Office/ Business Address   | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Alternate Business Address | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Office/ Business Address   | Done   | not throw any error |          |     | <ApplicantType> | personal_information.xlsx | address           | 167                      |


#StoryID:CAS-102674
     #FeatureID:ACAUTOCAS-151,CAS-102674
  Scenario Outline: ACAUTOCAS-9918: <Field> field validation for <Address_City> in <Address_Type> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens address details tab of personal information page
    When user selects address type as "<Address_Type>"
    Then "<Field>" field for "<Address_City>" should be display as Calendar field
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field     | Address_City                | Address_Type               | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field     | Address_City                | Address_Type               | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |

    #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field     | Address_City                | Address_Type               | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Office/ Business Address   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Office/ Business Address   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Office/ Business Address   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Office/ Business Address   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field     | Address_City                | Address_Type               | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at current Address | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at current Address | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | From Date | Duration at Current City    | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | To Date   | Duration at Current City    | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |


  #StoryID:CAS-102674
  # FeatureID:ACAUTOCAS-151,CAS-102674
  Scenario Outline: ACAUTOCAS-9919: <Field> validation for <Address_City> in <Address_Type> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens address details tab of personal information page
    And user selects address type as "<Address_Type>"
    And user fills To Date field for "<Address_City>"
    When user fills From Date field for "<Address_City>"
    Then "<Field>" field should be display in two separate block
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field           | Address_City                | Address_Type               | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field           | Address_City                | Address_Type               | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |

    #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field           | Address_City                | Address_Type               | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Office/ Business Address   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Office/ Business Address   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |

      #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field           | Address_City                | Address_Type               | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |

      #StoryID:CAS-102674
  #FeatureID:ACAUTOCAS-151,CAS-102674
  Scenario Outline: ACAUTOCAS-9920: <Field> calculation for <Address_City> in <Address_Type> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens address details tab of personal information page
    And user selects address type as "<Address_Type>"
    And user fills To Date field for "<Address_City>"
    When user fills From Date field for "<Address_City>"
    Then "<Field>" field should be calculated correctly for "<Address_City>"
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field           | Address_City                | Address_Type               | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |


# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field           | Address_City                | Address_Type               | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |

      #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field           | Address_City                | Address_Type               | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Office/ Business Address   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Office/ Business Address   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
   #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field           | Address_City                | Address_Type               | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |


   #StoryID:CAS-102674
   #FeatureID:ACAUTOCAS-151,CAS-102674
  Scenario Outline: ACAUTOCAS-9921: <Field> calculation for <Address_City> in <Address_Type> if Current Address checkbox is checked at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user opens address details tab of personal information page
    And user selects address type as "<Address_Type>"
    And user checked Current Address checkbox
    When user fills From Date field for "<Address_City>"
    Then "<Field>" field should be calculated correctly as per current system date for "<Address_City>"
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
   #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Field           | Address_City                | Address_Type               | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Field           | Address_City                | Address_Type               | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |

      #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Field           | Address_City                | Address_Type               | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Office/ Business Address   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Office/ Business Address   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Field           | Address_City                | Address_Type               | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |



    #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-9922: Duplicate <Address> addition in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user add "Residential Address"
    And user wants to add same "<Address>" which is added already
    Then "<Address>" should not add with duplicate address error
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address             | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Residential Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address             | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Residential Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |

    #${ ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address             | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Residential Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
 # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address             | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Residential Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
#

    #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-9923: Adding duplicate <Address> in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user add "<Address>" in personal information
    And user wants to add same "<Address>" which is added already
    Then "<Address>" should not throw any error added without any error
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                                          | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Additional Address with purpose combination      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Additional Address with same purpose combination |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 164                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                                          | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Additional Address with purpose combination      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Additional Address with same purpose combination |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 140                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |

      #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                                          | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address                       | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Additional Address with purpose combination      | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Additional Address with same purpose combination | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 140                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address                         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                                          | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address                       |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Additional Address with purpose combination      |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Additional Address with same purpose combination |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 164                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address                         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |


    #FeatureID:ACAUTOCAS-151
  @FixedExp
  Scenario Outline: ACAUTOCAS-9924: Edit the added <Address> in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user add "<Address>" in personal information
    And user edits "<Address>" details
    Then "<Address>" should be edited successfully
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |

    #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
  #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |

     #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-9925: Validate the <Address> details after editing the details in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user add "<Address>" in personal information
    And user edits some details of "<Address>" details
    When user view "<Address>" details
    Then "<Address>" should be display with updated details after edit
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 150                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 149                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 152                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 153                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 154                      |

      #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 150                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 149                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 152                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 153                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 154                      |
# ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |


 #FeatureID:ACAUTOCAS-151
  @Perishable
  Scenario Outline: ACAUTOCAS-9926: View the added <Address> in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user add "<Address>" in personal information
    And user edits some details of "<Address>" details
    When user view "<Address>" details
    Then "<Address>" details should should be display in view mode
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |

      #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |



#15_CAS-99291
  #FeatureID:ACAUTOCAS-151,CAS-99291
  @Perishable
  Scenario Outline: ACAUTOCAS-9927: Delete the added <Address> in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    When user add "<Address>" in personal information
    And user deletes "<Address>" details
    Then "<Address>" should be deleted successfully
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
#
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
  #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |

      #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-9928: Communication details validation after adding all types of address in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    When user add below address in personal information
      | personal_information.xlsx | address | <rowNum1> | Residential Address        |
      | personal_information.xlsx | address | <rowNum2> | Permanent Address          |
      | personal_information.xlsx | address | <rowNum3> | Office/ Business Address   |
      | personal_information.xlsx | address | <rowNum4> | Alternate Business Address |
      | personal_information.xlsx | address | <rowNum5> | Additional Address         |
    And user open communication detail
    Then all added address details should be display in communication details
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | rowNum1 | rowNum2 | rowNum3 | rowNum4 | rowNum5 |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | 167     | 166     | 165     | 162     | 163     |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | rowNum1 | rowNum2 | rowNum3 | rowNum4 | rowNum5 |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | 143     | 142     | 141     | 138     | 139     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    # ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
        #${ Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | rowNum1 | rowNum2 | rowNum3 | rowNum4 | rowNum5 |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | 143     | 142     | 141     | 138     | 139     |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | rowNum1 | rowNum2 | rowNum3 | rowNum4 | rowNum5 |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | 167     | 166     | 165     | 162     | 163     |

 #FeatureID:ACAUTOCAS-151
  @FixedExp
  Scenario Outline: ACAUTOCAS-9929: Communication details "<Communication_Column>" column validation after adding address in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_home_rowNum>
    When user add "Residential Address" in personal information
    And user open communication detail
    Then added address details should be display in communication details with "<Communication_Column>"
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    Examples:
      | ApplicationStage   | ProductType   | Communication_Column | Category | key | ApplicantType   | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address              |          |     | <ApplicantType> | 1                                  | 167                      |
      | <ApplicationStage> | <ProductType> | Country              |          |     | <ApplicantType> | 1                                  | 167                      |
      | <ApplicationStage> | <ProductType> | Address Type         |          |     | <ApplicantType> | 1                                  | 167                      |
      | <ApplicationStage> | <ProductType> | State                |          |     | <ApplicantType> | 1                                  | 167                      |
      | <ApplicationStage> | <ProductType> | City                 |          |     | <ApplicantType> | 1                                  | 167                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Communication_Column | Category | key | ApplicantType   | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address              |          |     | <ApplicantType> | 126                                | 143                      |
      | <ApplicationStage> | <ProductType> | Country              |          |     | <ApplicantType> | 126                                | 143                      |
      | <ApplicationStage> | <ProductType> | Address Type         |          |     | <ApplicantType> | 126                                | 143                      |
      | <ApplicationStage> | <ProductType> | City                 |          |     | <ApplicantType> | 126                                | 143                      |
      | <ApplicationStage> | <ProductType> | Emirate              |          |     | <ApplicantType> | 126                                | 143                      |


    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    # ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Communication_Column | Category   | key | ApplicantType   | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address              | <Category> |     | <ApplicantType> | 126                                | 143                      |
      | <ApplicationStage> | <ProductType> | Country              | <Category> |     | <ApplicantType> | 126                                | 143                      |
      | <ApplicationStage> | <ProductType> | Address Type         | <Category> |     | <ApplicantType> | 126                                | 143                      |
      | <ApplicationStage> | <ProductType> | City                 | <Category> |     | <ApplicantType> | 126                                | 143                      |
      | <ApplicationStage> | <ProductType> | Emirate              | <Category> |     | <ApplicantType> | 126                                | 143                      |


  #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Communication_Column | Category | key | ApplicantType   | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Address              |          |     | <ApplicantType> | 1                                  | 167                      |
      | <ApplicationStage> | <ProductType> | Country              |          |     | <ApplicantType> | 1                                  | 167                      |
      | <ApplicationStage> | <ProductType> | Address Type         |          |     | <ApplicantType> | 1                                  | 167                      |
      | <ApplicationStage> | <ProductType> | State                |          |     | <ApplicantType> | 1                                  | 167                      |
      | <ApplicationStage> | <ProductType> | City                 |          |     | <ApplicantType> | 1                                  | 167                      |

     #FeatureID:ACAUTOCAS-151
  @Perishable
  Scenario Outline: ACAUTOCAS-9930: Address details from communication details removed on deleting of added <Address> in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user add "<Address>" in personal information
    When user deletes "<Address>" details
    And user open communication detail
    Then "<Address>" details should removed from communication details
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |

    # ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
        #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |

 #StoryID:CAS-110827
   #FeatureID:ACAUTOCAS-151,CAS-110827
  @Perishable

  Scenario Outline: ACAUTOCAS-9931: Click on <Save_Next> button "<With_Without>" marking added multiple address as Primary Address in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user add below address in personal information
      | personal_information.xlsx | address | <rowNum1> | Alternate Business Address |
      | personal_information.xlsx | address | <rowNum2> | Residential Address        |
    And user checks for duplicates in personal info page
    And user open communication detail
    When user clicks "<Save_Next>" button "<With_Without>" marking an address as Primary Address out of multiple added addresses in communication details
    Then an error message "<Occurred_NotOccurred>" on Primary Address marking
    @Perishable
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    @Conventional
        #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | With_Without | Occurred_NotOccurred         | Category | key | ApplicantType   | rowNum1 | rowNum2 | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | without      | occurred                     |          |     | <ApplicantType> | 162     | 167     | 1                                  |
      | <ApplicationStage> | <ProductType> | Save        | with         | not throw any error occurred |          |     | <ApplicantType> | 162     | 167     | 1                                  |
      | <ApplicationStage> | <ProductType> | Save & Next | without      | occurred                     |          |     | <ApplicantType> | 162     | 167     | 1                                  |
      | <ApplicationStage> | <ProductType> | Save & Next | with         | not throw any error occurred |          |     | <ApplicantType> | 162     | 167     | 1                                  |

      # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | With_Without | Occurred_NotOccurred         | Category | key | ApplicantType   | rowNum1 | rowNum2 | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | without      | occurred                     |          |     | <ApplicantType> | 138     | 143     | 126                                |
      | <ApplicationStage> | <ProductType> | Save        | with         | not throw any error occurred |          |     | <ApplicantType> | 138     | 143     | 126                                |
      | <ApplicationStage> | <ProductType> | Save & Next | without      | occurred                     |          |     | <ApplicantType> | 138     | 143     | 126                                |
      | <ApplicationStage> | <ProductType> | Save & Next | with         | not throw any error occurred |          |     | <ApplicantType> | 138     | 143     | 126                                |
 # ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | With_Without | Occurred_NotOccurred         | Category   | key | ApplicantType   | rowNum1 | rowNum2 | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | without      | occurred                     | <Category> |     | <ApplicantType> | 138     | 143     | 126                                |
      | <ApplicationStage> | <ProductType> | Save        | with         | not throw any error occurred | <Category> |     | <ApplicantType> | 138     | 143     | 126                                |
      | <ApplicationStage> | <ProductType> | Save & Next | without      | occurred                     | <Category> |     | <ApplicantType> | 138     | 143     | 126                                |
      | <ApplicationStage> | <ProductType> | Save & Next | with         | not throw any error occurred | <Category> |     | <ApplicantType> | 138     | 143     | 126                                |

    #    ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | With_Without | Occurred_NotOccurred         | Category | key | ApplicantType   | rowNum1 | rowNum2 | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | without      | occurred                     |          |     | <ApplicantType> | 162     | 167     | 1                                  |
      | <ApplicationStage> | <ProductType> | Save        | with         | not throw any error occurred |          |     | <ApplicantType> | 162     | 167     | 1                                  |
      | <ApplicationStage> | <ProductType> | Save & Next | without      | occurred                     |          |     | <ApplicantType> | 162     | 167     | 1                                  |
      | <ApplicationStage> | <ProductType> | Save & Next | with         | not throw any error occurred |          |     | <ApplicantType> | 162     | 167     | 1                                  |


      #StoryID:CAS-110827
  #FeatureID:ACAUTOCAS-151,CAS-110827

  @Perishable
  Scenario Outline: ACAUTOCAS-9932: Residential Address marked as primary address automatically on clicking <Save_Next> button in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user add only one "Residential Address" in personal information
    And user checks for duplicates in personal info page
    When user clicks "<Save_Next>" button in personal information page
    And user open communication detail after clicking "<Save_Next>"
    Then "Residential Address" marked as primary address automatically in communication details
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Save        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Save & Next |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Save        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Save & Next |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |

  # ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Save & Next | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address           | 143                      |

#    ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Save        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Save & Next |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address           | 167                      |


    #FeatureID:ACAUTOCAS-151
  @Perishable
  Scenario Outline: ACAUTOCAS-9933: Automatic primary marking of address on clicking <Save_Next> button in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user add below address in personal information
      | personal_information.xlsx | address | <rowNum1> | Alternate Business Address |
      | personal_information.xlsx | address | <rowNum2> | Residential Address        |
    And user checks for duplicates in personal info page
    When user clicks "<Save_Next>" button in personal information page
    Then an error occurred to mark a primary address in communication details
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    @Conventional
         #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key | rowNum1 | rowNum2 | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     | 162     | 167     | 1                                  |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     | 162     | 167     | 1                                  |

      # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key | rowNum1 | rowNum2 | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     | 138     | 143     | 126                                |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     | 138     | 143     | 126                                |
#    ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category   | key | rowNum1 | rowNum2 | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> | <Category> |     | 138     | 143     | 126                                |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> | <Category> |     | 138     | 143     | 126                                |
#      ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#    ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key | rowNum1 | rowNum2 | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     | 162     | 167     | 1                                  |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     | 162     | 167     | 1                                  |



   #StoryID:CAS-53892
  #FeatureID:ACAUTOCAS-151,CAS-53892
  Scenario Outline: ACAUTOCAS-9934: "<Primary_Number>" field validation in Communication Details on selecting the radio button of "<Address>" to make it Primary Address in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user add "<Address>" in personal information
    And user open communication detail
    When user selects the radio button of "<Address>" to make it Primary Address
    Then "<Primary_Number>" field in Communication Details should be auto filled with same as in Address
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Primary_Number        | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Phone         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Mobile Number |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 163                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Phone         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Mobile Number |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 162                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Phone         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Mobile Number |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 165                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Phone         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Mobile Number |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 166                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Phone         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 167                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Mobile Number |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 167                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Primary_Number        | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Phone         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Mobile Number |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Phone         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Mobile Number |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Phone         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Mobile Number |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Phone         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Mobile Number |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Phone         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Mobile Number |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 143                      |

# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Primary_Number        | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Phone         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Mobile Number | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 139                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Phone         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Mobile Number | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 138                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Phone         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Mobile Number | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Phone         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Mobile Number | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 142                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Phone         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 143                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Mobile Number | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | personal_information.xlsx | address           | 143                      |

 #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicationStage   | Address                    | Primary_Number        | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Additional Address         | Primary Phone         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 163                      |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Additional Address         | Primary Mobile Number |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 163                      |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Alternate Business Address | Primary Phone         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 162                      |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Alternate Business Address | Primary Mobile Number |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 162                      |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Office/ Business Address   | Primary Phone         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 165                      |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Office/ Business Address   | Primary Mobile Number |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 165                      |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Permanent Address          | Primary Phone         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 166                      |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Permanent Address          | Primary Mobile Number |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 166                      |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Residential Address        | Primary Phone         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 167                      |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Residential Address        | Primary Mobile Number |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | personal_information.xlsx | address           | 167                      |

   #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-9935: Residential Address is mandatory to <Save_Next> in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    When user add multiple address in personal information without Residential Address
      | personal_information.xlsx | address | <rowNum1> | Alternate Business Address |
      | personal_information.xlsx | address | <rowNum2> | Office/ Business Address   |
      | personal_information.xlsx | address | <rowNum3> | Permanent Address          |
    And user checks for duplicates in personal info page
    And user clicks "<Save_Next>" button in personal information page
    Then an error message display to add Residential Address
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    @Conventional
         #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key | rowNum1 | rowNum2 | rowNum3 | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     | 162     | 165     | 166     | 1                                  |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     | 162     | 165     | 166     | 1                                  |

      # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key | rowNum1 | rowNum2 | rowNum3 | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     | 138     | 141     | 142     | 126                                |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     | 138     | 141     | 142     | 126                                |
#    ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category   | key | rowNum1 | rowNum2 | rowNum3 | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> | <Category> |     | 138     | 141     | 142     | 126                                |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> | <Category> |     | 138     | 141     | 142     | 126                                |
#      ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#    ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key | rowNum1 | rowNum2 | rowNum3 | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     | 162     | 165     | 166     | 1                                  |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     | 162     | 165     | 166     | 1                                  |

  #StoryID:CAS-110827
    #FeatureID:ACAUTOCAS-151,CAS-110827

  @Perishable
  Scenario Outline: ACAUTOCAS-9936: Residential Address marked as primary address automatically on clicking <Save_Next> button after deleting <Address> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add "<Address>" in personal information
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address1_rowNum>
    And user add "Residential Address" in personal information after adding "<Address>"
    And user checks for duplicates in personal info page
    And user deletes "<Address>" detail
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row <PersonalInfo_home_rowNum>
    And user enters required communication details in personal information page
    When user clicks "<Save_Next>" button on personal information page
    Then "Residential Address" marked as primary address automatically in communication details
    @Release @Part-1
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Save_Next   | Category | key | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_address1_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Save        |          |     | <ApplicantType> | 163                         | 167                          | 0                        |
      | <ApplicationStage> | <ProductType> | Additional Address         | Save & Next |          |     | <ApplicantType> | 163                         | 167                          | 0                        |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Save        |          |     | <ApplicantType> | 162                         | 167                          | 0                        |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Save & Next |          |     | <ApplicantType> | 162                         | 167                          | 0                        |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Save        |          |     | <ApplicantType> | 126                         | 167                          | 0                        |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Save & Next |          |     | <ApplicantType> | 126                         | 167                          | 0                        |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Save        |          |     | <ApplicantType> | 82                          | 167                          | 0                        |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Save & Next |          |     | <ApplicantType> | 82                          | 167                          | 0                        |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Save_Next   | Category | key | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_address1_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Save        |          |     | <ApplicantType> | 139                         | 143                          | 0                        |
      | <ApplicationStage> | <ProductType> | Additional Address         | Save & Next |          |     | <ApplicantType> | 139                         | 143                          | 0                        |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Save        |          |     | <ApplicantType> | 138                         | 143                          | 0                        |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Save & Next |          |     | <ApplicantType> | 138                         | 143                          | 0                        |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Save        |          |     | <ApplicantType> | 141                         | 143                          | 0                        |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Save & Next |          |     | <ApplicantType> | 141                         | 143                          | 0                        |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Save        |          |     | <ApplicantType> | 142                         | 143                          | 0                        |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Save & Next |          |     | <ApplicantType> | 142                         | 143                          | 0                        |
  #${ ProductType : ["IPF"]}
  #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Save_Next   | Category   | key | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_address1_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Save        | <Category> |     | <ApplicantType> | 139                         | 143                          | 0                        |
      | <ApplicationStage> | <ProductType> | Additional Address         | Save & Next | <Category> |     | <ApplicantType> | 139                         | 143                          | 0                        |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Save        | <Category> |     | <ApplicantType> | 138                         | 143                          | 0                        |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Save & Next | <Category> |     | <ApplicantType> | 138                         | 143                          | 0                        |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Save        | <Category> |     | <ApplicantType> | 141                         | 143                          | 0                        |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Save & Next | <Category> |     | <ApplicantType> | 141                         | 143                          | 0                        |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Save        | <Category> |     | <ApplicantType> | 142                         | 143                          | 0                        |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Save & Next | <Category> |     | <ApplicantType> | 142                         | 143                          | 0                        |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
 #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Save_Next   | Category | key | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_address1_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Save        |          |     | <ApplicantType> | 163                         | 167                          | 0                        |
      | <ApplicationStage> | <ProductType> | Additional Address         | Save & Next |          |     | <ApplicantType> | 163                         | 167                          | 0                        |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Save        |          |     | <ApplicantType> | 162                         | 167                          | 0                        |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Save & Next |          |     | <ApplicantType> | 162                         | 167                          | 0                        |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Save        |          |     | <ApplicantType> | 126                         | 167                          | 0                        |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Save & Next |          |     | <ApplicantType> | 126                         | 167                          | 0                        |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Save        |          |     | <ApplicantType> | 82                          | 167                          | 0                        |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Save & Next |          |     | <ApplicantType> | 82                          | 167                          | 0                        |

  #StoryID:CAS-110827
     #FeatureID:ACAUTOCAS-151,CAS-110827
  @Perishable

  Scenario Outline: ACAUTOCAS-9937: Primary address marking should remain intact after any modification in <Address> details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_home_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add "<Address>" in personal information
    And user open Communication Details accordion
    And user selects the radio button of "<Address>" to make it Primary Address
    When user edits "<Address>" details
    Then Primary address marking should remain intact after any modification in communication details on personal information
    @Release @Part-1
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Conventional
        #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | 162                         | 1                        |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | 163                         | 1                        |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | 164                         | 1                        |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | 165                         | 1                        |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | 167                         | 1                        |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | 138                         | 126                      |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | 139                         | 126                      |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | 140                         | 126                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | 141                         | 126                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | 143                         | 126                      |
 #${ ProductType : ["IPF"]}
  #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category   | key | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> |     | <ApplicantType> | 138                         | 126                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> |     | <ApplicantType> | 139                         | 126                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> |     | <ApplicantType> | 140                         | 126                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> |     | <ApplicantType> | 141                         | 126                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | <Category> |     | <ApplicantType> | 143                         | 126                      |
 #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
# ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | 162                         | 1                        |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | 163                         | 1                        |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | 164                         | 1                        |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | 165                         | 1                        |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | 167                         | 1                        |

 #StoryID:CAS-110827
   #FeatureID:ACAUTOCAS-151,CAS-110827
  @Perishable

  Scenario Outline: ACAUTOCAS-9938: If user deletes the marked primary Residential Address and after adding again Residential Address marked as primary address automatically on clicking <Save_Next> button in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add "Residential Address" in personal information details
    And user open Communication Details accordion
    And user selects the radio button of "Residential Address" to make it Primary Address
    And user deletes "Residential Address" detail
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add residential Address after Adding "<Address>"
    And user checks for duplicates in personal info page
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row <PersonalInfo_communication_rowNum>
    And user enters required communication details in personal information page
    When user clicks "<Save_Next>" button on personal information page
    Then "Residential Address" marked as primary address automatically in communication details
    @Release @Part-1
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address             | Save_Next   | Category | key | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Residential Address | Save        |          |     | <ApplicantType> | 167                         | 1                                  | 0                                 |
      | <ApplicationStage> | <ProductType> | Residential Address | Save & Next |          |     | <ApplicantType> | 167                         | 1                                  | 0                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address             | Save_Next   | Category | key | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Residential Address | Save        |          |     | <ApplicantType> | 143                         | 126                                | 0                                 |
      | <ApplicationStage> | <ProductType> | Residential Address | Save & Next |          |     | <ApplicantType> | 143                         | 126                                | 0                                 |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address             | Save_Next   | Category   | key | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Residential Address | Save        | <Category> |     | <ApplicantType> | 143                         | 126                                | 0                                 |
      | <ApplicationStage> | <ProductType> | Residential Address | Save & Next | <Category> |     | <ApplicantType> | 143                         | 126                                | 0                                 |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#    ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address             | Save_Next   | Category | key | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Residential Address | Save        |          |     | <ApplicantType> | 167                         | 1                                  | 0                                 |
      | <ApplicationStage> | <ProductType> | Residential Address | Save & Next |          |     | <ApplicantType> | 167                         | 1                                  | 0                                 |

 #StoryID:CAS-110827
  #FeatureID:ACAUTOCAS-151,CAS-110827
  @Perishable

  Scenario Outline: ACAUTOCAS-9939: Residential Address marked as primary address automatically on clicking <Save_Next> button in personal information for individual applicant co-applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user removes "Co-applicant" customer
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <PersonalInfo_home_rowNum>
    And user adds another "Co-applicant"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add "<Address>" in personal information
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum1>
    And user add residential Address after Adding "<Address>"
    And user checks for duplicates in personal info page
    And user deletes "<Address>" detail
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row <PersonalInfo_communication_rowNum>
    And user enters required communication details in personal information page
    When user clicks "<Save_Next>" button on personal information page
    Then "Residential Address" marked as primary address automatically in communication details
    @Release @Part-1
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key   | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_address_rowNum1 | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | coapp | Save        | <ApplicantType> | 163                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | coapp | Save & Next | <ApplicantType> | 163                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | coapp | Save        | <ApplicantType> | 162                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | coapp | Save & Next | <ApplicantType> | 162                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | coapp | Save        | <ApplicantType> | 126                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | coapp | Save & Next | <ApplicantType> | 126                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | coapp | Save        | <ApplicantType> | 82                          | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | coapp | Save & Next | <ApplicantType> | 82                          | 24                       | 1                                  | 167                          | 0                                 |

 # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key   | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_address_rowNum1 | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | coapp | Save        | <ApplicantType> | 139                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | coapp | Save & Next | <ApplicantType> | 139                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | coapp | Save        | <ApplicantType> | 138                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | coapp | Save & Next | <ApplicantType> | 138                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | coapp | Save        | <ApplicantType> | 141                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | coapp | Save & Next | <ApplicantType> | 141                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | coapp | Save        | <ApplicantType> | 142                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | coapp | Save & Next | <ApplicantType> | 142                         | 171                      | 126                                | 143                          | 0                                 |
  # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category   | key   | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_address_rowNum1 | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> | coapp | Save        | <ApplicantType> | 139                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> | coapp | Save & Next | <ApplicantType> | 139                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> | coapp | Save        | <ApplicantType> | 138                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> | coapp | Save & Next | <ApplicantType> | 138                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> | coapp | Save        | <ApplicantType> | 141                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> | coapp | Save & Next | <ApplicantType> | 141                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> | coapp | Save        | <ApplicantType> | 142                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> | coapp | Save & Next | <ApplicantType> | 142                         | 171                      | 126                                | 143                          | 0                                 |

      #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key   | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_address_rowNum1 | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | coapp | Save        | <ApplicantType> | 163                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | coapp | Save & Next | <ApplicantType> | 163                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | coapp | Save        | <ApplicantType> | 162                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | coapp | Save & Next | <ApplicantType> | 162                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | coapp | Save        | <ApplicantType> | 126                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | coapp | Save & Next | <ApplicantType> | 126                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | coapp | Save        | <ApplicantType> | 82                          | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | coapp | Save & Next | <ApplicantType> | 82                          | 24                       | 1                                  | 167                          | 0                                 |


   #StoryID:CAS-110827
  #FeatureID:ACAUTOCAS-151,CAS-110827
  @Perishable

  Scenario Outline: ACAUTOCAS-9940: Automatic primary marking of address on clicking <Save_Next> button in personal information for individual applicant co-applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <PersonalInfo_home_rowNum>
    And user adds another "Co-applicant"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user add below address in personal information
      | personal_information.xlsx | address | <rowNum1> | Alternate Business Address |
      | personal_information.xlsx | address | <rowNum2> | Residential Address        |
    And user checks for duplicates in personal info page
    When user clicks "<Save_Next>" button in personal information page
    Then an error occurred to mark a primary address in communication details
    @ImplementedBy-harshita.nayak
    @Release3
    @Release @Part-1
    @Conventional
         #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key   | rowNum1 | rowNum2 | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          | coapp | 162     | 167     | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          | coapp | 162     | 167     | 1                                  | 24                       |

      # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key   | rowNum1 | rowNum2 | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          | coapp | 138     | 143     | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          | coapp | 138     | 143     | 126                                | 171                      |
#    ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category   | key   | rowNum1 | rowNum2 | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> | <Category> | coapp | 138     | 143     | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> | <Category> | coapp | 138     | 143     | 126                                | 171                      |
#      ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#    ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key   | rowNum1 | rowNum2 | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          | coapp | 162     | 167     | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          | coapp | 162     | 167     | 1                                  | 24                       |
#

   #StoryID:CAS-53892
  #FeatureID:ACAUTOCAS-151,CAS-53892
  @Perishable
  Scenario Outline: ACAUTOCAS-13438: "<Primary_Number>" field validation in Communication Details on selecting the radio button of "<Address>" to make it Primary Address in personal information for individual applicant co-applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user removes "Co-applicant" customer
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <PersonalInfo_home_rowNum>
    And user adds another "Co-applicant"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add "<Address>" in personal information
    And user open Communication Details accordion
    When user selects the radio button of "<Address>" to make it Primary Address
    Then "<Primary_Number>" field in Communication Details should be auto filled with same "<Primary_Number>" which is filled in "<Address>"
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1 @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Primary_Number        | key   | ApplicantType   | Category | PersonalInfoWB            | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Phone         | coapp | <ApplicantType> |          | personal_information.xlsx | 163                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Mobile Number | coapp | <ApplicantType> |          | personal_information.xlsx | 163                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Phone         | coapp | <ApplicantType> |          | personal_information.xlsx | 162                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Mobile Number | coapp | <ApplicantType> |          | personal_information.xlsx | 162                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Phone         | coapp | <ApplicantType> |          | personal_information.xlsx | 165                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Mobile Number | coapp | <ApplicantType> |          | personal_information.xlsx | 165                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Phone         | coapp | <ApplicantType> |          | personal_information.xlsx | 166                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Mobile Number | coapp | <ApplicantType> |          | personal_information.xlsx | 166                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Phone         | coapp | <ApplicantType> |          | personal_information.xlsx | 167                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Mobile Number | coapp | <ApplicantType> |          | personal_information.xlsx | 167                         | 1                                  | 24                       |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Primary_Number        | key   | ApplicantType   | Category | PersonalInfoWB            | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Phone         | coapp | <ApplicantType> |          | personal_information.xlsx | 139                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Mobile Number | coapp | <ApplicantType> |          | personal_information.xlsx | 139                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Phone         | coapp | <ApplicantType> |          | personal_information.xlsx | 138                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Mobile Number | coapp | <ApplicantType> |          | personal_information.xlsx | 138                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Phone         | coapp | <ApplicantType> |          | personal_information.xlsx | 141                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Mobile Number | coapp | <ApplicantType> |          | personal_information.xlsx | 141                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Phone         | coapp | <ApplicantType> |          | personal_information.xlsx | 142                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Mobile Number | coapp | <ApplicantType> |          | personal_information.xlsx | 142                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Phone         | coapp | <ApplicantType> |          | personal_information.xlsx | 143                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Mobile Number | coapp | <ApplicantType> |          | personal_information.xlsx | 143                         | 126                                | 171                      |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Primary_Number        | key   | ApplicantType   | Category   | PersonalInfoWB            | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Phone         | coapp | <ApplicantType> | <Category> | personal_information.xlsx | 139                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Mobile Number | coapp | <ApplicantType> | <Category> | personal_information.xlsx | 139                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Phone         | coapp | <ApplicantType> | <Category> | personal_information.xlsx | 138                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Mobile Number | coapp | <ApplicantType> | <Category> | personal_information.xlsx | 138                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Phone         | coapp | <ApplicantType> | <Category> | personal_information.xlsx | 141                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Mobile Number | coapp | <ApplicantType> | <Category> | personal_information.xlsx | 141                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Phone         | coapp | <ApplicantType> | <Category> | personal_information.xlsx | 142                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Mobile Number | coapp | <ApplicantType> | <Category> | personal_information.xlsx | 142                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Phone         | coapp | <ApplicantType> | <Category> | personal_information.xlsx | 143                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Mobile Number | coapp | <ApplicantType> | <Category> | personal_information.xlsx | 143                         | 126                                | 171                      |
#      ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#    ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Primary_Number        | key   | ApplicantType   | Category | PersonalInfoWB            | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Phone         | coapp | <ApplicantType> |          | personal_information.xlsx | 163                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Mobile Number | coapp | <ApplicantType> |          | personal_information.xlsx | 163                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Phone         | coapp | <ApplicantType> |          | personal_information.xlsx | 162                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Mobile Number | coapp | <ApplicantType> |          | personal_information.xlsx | 162                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Phone         | coapp | <ApplicantType> |          | personal_information.xlsx | 165                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Mobile Number | coapp | <ApplicantType> |          | personal_information.xlsx | 165                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Phone         | coapp | <ApplicantType> |          | personal_information.xlsx | 166                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Mobile Number | coapp | <ApplicantType> |          | personal_information.xlsx | 166                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Phone         | coapp | <ApplicantType> |          | personal_information.xlsx | 167                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Mobile Number | coapp | <ApplicantType> |          | personal_information.xlsx | 167                         | 1                                  | 24                       |

     #StoryID:CAS-110827
  #FeatureID:ACAUTOCAS-151,CAS-110827
  @Perishable

  Scenario Outline: ACAUTOCAS-13866: After adding again Residential Address marked as primary address automatically on clicking <Save_Next> for individual applicant co-applicant at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user removes "Co-applicant" customer
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <PersonalInfo_home_rowNum>
    And user adds another "Co-applicant"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add "Residential Address" in personal information
    And user open Communication Details accordion
    And user selects the radio button of "Residential Address" to make it Primary Address
    And user deletes "Residential Address" details
    And user add residential Address after Adding "<Address>"
    And user checks for duplicates in personal info page
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row <PersonalInfo_communication_rowNum>
    And user enters required communication details in personal information page
    When user clicks "<Save_Next>" button on personal information page
    Then "Residential Address" marked as primary address automatically in communication details
    @Release @Part-1
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address             | Category | key   | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Residential Address |          | coapp | Save        | <ApplicantType> | 167                         | 24                       | 1                                  | 0                                 |
      | <ApplicationStage> | <ProductType> | Residential Address |          | coapp | Save & Next | <ApplicantType> | 167                         | 24                       | 1                                  | 0                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address             | Category | key   | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Residential Address |          | coapp | Save        | <ApplicantType> | 143                         | 171                      | 126                                | 0                                 |
      | <ApplicationStage> | <ProductType> | Residential Address |          | coapp | Save & Next | <ApplicantType> | 143                         | 171                      | 126                                | 0                                 |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address             | Category   | key   | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Residential Address | <Category> | coapp | Save        | <ApplicantType> | 143                         | 171                      | 126                                | 0                                 |
      | <ApplicationStage> | <ProductType> | Residential Address | <Category> | coapp | Save & Next | <ApplicantType> | 143                         | 171                      | 126                                | 0                                 |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address             | Category | key   | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Residential Address |          | coapp | Save        | <ApplicantType> | 167                         | 24                       | 1                                  | 0                                 |
      | <ApplicationStage> | <ProductType> | Residential Address |          | coapp | Save & Next | <ApplicantType> | 167                         | 24                       | 1                                  | 0                                 |

    #StoryID:CAS-110827
  #FeatureID:ACAUTOCAS-151,CAS-110827
  @Perishable

  Scenario Outline: ACAUTOCAS-9941: Primary address marking should remain intact after any modification in <Address> details in personal information for individual applicant co-applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user removes "Co-applicant" customer
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <PersonalInfo_home_rowNum>
    And user adds another "Co-applicant"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add "<Address>" in personal information
    And user open Communication Details accordion
    And user selects the radio button of "<Address>" to make it Primary Address
    When user edits "<Address>" details
    Then Primary address marking should remain intact after any modification in communication details on personal information
    @ImplementedBy-deep.maurya
    @Release @Part-1
    @Release3
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key   | PersonalInfo_address_rowNum | ApplicantType   | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | coapp | 162                         | <ApplicantType> | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | coapp | 163                         | <ApplicantType> | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | coapp | 165                         | <ApplicantType> | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Residential Address        |          | coapp | 167                         | <ApplicantType> | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | coapp | 82                          | <ApplicantType> | 24                       | 1                                  |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key   | PersonalInfo_address_rowNum | ApplicantType   | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | coapp | 138                         | <ApplicantType> | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | coapp | 139                         | <ApplicantType> | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | coapp | 141                         | <ApplicantType> | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Residential Address        |          | coapp | 143                         | <ApplicantType> | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | coapp | 142                         | <ApplicantType> | 171                      | 126                                |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category   | key   | PersonalInfo_address_rowNum | ApplicantType   | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> | coapp | 138                         | <ApplicantType> | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> | coapp | 139                         | <ApplicantType> | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> | coapp | 141                         | <ApplicantType> | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Residential Address        | <Category> | coapp | 143                         | <ApplicantType> | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> | coapp | 142                         | <ApplicantType> | 171                      | 126                                |
      #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key   | PersonalInfo_address_rowNum | ApplicantType   | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | coapp | 162                         | <ApplicantType> | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | coapp | 163                         | <ApplicantType> | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | coapp | 165                         | <ApplicantType> | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Residential Address        |          | coapp | 167                         | <ApplicantType> | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | coapp | 82                          | <ApplicantType> | 24                       | 1                                  |


    #StoryID:CAS-110827
    #FeatureID:ACAUTOCAS-151,CAS-110827
  @Perishable

  Scenario Outline: ACAUTOCAS-9942: Residential Address marked as primary address automatically on clicking <Save_Next> button after deleting <Address> in personal information for individual applicant co-applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user removes "Co-applicant" customer
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <PersonalInfo_home_rowNum>
    And user adds another "Co-applicant"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add "<Address>" in personal information
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum1>
    And user add residential Address after Adding "<Address>"
    And user checks for duplicates in personal info page
    And user deletes "<Address>" detail
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row <PersonalInfo_communication_rowNum>
    And user enters required communication details in personal information page
    When user clicks "<Save_Next>" button on personal information page
    Then "Residential Address" marked as primary address automatically in communication details
    @ImplementedBy-deep.maurya
    @Release3
    @Release @Part-1
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key   | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_address_rowNum1 | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | coapp | Save        | <ApplicantType> | 163                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | coapp | Save & Next | <ApplicantType> | 163                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | coapp | Save        | <ApplicantType> | 162                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | coapp | Save & Next | <ApplicantType> | 162                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | coapp | Save        | <ApplicantType> | 165                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | coapp | Save & Next | <ApplicantType> | 165                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | coapp | Save        | <ApplicantType> | 166                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | coapp | Save & Next | <ApplicantType> | 166                         | 24                       | 1                                  | 167                          | 0                                 |

 # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key   | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_address_rowNum1 | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | coapp | Save        | <ApplicantType> | 139                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | coapp | Save & Next | <ApplicantType> | 139                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | coapp | Save        | <ApplicantType> | 138                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | coapp | Save & Next | <ApplicantType> | 138                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | coapp | Save        | <ApplicantType> | 141                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | coapp | Save & Next | <ApplicantType> | 141                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | coapp | Save        | <ApplicantType> | 142                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | coapp | Save & Next | <ApplicantType> | 142                         | 171                      | 126                                | 143                          | 0                                 |
  # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category   | key   | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_address_rowNum1 | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> | coapp | Save        | <ApplicantType> | 139                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> | coapp | Save & Next | <ApplicantType> | 139                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> | coapp | Save        | <ApplicantType> | 138                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> | coapp | Save & Next | <ApplicantType> | 138                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> | coapp | Save        | <ApplicantType> | 141                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> | coapp | Save & Next | <ApplicantType> | 141                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> | coapp | Save        | <ApplicantType> | 142                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> | coapp | Save & Next | <ApplicantType> | 142                         | 171                      | 126                                | 143                          | 0                                 |

      #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key   | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_address_rowNum1 | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | coapp | Save        | <ApplicantType> | 163                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | coapp | Save & Next | <ApplicantType> | 163                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | coapp | Save        | <ApplicantType> | 162                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | coapp | Save & Next | <ApplicantType> | 162                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | coapp | Save        | <ApplicantType> | 165                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | coapp | Save & Next | <ApplicantType> | 165                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | coapp | Save        | <ApplicantType> | 166                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | coapp | Save & Next | <ApplicantType> | 166                         | 24                       | 1                                  | 167                          | 0                                 |

   #StoryID:CAS-110827
   #FeatureID:ACAUTOCAS-151,CAS-110827
  @Perishable

  Scenario Outline: ACAUTOCAS-9943: Residential Address marked as primary address automatically on clicking <Save_Next> button in personal information for individual applicant guarantor at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user removes "Guarantor" customer
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <PersonalInfo_home_rowNum>
    And user adds another "Guarantor"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add "<Address>" in personal information
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum1>
    And user add "Residential Address" in personal information after adding "<Address>"
    And user checks for duplicates in personal info page
    And user deletes "<Address>" detail
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row <PersonalInfo_communication_rowNum>
    And user enters required communication details in personal information page
    When user clicks "<Save_Next>" button on personal information page
    Then "Residential Address" marked as primary address automatically in communication details
    @Release @Part-1
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType    | Address                    | Category | key       | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_address_rowNum1 | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType>  | Additional Address         |          | guarantor | Save        | <ApplicantType> | 163                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType>  | Additional Address         |          | guarantor | Save & Next | <ApplicantType> | 163                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType>  | Alternate Business Address |          | guarantor | Save        | <ApplicantType> | 162                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType>  | Alternate Business Address |          | guarantor | Save & Next | <ApplicantType> | 162                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType>  | Office/ Business Address   |          | guarantor | Save        | <ApplicantType> | 126                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType>  | Office/ Business Address   |          | guarantor | Save & Next | <ApplicantType> | 126                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType>  | Permanent Address          |          | guarantor | Save        | <ApplicantType> | 82                          | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType>  | Permanent Address          |          | guarantor | Save & Next | <ApplicantType> | 82                          | 24                       | 1                                  | 167                          | 0                                 |

 # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key       | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_address_rowNum1 | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | guarantor | Save        | <ApplicantType> | 139                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | guarantor | Save & Next | <ApplicantType> | 139                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | guarantor | Save        | <ApplicantType> | 138                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | guarantor | Save & Next | <ApplicantType> | 138                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | guarantor | Save        | <ApplicantType> | 141                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | guarantor | Save & Next | <ApplicantType> | 141                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | guarantor | Save        | <ApplicantType> | 142                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | guarantor | Save & Next | <ApplicantType> | 142                         | 171                      | 126                                | 143                          | 0                                 |
  # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category   | key       | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_address_rowNum1 | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> | guarantor | Save        | <ApplicantType> | 139                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> | guarantor | Save & Next | <ApplicantType> | 139                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> | guarantor | Save        | <ApplicantType> | 138                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> | guarantor | Save & Next | <ApplicantType> | 138                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> | guarantor | Save        | <ApplicantType> | 141                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> | guarantor | Save & Next | <ApplicantType> | 141                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> | guarantor | Save        | <ApplicantType> | 142                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> | guarantor | Save & Next | <ApplicantType> | 142                         | 171                      | 126                                | 143                          | 0                                 |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType    | Address                    | Category | key       | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_address_rowNum1 | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType>  | Additional Address         |          | guarantor | Save        | <ApplicantType> | 163                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType>- | Additional Address         |          | guarantor | Save & Next | <ApplicantType> | 163                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType>  | Alternate Business Address |          | guarantor | Save        | <ApplicantType> | 162                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType>  | Alternate Business Address |          | guarantor | Save & Next | <ApplicantType> | 162                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType>  | Office/ Business Address   |          | guarantor | Save        | <ApplicantType> | 126                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType>  | Office/ Business Address   |          | guarantor | Save & Next | <ApplicantType> | 126                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType>  | Permanent Address          |          | guarantor | Save        | <ApplicantType> | 82                          | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType>  | Permanent Address          |          | guarantor | Save & Next | <ApplicantType> | 82                          | 24                       | 1                                  | 167                          | 0                                 |

 #StoryID:CAS-110827
  #FeatureID:ACAUTOCAS-151,CAS-110827
  @Perishable

  Scenario Outline: ACAUTOCAS-9944:Automatic primary marking of address on clicking <Save_Next> button in personal information for individual applicant guarantor at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <PersonalInfo_home_rowNum>
    And user adds another "Guarantor"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    When user add below address in personal information
      | personal_information.xlsx | address | <rowNum1> | Alternate Business Address |
      | personal_information.xlsx | address | <rowNum2> | Residential Address        |
    And user checks for duplicates in personal info page
    And user clicks "<Save_Next>" button in personal information page
    Then an error occurred to mark a primary address in communication details
    @Release @Part-1
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key       | rowNum1 | rowNum2 | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          | guarantor | 162     | 167     | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          | guarantor | 162     | 167     | 1                                  | 24                       |

      # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key       | rowNum1 | rowNum2 | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          | guarantor | 138     | 143     | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          | guarantor | 138     | 143     | 126                                | 171                      |
#    ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category   | key       | rowNum1 | rowNum2 | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> | <Category> | guarantor | 138     | 143     | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> | <Category> | guarantor | 138     | 143     | 126                                | 171                      |
#      ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#    ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key       | rowNum1 | rowNum2 | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          | guarantor | 162     | 167     | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          | guarantor | 162     | 167     | 1                                  | 24                       |

 #StoryID:CAS-53892
  #FeatureID:ACAUTOCAS-151,CAS-53892
  @Perishable
  Scenario Outline: ACAUTOCAS-9945: "<Primary_Number>" field validation in Communication Details on selecting the radio button of "<Address>" to make it Primary Address in personal information for individual guarantor at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user removes "Guarantor" customer
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <PersonalInfo_home_rowNum>
    And user adds another "Guarantor"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add "<Address>" in personal information
    And user open Communication Details accordion
    When user selects the radio button of "<Address>" to make it Primary Address
    Then "<Primary_Number>" field in Communication Details should be auto filled with same "<Primary_Number>" which is filled in "<Address>"
    @Release @Part-1
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Primary_Number        | key       | ApplicantType   | Category | PersonalInfoWB            | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Phone         | guarantor | <ApplicantType> |          | personal_information.xlsx | 163                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Mobile Number | guarantor | <ApplicantType> |          | personal_information.xlsx | 163                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Phone         | guarantor | <ApplicantType> |          | personal_information.xlsx | 162                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Mobile Number | guarantor | <ApplicantType> |          | personal_information.xlsx | 162                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Phone         | guarantor | <ApplicantType> |          | personal_information.xlsx | 165                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Mobile Number | guarantor | <ApplicantType> |          | personal_information.xlsx | 165                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Phone         | guarantor | <ApplicantType> |          | personal_information.xlsx | 166                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Mobile Number | guarantor | <ApplicantType> |          | personal_information.xlsx | 166                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Phone         | guarantor | <ApplicantType> |          | personal_information.xlsx | 167                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Mobile Number | guarantor | <ApplicantType> |          | personal_information.xlsx | 167                         | 1                                  | 24                       |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Primary_Number        | key       | ApplicantType   | Category | PersonalInfoWB            | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Phone         | guarantor | <ApplicantType> |          | personal_information.xlsx | 139                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Mobile Number | guarantor | <ApplicantType> |          | personal_information.xlsx | 139                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Phone         | guarantor | <ApplicantType> |          | personal_information.xlsx | 138                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Mobile Number | guarantor | <ApplicantType> |          | personal_information.xlsx | 138                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Phone         | guarantor | <ApplicantType> |          | personal_information.xlsx | 141                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Mobile Number | guarantor | <ApplicantType> |          | personal_information.xlsx | 141                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Phone         | guarantor | <ApplicantType> |          | personal_information.xlsx | 142                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Mobile Number | guarantor | <ApplicantType> |          | personal_information.xlsx | 142                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Phone         | guarantor | <ApplicantType> |          | personal_information.xlsx | 143                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Mobile Number | guarantor | <ApplicantType> |          | personal_information.xlsx | 143                         | 126                                | 171                      |
  # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Primary_Number        | key       | ApplicantType   | Category   | PersonalInfoWB            | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Phone         | guarantor | <ApplicantType> | <Category> | personal_information.xlsx | 139                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Mobile Number | guarantor | <ApplicantType> | <Category> | personal_information.xlsx | 139                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Phone         | guarantor | <ApplicantType> | <Category> | personal_information.xlsx | 138                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Mobile Number | guarantor | <ApplicantType> | <Category> | personal_information.xlsx | 138                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Phone         | guarantor | <ApplicantType> | <Category> | personal_information.xlsx | 141                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Mobile Number | guarantor | <ApplicantType> | <Category> | personal_information.xlsx | 141                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Phone         | guarantor | <ApplicantType> | <Category> | personal_information.xlsx | 142                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Mobile Number | guarantor | <ApplicantType> | <Category> | personal_information.xlsx | 142                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Phone         | guarantor | <ApplicantType> | <Category> | personal_information.xlsx | 143                         | 126                                | 171                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Mobile Number | guarantor | <ApplicantType> | <Category> | personal_information.xlsx | 143                         | 126                                | 171                      |
#      ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#    ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Primary_Number        | key       | ApplicantType   | Category | PersonalInfoWB            | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Phone         | guarantor | <ApplicantType> |          | personal_information.xlsx | 163                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Mobile Number | guarantor | <ApplicantType> |          | personal_information.xlsx | 163                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Phone         | guarantor | <ApplicantType> |          | personal_information.xlsx | 162                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Mobile Number | guarantor | <ApplicantType> |          | personal_information.xlsx | 162                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Phone         | guarantor | <ApplicantType> |          | personal_information.xlsx | 165                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Primary Mobile Number | guarantor | <ApplicantType> |          | personal_information.xlsx | 165                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Phone         | guarantor | <ApplicantType> |          | personal_information.xlsx | 166                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Mobile Number | guarantor | <ApplicantType> |          | personal_information.xlsx | 166                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Phone         | guarantor | <ApplicantType> |          | personal_information.xlsx | 167                         | 1                                  | 24                       |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Mobile Number | guarantor | <ApplicantType> |          | personal_information.xlsx | 167                         | 1                                  | 24                       |

    #Bug:CAS-116497
  #FeatureID:ACAUTOCAS-151,CAS-116497
  @Perishable
  Scenario Outline: ACAUTOCAS-9946: "<Primary_Number>" field validation in Communication Details on selection of address to make it Primary Address in personal information for individual guarantor at <ApplicationStage> in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user removes "Guarantor" customer
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <PersonalInfo_home_rowNum>
    And user adds another "Guarantor"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add "<Address>" in personal information
    And user open Communication Details accordion
    When user selects the radio button of "<Address>" to make it Primary Address
    Then "<Primary_Number>" field in Communication Details should be auto filled with same "<Primary_Number>" which is filled in "<Address>"
    @Release @Part-1
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key       | Primary_Number        | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | guarantor | Primary Phone         | <ApplicantType> | 163                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | guarantor | Primary Mobile Number | <ApplicantType> | 163                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | guarantor | Primary Phone         | <ApplicantType> | 162                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | guarantor | Primary Mobile Number | <ApplicantType> | 162                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | guarantor | Primary Phone         | <ApplicantType> | 165                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | guarantor | Primary Mobile Number | <ApplicantType> | 165                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | guarantor | Primary Phone         | <ApplicantType> | 82                          | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | guarantor | Primary Mobile Number | <ApplicantType> | 82                          | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Residential Address        |          | guarantor | Primary Phone         | <ApplicantType> | 167                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Residential Address        |          | guarantor | Primary Mobile Number | <ApplicantType> | 167                         | 24                       | 1                                  |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key       | Primary_Number        | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | guarantor | Primary Phone         | <ApplicantType> | 139                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | guarantor | Primary Mobile Number | <ApplicantType> | 139                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | guarantor | Primary Phone         | <ApplicantType> | 138                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | guarantor | Primary Mobile Number | <ApplicantType> | 138                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | guarantor | Primary Phone         | <ApplicantType> | 141                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | guarantor | Primary Mobile Number | <ApplicantType> | 141                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | guarantor | Primary Phone         | <ApplicantType> | 142                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | guarantor | Primary Mobile Number | <ApplicantType> | 142                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Residential Address        |          | guarantor | Primary Phone         | <ApplicantType> | 143                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Residential Address        |          | guarantor | Primary Mobile Number | <ApplicantType> | 143                         | 171                      | 126                                |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category   | key       | Primary_Number        | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> | guarantor | Primary Phone         | <ApplicantType> | 139                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> | guarantor | Primary Mobile Number | <ApplicantType> | 139                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> | guarantor | Primary Phone         | <ApplicantType> | 138                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> | guarantor | Primary Mobile Number | <ApplicantType> | 138                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> | guarantor | Primary Phone         | <ApplicantType> | 141                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> | guarantor | Primary Mobile Number | <ApplicantType> | 141                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> | guarantor | Primary Phone         | <ApplicantType> | 142                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> | guarantor | Primary Mobile Number | <ApplicantType> | 142                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Residential Address        | <Category> | guarantor | Primary Phone         | <ApplicantType> | 143                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Residential Address        | <Category> | guarantor | Primary Mobile Number | <ApplicantType> | 143                         | 171                      | 126                                |
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key       | Primary_Number        | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | guarantor | Primary Phone         | <ApplicantType> | 163                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | guarantor | Primary Mobile Number | <ApplicantType> | 163                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | guarantor | Primary Phone         | <ApplicantType> | 162                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | guarantor | Primary Mobile Number | <ApplicantType> | 162                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | guarantor | Primary Phone         | <ApplicantType> | 165                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | guarantor | Primary Mobile Number | <ApplicantType> | 165                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | guarantor | Primary Phone         | <ApplicantType> | 82                          | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | guarantor | Primary Mobile Number | <ApplicantType> | 82                          | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Residential Address        |          | guarantor | Primary Phone         | <ApplicantType> | 167                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Residential Address        |          | guarantor | Primary Mobile Number | <ApplicantType> | 167                         | 24                       | 1                                  |

     #StoryID:CAS-110827
   #FeatureID:ACAUTOCAS-151,CAS-110827
  @Perishable

  Scenario Outline: ACAUTOCAS-13867: If user deletes the marked primary Residential Address and after adding again Residential Address marked as primary address automatically on clicking <Save_Next> for individual applicant guarantor at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user removes "Guarantor" customer
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <PersonalInfo_home_rowNum>
    And user adds another "Guarantor"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add "Residential Address" in personal information
    And user open Communication Details accordion
    And user selects the radio button of "Residential Address" to make it Primary Address
    And user deletes "Residential Address" details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add residential Address after Adding "<Address>"
    And user checks for duplicates in personal info page
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row <PersonalInfo_communication_rowNum>
    And user enters required communication details in personal information page
    When user clicks "<Save_Next>" button on personal information page
    Then "Residential Address" marked as primary address automatically in communication details
    @Release @Part-1
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address             | Save_Next   | Category | key       | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Residential Address | Save        |          | guarantor | <ApplicantType> | 167                         | 24                       | 1                                  | 0                                 |
      | <ApplicationStage> | <ProductType> | Residential Address | Save & Next |          | guarantor | <ApplicantType> | 167                         | 24                       | 1                                  | 0                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address             | Save_Next   | Category | key       | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Residential Address | Save        |          | guarantor | <ApplicantType> | 143                         | 171                      | 126                                | 0                                 |
      | <ApplicationStage> | <ProductType> | Residential Address | Save & Next |          | guarantor | <ApplicantType> | 143                         | 171                      | 126                                | 0                                 |
# ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address             | Save_Next   | Category   | key       | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Residential Address | Save        | <Category> | guarantor | <ApplicantType> | 143                         | 171                      | 126                                | 0                                 |
      | <ApplicationStage> | <ProductType> | Residential Address | Save & Next | <Category> | guarantor | <ApplicantType> | 143                         | 171                      | 126                                | 0                                 |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#    ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address             | Save_Next   | Category | key       | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Residential Address | Save        |          | guarantor | <ApplicantType> | 167                         | 24                       | 1                                  | 0                                 |
      | <ApplicationStage> | <ProductType> | Residential Address | Save & Next |          | guarantor | <ApplicantType> | 167                         | 24                       | 1                                  | 0                                 |


    #StoryID:CAS-110827
  #FeatureID:ACAUTOCAS-151,CAS-110827
  @Perishable

  Scenario Outline: ACAUTOCAS-9947: Primary address marking should remain intact after any modification in <Address> details in personal information for individual applicant guarantor at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user removes "Guarantor" customer
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <PersonalInfo_home_rowNum>
    And user adds another "Guarantor"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add "<Address>" in personal information
    And user open Communication Details accordion
    And user selects the radio button of "<Address>" to make it Primary Address
    When user edits "<Address>" details
    Then Primary address marking should remain intact after any modification in communication details on personal information
    @Release @Part-1
    @ImplementedBy-priyanshu.kashyap
    @Release3
    @Conventional
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key       | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | guarantor | <ApplicantType> | 162                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | guarantor | <ApplicantType> | 163                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | guarantor | <ApplicantType> | 165                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Residential Address        |          | guarantor | <ApplicantType> | 167                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | guarantor | <ApplicantType> | 82                          | 24                       | 1                                  |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key       | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | guarantor | <ApplicantType> | 138                         | 24                       | 126                                |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | guarantor | <ApplicantType> | 139                         | 24                       | 126                                |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | guarantor | <ApplicantType> | 141                         | 24                       | 126                                |
      | <ApplicationStage> | <ProductType> | Residential Address        |          | guarantor | <ApplicantType> | 143                         | 24                       | 126                                |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | guarantor | <ApplicantType> | 142                         | 24                       | 126                                |
  # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category   | key       | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> | guarantor | <ApplicantType> | 138                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> | guarantor | <ApplicantType> | 139                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> | guarantor | <ApplicantType> | 141                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Residential Address        | <Category> | guarantor | <ApplicantType> | 143                         | 171                      | 126                                |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> | guarantor | <ApplicantType> | 142                         | 171                      | 126                                |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key       | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | guarantor | <ApplicantType> | 162                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | guarantor | <ApplicantType> | 163                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | guarantor | <ApplicantType> | 165                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Residential Address        |          | guarantor | <ApplicantType> | 167                         | 24                       | 1                                  |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | guarantor | <ApplicantType> | 82                          | 24                       | 1                                  |

    #StoryID:CAS-110827
  #FeatureID:ACAUTOCAS-151,CAS-110827
  @Perishable

  Scenario Outline: ACAUTOCAS-9948: Residential Address marked as primary address automatically on clicking <Save_Next> button after deleting <Address> in personal information for individual applicant guarantor at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user removes "Guarantor" customer
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <PersonalInfo_home_rowNum>
    And user adds another "Guarantor"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add "<Address>" in personal information
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum1>
    And user add residential Address after Adding "<Address>"
    And user checks for duplicates in personal info page
    And user deletes "<Address>" detail
    And user reads data from the excel file "personal_information.xlsx" under sheet "communication_details" and row <PersonalInfo_communication_rowNum>
    And user enters required communication details in personal information page
    When user clicks "<Save_Next>" button on personal information page
    Then "Residential Address" marked as primary address automatically in communication details
    @ImplementedBy-deep.maurya
    @Release3
    @Release @Part-1
    @Conventional
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key       | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_address_rowNum1 | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | guarantor | Save        | <ApplicantType> | 163                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | guarantor | Save & Next | <ApplicantType> | 163                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | guarantor | Save        | <ApplicantType> | 162                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | guarantor | Save & Next | <ApplicantType> | 162                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | guarantor | Save        | <ApplicantType> | 165                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | guarantor | Save & Next | <ApplicantType> | 165                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | guarantor | Save        | <ApplicantType> | 166                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | guarantor | Save & Next | <ApplicantType> | 166                         | 24                       | 1                                  | 167                          | 0                                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key       | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_address_rowNum1 | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | guarantor | Save        | <ApplicantType> | 139                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | guarantor | Save & Next | <ApplicantType> | 139                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | guarantor | Save        | <ApplicantType> | 138                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | guarantor | Save & Next | <ApplicantType> | 138                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | guarantor | Save        | <ApplicantType> | 141                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | guarantor | Save & Next | <ApplicantType> | 141                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | guarantor | Save        | <ApplicantType> | 142                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | guarantor | Save & Next | <ApplicantType> | 142                         | 171                      | 126                                | 143                          | 0                                 |
  # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category   | key       | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_address_rowNum1 | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> | guarantor | Save        | <ApplicantType> | 139                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> | guarantor | Save & Next | <ApplicantType> | 139                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> | guarantor | Save        | <ApplicantType> | 138                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> | guarantor | Save & Next | <ApplicantType> | 138                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> | guarantor | Save        | <ApplicantType> | 141                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> | guarantor | Save & Next | <ApplicantType> | 141                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> | guarantor | Save        | <ApplicantType> | 142                         | 171                      | 126                                | 143                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> | guarantor | Save & Next | <ApplicantType> | 142                         | 171                      | 126                                | 143                          | 0                                 |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key       | Save_Next   | ApplicantType   | PersonalInfo_address_rowNum | PersonalInfo_home_rowNum | PersonalInfo_identification_rowNum | PersonalInfo_address_rowNum1 | PersonalInfo_communication_rowNum |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | guarantor | Save        | <ApplicantType> | 163                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Additional Address         |          | guarantor | Save & Next | <ApplicantType> | 163                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | guarantor | Save        | <ApplicantType> | 162                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          | guarantor | Save & Next | <ApplicantType> | 162                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | guarantor | Save        | <ApplicantType> | 165                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          | guarantor | Save & Next | <ApplicantType> | 165                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | guarantor | Save        | <ApplicantType> | 166                         | 24                       | 1                                  | 167                          | 0                                 |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          | guarantor | Save & Next | <ApplicantType> | 166                         | 24                       | 1                                  | 167                          | 0                                 |

  #SquashID:02_CAS_64722,03_CAS_64722
  #FeatureID:ACAUTOCAS-151,CAS_64722
  @Perishable

  Scenario Outline: ACAUTOCAS-9949: Validate the office address to be Non mandatory during the application creation in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user click on address tab in personal information
    And user deletes "Office/ Business Address" details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_home_rowNum>
    And user deletes "Residential Address" details
    And user wants to add same "Residential Address" which is added already
    And user checks for duplicates in personal info page
    When user clicks "<Save_Next>" button in personal information page
    Then personal information should be saved successfully
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release3
    @Release @Part-1
      #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | Save_Next   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Save        | personal_information.xlsx | identification              | 1                                  | address              | 167                      |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Save & Next | personal_information.xlsx | identification              | 1                                  | address              | 167                      |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | Save_Next   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Save        | personal_information.xlsx | identification              | 126                                | address              | 143                      |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Save & Next | personal_information.xlsx | identification              | 126                                | address              | 143                      |

     # ${ ProductType : ["IPF"]}
  # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Category   | key | ApplicantType   | Save_Next   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Save        | personal_information.xlsx | identification              | 126                                | address              | 143                      |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Save & Next | personal_information.xlsx | identification              | 126                                | address              | 143                      |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | Save_Next   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Save        | personal_information.xlsx | identification              | 1                                  | address              | 167                      |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Save & Next | personal_information.xlsx | identification              | 1                                  | address              | 167                      |

#    ============================== Configuration based Scenarios ==========================================
    #  Prerequisites:Configuration should be '${address1},${address2},${street} ${streetName},${city},${state}-${pinCode},${country}' in configuration table
  #StoryID:CAS-102541
  #FeatureID:ACAUTOCAS-151,CAS-102541
  @Perishable
  Scenario Outline: ACAUTOCAS-9950: Full Address field validation for <Address> in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add "<Address>" in personal information
    When user edits "<Address>" details
    Then full address should be auto filled successfully as "<var>"
    @ImplementedBy-pallavi.singh
    @Release3
    @Release @Part-1
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | Address                    | var                                                       | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Alternate Business Address | address1, address2, street, city, state- pincode, country | 162                         | 1                                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Additional Address         | address1, address2, street, city, state- pincode, country | 163                         | 1                                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Additional Address         | address1, address2, street, city, state- pincode, country | 164                         | 1                                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Office/ Business Address   | address1, address2, street, city, state- pincode, country | 165                         | 1                                  |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | Address                    | var                                                       | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Alternate Business Address | address1, address2, street, city, state- pincode, country | 138                         | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Additional Address         | address1, address2, street, city, state- pincode, country | 139                         | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Additional Address         | address1, address2, street, city, state- pincode, country | 140                         | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Office/ Business Address   | address1, address2, street, city, state- pincode, country | 141                         | 126                                |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Category   | key | ApplicantType   | Address                    | var                                                       | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Alternate Business Address | address1, address2, street, city, emirate- poBox, country | 138                         | 126                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Additional Address         | address1, address2, street, city, emirate- poBox, country | 139                         | 126                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Additional Address         | address1, address2, street, city, emirate- poBox, country | 140                         | 126                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Office/ Business Address   | address1, address2, street, city, emirate- poBox, country | 141                         | 126                                |
  #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | Address                    | var                                                       | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Alternate Business Address | address1, address2, street, city, state- pincode, country | 162                         | 1                                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Additional Address         | address1, address2, street, city, state- pincode, country | 163                         | 1                                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Additional Address         | address1, address2, street, city, state- pincode, country | 164                         | 1                                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Office/ Business Address   | address1, address2, street, city, state- pincode, country | 165                         | 1                                  |


 #StoryID:CAS-102541
   #FeatureID:ACAUTOCAS-151,CAS-102541
  @Perishable
  Scenario Outline: ACAUTOCAS-9951: <Field> field validation after filling full address field of <Address> in personal information at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_address_rowNum>
    And user add "<Address>" in personal information
    When user edits "<Address>" details
    Then full address should be auto filled successfully as "<Field>"
    @ImplementedBy-bhanu.singh1
    @Release3
    @Release @Part-1
    @Conventional
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | Address                    | Field                                                     | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Alternate Business Address | address1, address2, street, city, state- pincode, country | 162                         | 1                                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Additional Address         | address1, address2, street, city, state- pincode, country | 163                         | 1                                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Additional Address         | address1, address2, street, city, state- pincode, country | 164                         | 1                                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Office/ Business Address   | address1, address2, street, city, state- pincode, country | 165                         | 1                                  |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | Address                    | Field                                                     | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Alternate Business Address | address1, address2, street, city, state- pincode, country | 138                         | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Additional Address         | address1, address2, street, city, state- pincode, country | 139                         | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Additional Address         | address1, address2, street, city, state- pincode, country | 140                         | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Office/ Business Address   | address1, address2, street, city, state- pincode, country | 141                         | 126                                |
 #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Category   | key | ApplicantType   | Address                    | Field                                                     | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Alternate Business Address | address1, address2, street, city, emirate- poBox, country | 138                         | 126                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Additional Address         | address1, address2, street, city, emirate- poBox, country | 139                         | 126                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Additional Address         | address1, address2, street, city, emirate- poBox, country | 140                         | 126                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Office/ Business Address   | address1, address2, street, city, emirate- poBox, country | 141                         | 126                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Residential Address        | address1, address2, street, city, emirate- poBox, country | 143                         | 126                                |

  #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | Address                    | Field                                                     | PersonalInfo_address_rowNum | PersonalInfo_identification_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Alternate Business Address | address1, address2, street, city, state- pincode, country | 162                         | 1                                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Additional Address         | address1, address2, street, city, state- pincode, country | 163                         | 1                                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Additional Address         | address1, address2, street, city, state- pincode, country | 164                         | 1                                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Office/ Business Address   | address1, address2, street, city, state- pincode, country | 165                         | 1                                  |

    #========= Additional Info button/ configuration based
  #  Prerequisite:user have to below Authority
  # YAKEEN_EDIT_ENABLED
  #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-9952: Additional Info button validation in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    When user clicks on additional info button
    Then Customer Additional Info page should be open
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release3
    @Release @Part-1
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

      #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-9953: Minimize the Customer Additional Info page in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    When user clicks on additional info button
    And user minimize the Customer Additional Info page
    Then Customer Additional Info page should be minimized
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release3
    @Release @Part-1
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
 # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

 #${ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-9954: Maximize the minimized Customer Additional Info page in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user clicks on additional info button
    And user minimize the Customer Additional Info page
    When user maximize the minimized Customer Additional Info page
    Then Customer Additional Info page should be maximized
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release3
    @Release @Part-1
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
 # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-9955: <Close_Cancel> the Customer Additional Info page in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user clicks on additional info button
    When user "<Close_Cancel>" the Customer Additional Info page
    Then Customer Additional Info should be closed
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release3
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | Close_Cancel |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | close        |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Cancel       |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | Close_Cancel |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | close        |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Cancel       |

# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Category   | key | ApplicantType   | Close_Cancel |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | close        |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Cancel       |
 #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | Close_Cancel |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | close        |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Cancel       |

  #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-9956: Validation of warning message while cancel the <Address> adding process in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_home_rowNum>
    And user add "<Address>" in personal information
    When user clicks on "Cancel" button in personal information page
    Then warning popped up message should be display
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release3
    @Release @Part-1
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 162                      |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 163                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 167                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 165                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 166                      |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
      # ${ ProductType : ["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 138                      |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 139                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 143                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 142                      |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    # ${ ProductType : ["IPF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 138                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 139                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 143                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 142                      |
#${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 162                      |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 163                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 167                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 165                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 166                      |


  #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-9957: Cancel the <Address> adding process personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_identification>" and row <PersonalInfo_identification_rowNum>
    And user clicks on the identification section of personal info page
    And user fill identification details
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_home_rowNum>
    And user add "<Address>" in personal information
    When user clicks on "Cancel" button in personal information page
    Then "Cancel" should work properly
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release3
    @Release @Part-1
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 162                      |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 163                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 167                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 165                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 166                      |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
      # ${ ProductType : ["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 138                      |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 139                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 143                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 142                      |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
      # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category   | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 138                      |
      | <ApplicationStage> | <ProductType> | Additional Address         | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 139                      |
      | <ApplicationStage> | <ProductType> | Residential Address        | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 143                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 141                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          | <Category> |     | <ApplicantType> | personal_information.xlsx | identification              | 126                                | address              | 142                      |
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Category | key | ApplicantType   | PersonalInfoWB            | PersonalInfo_identification | PersonalInfo_identification_rowNum | PersonalInfo_address | PersonalInfo_home_rowNum |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 162                      |
      | <ApplicationStage> | <ProductType> | Additional Address         |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 163                      |
      | <ApplicationStage> | <ProductType> | Residential Address        |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 167                      |
      | <ApplicationStage> | <ProductType> | Office/ Business Address   |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 165                      |
      | <ApplicationStage> | <ProductType> | Permanent Address          |          |     | <ApplicantType> | personal_information.xlsx | identification              | 1                                  | address              | 166                      |


  #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-9958: Validate <Field> field of primary applicant under Applicant Information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    When user navigates to applicant details page of "<ApplicationStage>"
    Then "<Field>" field should be present in applicant information tab
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release3
    @Release @Part-1
       #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | Field                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Photo                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Customer Name          |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Neo Cust ID            |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Date Of Birth          |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Id Number              |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Phone Number(Landline) |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Phone Number(Mobile)   |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | Field                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Photo                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Customer Name          |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Neo Cust ID            |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Date Of Birth          |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Id Number              |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Phone Number(Landline) |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Phone Number(Mobile)   |
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Category   | key | ApplicantType   | Field                  |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Photo                  |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Customer Name          |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Neo Cust ID            |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Date Of Birth          |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Id Number              |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Phone Number(Landline) |
      | <ApplicationStage> | <ProductType> | <Category> |     | <ApplicantType> | Phone Number(Mobile)   |
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | key | ApplicantType   | Field                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Photo                  |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Customer Name          |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Neo Cust ID            |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Date Of Birth          |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Id Number              |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Phone Number(Landline) |
      | <ApplicationStage> | <ProductType> |          |     | <ApplicantType> | Phone Number(Mobile)   |

  #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-9959: Validate <Field> field of co-applicant under Applicant Information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    When user navigates to applicant details page of "<ApplicationStage>"
    Then "<Field>" field should be present in applicant information tab
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release3
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | key   | ApplicantType   | Field                  |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Photo                  |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Customer Name          |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Neo Cust ID            |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Date Of Birth          |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Id Number              |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Phone Number(Landline) |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Phone Number(Mobile)   |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Category | key   | ApplicantType   | Field                  |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Photo                  |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Customer Name          |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Neo Cust ID            |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Date Of Birth          |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Id Number              |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Phone Number(Landline) |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Phone Number(Mobile)   |

      # ${ ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Category   | key   | ApplicantType   | Field                  |
      | <ApplicationStage> | <ProductType> | <Category> | coapp | <ApplicantType> | Photo                  |
      | <ApplicationStage> | <ProductType> | <Category> | coapp | <ApplicantType> | Customer Name          |
      | <ApplicationStage> | <ProductType> | <Category> | coapp | <ApplicantType> | Neo Cust ID            |
      | <ApplicationStage> | <ProductType> | <Category> | coapp | <ApplicantType> | Date Of Birth          |
      | <ApplicationStage> | <ProductType> | <Category> | coapp | <ApplicantType> | Id Number              |
      | <ApplicationStage> | <ProductType> | <Category> | coapp | <ApplicantType> | Phone Number(Landline) |
      | <ApplicationStage> | <ProductType> | <Category> | coapp | <ApplicantType> | Phone Number(Mobile)   |

#  ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#    ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | key   | ApplicantType   | Field                  |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Photo                  |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Customer Name          |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Neo Cust ID            |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Date Of Birth          |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Id Number              |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Phone Number(Landline) |
      | <ApplicationStage> | <ProductType> |          | coapp | <ApplicantType> | Phone Number(Mobile)   |


  #FeatureID:ACAUTOCAS-151
  Scenario Outline: ACAUTOCAS-9960: Validate <Field> field of guarantor under Applicant Information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    When user navigates to applicant details page of "<ApplicationStage>"
    Then "<Field>" field should be present in applicant information tab
    @Conventional
    @ImplementedBy-pallavi.singh
    @Release3
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | key       | ApplicantType   | Field                  |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Photo                  |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Customer Name          |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Neo Cust ID            |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Date Of Birth          |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Id Number              |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Phone Number(Landline) |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Phone Number(Mobile)   |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    Examples:
      | ApplicationStage   | ProductType   | Category | key       | ApplicantType   | Field                  |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Photo                  |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Customer Name          |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Neo Cust ID            |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Date Of Birth          |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Id Number              |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Phone Number(Landline) |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Phone Number(Mobile)   |

      # ${ ProductType : ["IPF"]}
      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ Category:["bonds","shares","metals"]}
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-harshita.nayak
    @SaveNext
    Examples:
      | ApplicationStage   | ProductType   | Category   | key       | ApplicantType   | Field                  |
      | <ApplicationStage> | <ProductType> | <Category> | guarantor | <ApplicantType> | Photo                  |
      | <ApplicationStage> | <ProductType> | <Category> | guarantor | <ApplicantType> | Customer Name          |
      | <ApplicationStage> | <ProductType> | <Category> | guarantor | <ApplicantType> | Neo Cust ID            |
      | <ApplicationStage> | <ProductType> | <Category> | guarantor | <ApplicantType> | Date Of Birth          |
      | <ApplicationStage> | <ProductType> | <Category> | guarantor | <ApplicantType> | Id Number              |
      | <ApplicationStage> | <ProductType> | <Category> | guarantor | <ApplicantType> | Phone Number(Landline) |
      | <ApplicationStage> | <ProductType> | <Category> | guarantor | <ApplicantType> | Phone Number(Mobile)   |

#  ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#    ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | key       | ApplicantType   | Field                  |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Photo                  |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Customer Name          |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Neo Cust ID            |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Date Of Birth          |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Id Number              |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Phone Number(Landline) |
      | <ApplicationStage> | <ProductType> |          | guarantor | <ApplicantType> | Phone Number(Mobile)   |


#Sqaush:11_CAS-25615
  #FeatureID:ACAUTOCAS-151,11_CAS-25615
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","JLG","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Credit Approval","Post Approval","Tranche Initiation", "APP RECOMMENDATION","SENT TO OPS",]}
  @OnHold
  Scenario Outline: ACAUTOCAS-13439: Address details data moved to "<ApplicationStage>" stage in "<ProductType>"
    And user open "<ProductType>" application of individual applicant at Lead Details
    And user fills address details in personal information
    And user user check for duplicates
    And user save the address details
    When user moves application till "<ApplicationStage>" stage
    And user check that address details
    Then address details should be match at "<ApplicationStage>" stage
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


#StoryId:CAS-99514,CAS-60700
   #FeatureID:ACAUTOCAS-151,CAS-99514
  @Perishable
  Scenario Outline: ACAUTOCAS-13440: Add <Copied_Address> same as added <Address> address type functionality should get <Throw_notThrow> warning message on <Button> button in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    When user add only one "<Address>" for "<Copied_Address>" in personal information
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_home_rowNum1>
    And user open "<Address>" in edit mode for "<Copied_Address>"
    And user create "<Copied_Address>" same as address type
    And user click on "<Button>"
    Then "<Copied_Address>" "<Throw_notThrow>" warning message
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release @Part-1
    @Release3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Address                    | Category | key | Copied_Address             | Button | Throw_notThrow      | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_home_rowNum1 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Additional Address         |          |     | Permanent Address          | Done   | throw an error      | personal_information.xlsx | address           | 163                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Additional Address         |          |     | Residential Address        | Done   | throw an error      | personal_information.xlsx | address           | 163                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Permanent Address          |          |     | Residential Address        | Done   | not throw any error | personal_information.xlsx | address           | 166                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Residential Address        |          |     | Permanent Address          | Done   | not throw any error | personal_information.xlsx | address           | 167                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Alternate Business Address |          |     | Permanent Address          | Done   | throw an error      | personal_information.xlsx | address           | 162                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Alternate Business Address |          |     | Residential Address        | Done   | throw an error      | personal_information.xlsx | address           | 162                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Office/ Business Address   |          |     | Alternate Business Address | Done   | not throw any error | personal_information.xlsx | address           | 165                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Office/ Business Address   |          |     | Permanent Address          | Done   | throw an error      | personal_information.xlsx | address           | 165                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Office/ Business Address   |          |     | Residential Address        | Done   | throw an error      | personal_information.xlsx | address           | 165                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Additional Address         |          |     | Alternate Business Address | Done   | not throw any error | personal_information.xlsx | address           | 163                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Additional Address         |          |     | Office/ Business Address   | Done   | throw an error      | personal_information.xlsx | address           | 163                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Permanent Address          |          |     | Alternate Business Address | Done   | not throw any error | personal_information.xlsx | address           | 166                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Permanent Address          |          |     | Office/ Business Address   | Done   | not throw any error | personal_information.xlsx | address           | 166                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Residential Address        |          |     | Alternate Business Address | Done   | not throw any error | personal_information.xlsx | address           | 167                      | 167                       |


  Scenario Outline: Add <Copied_Address> same as added <Address> address type functionality on <Button> in personal information at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user navigate to address accordion in personal information screen on "<ApplicationStage>"
    When user add only one "<Address>" for "<Copied_Address>" in personal information
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInfo_home_rowNum1>
    And user open "<Address>" in edit mode for "<Copied_Address>"
    And user create "<Copied_Address>" same as address type
    And user click on "Done"
    And user marks primary address in personal information
    And user click on "<Button>"
    Then address details should save successfully
    @Conventional
    @ImplementedBy-bhanu.singh1
    @Release @Part-1
    @Release3
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Address                  | Category | key | Copied_Address             | Button               | Throw_notThrow      | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_home_rowNum1 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Permanent Address        |          |     | Residential Address        | Check for Duplicates | not throw any error | personal_information.xlsx | address           | 166                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Residential Address      |          |     | Permanent Address          | Check for Duplicates | not throw any error | personal_information.xlsx | address           | 167                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Office/ Business Address |          |     | Alternate Business Address | Check for Duplicates | not throw any error | personal_information.xlsx | address           | 165                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Additional Address       |          |     | Alternate Business Address | Check for Duplicates | not throw any error | personal_information.xlsx | address           | 163                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Permanent Address        |          |     | Alternate Business Address | Check for Duplicates | not throw any error | personal_information.xlsx | address           | 166                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Permanent Address        |          |     | Office/ Business Address   | Check for Duplicates | not throw any error | personal_information.xlsx | address           | 166                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Residential Address      |          |     | Alternate Business Address | Check for Duplicates | not throw any error | personal_information.xlsx | address           | 167                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Permanent Address        |          |     | Residential Address        | Save                 | not throw any error | personal_information.xlsx | address           | 166                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Residential Address      |          |     | Permanent Address          | Save                 | not throw any error | personal_information.xlsx | address           | 167                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Office/ Business Address |          |     | Alternate Business Address | Save                 | not throw any error | personal_information.xlsx | address           | 165                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Additional Address       |          |     | Alternate Business Address | Save                 | not throw any error | personal_information.xlsx | address           | 163                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Permanent Address        |          |     | Alternate Business Address | Save                 | not throw any error | personal_information.xlsx | address           | 166                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Permanent Address        |          |     | Office/ Business Address   | Save                 | not throw any error | personal_information.xlsx | address           | 166                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Residential Address      |          |     | Alternate Business Address | Save                 | not throw any error | personal_information.xlsx | address           | 167                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Permanent Address        |          |     | Residential Address        | Save & Next          | not throw any error | personal_information.xlsx | address           | 166                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Residential Address      |          |     | Permanent Address          | Save & Next          | not throw any error | personal_information.xlsx | address           | 167                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Office/ Business Address |          |     | Alternate Business Address | Save & Next          | not throw any error | personal_information.xlsx | address           | 165                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Additional Address       |          |     | Alternate Business Address | Save & Next          | not throw any error | personal_information.xlsx | address           | 163                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Permanent Address        |          |     | Alternate Business Address | Save & Next          | not throw any error | personal_information.xlsx | address           | 166                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Permanent Address        |          |     | Office/ Business Address   | Save & Next          | not throw any error | personal_information.xlsx | address           | 166                      | 167                       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Residential Address      |          |     | Alternate Business Address | Save & Next          | not throw any error | personal_information.xlsx | address           | 167                      | 167                       |

