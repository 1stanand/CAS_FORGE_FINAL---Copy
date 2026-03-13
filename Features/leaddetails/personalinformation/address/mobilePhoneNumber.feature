@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ReviewedByDEV
@AppInfoAdoption
#${ApplicantType:["indiv","nonindiv"]}
#FeatureID-ACAUTOCAS-151
Feature: Mobile phone number in address details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7


  Scenario Outline: ACAUTOCAS-3983:Mobile phone number country should be editable in <Address> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    When user edit country of mobile phone number in "<Address>"
    Then mobile phone number country should be editable
    @Conventional
    @Release @Part-1
    @ImplementedBy-atul.mishra
     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Address                    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Additional Address         | personal_information.xlsx | address              | 139                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Alternate Business Address | personal_information.xlsx | address              | 138                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Office Address             | personal_information.xlsx | address              | 141                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Permanent Address          | personal_information.xlsx | address              | 142                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Residential Address        | personal_information.xlsx | address              | 143                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Address                    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Additional Address         | personal_information.xlsx | address              | 139                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Alternate Business Address | personal_information.xlsx | address              | 138                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Office Address             | personal_information.xlsx | address              | 141                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Permanent Address          | personal_information.xlsx | address              | 142                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Residential Address        | personal_information.xlsx | address              | 143                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

      # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Address                    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | Additional Address         | personal_information.xlsx | address              | 139                         | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Alternate Business Address | personal_information.xlsx | address              | 138                         | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Office Address             | personal_information.xlsx | address              | 141                         | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Permanent Address          | personal_information.xlsx | address              | 142                         | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Residential Address        | personal_information.xlsx | address              | 143                         | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | Address                    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Additional Address         | personal_information.xlsx | address              | 139                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Alternate Business Address | personal_information.xlsx | address              | 138                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Office Address             | personal_information.xlsx | address              | 141                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Permanent Address          | personal_information.xlsx | address              | 142                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Residential Address        | personal_information.xlsx | address              | 143                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  Scenario Outline: ACAUTOCAS-3984:Mobile phone no should be of maximum 10 digits in <Address> at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    When user fills mobile phone number in "<Address>"
    Then mobile phone no should be max 10 digits
    @Conventional
    @Release @Part-1
    @ImplementedBy-atul.mishra
     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Address                    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Additional Address         | personal_information.xlsx | address              | 139                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Alternate Business Address | personal_information.xlsx | address              | 138                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Office Address             | personal_information.xlsx | address              | 141                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Permanent Address          | personal_information.xlsx | address              | 142                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Residential Address        | personal_information.xlsx | address              | 143                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |

   # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
   # ${ProductType:["IAF","IHF"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Address                    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Additional Address         | personal_information.xlsx | address              | 139                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Alternate Business Address | personal_information.xlsx | address              | 138                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Office Address             | personal_information.xlsx | address              | 141                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Permanent Address          | personal_information.xlsx | address              | 142                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Residential Address        | personal_information.xlsx | address              | 143                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      # ${ProductType:["IPF"]}
     #${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-vipin.kishor
    Examples:
      | Address                    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category   | key |
      | Additional Address         | personal_information.xlsx | address              | 139                         | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Alternate Business Address | personal_information.xlsx | address              | 138                         | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Office Address             | personal_information.xlsx | address              | 141                         | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Permanent Address          | personal_information.xlsx | address              | 142                         | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |
      | Residential Address        | personal_information.xlsx | address              | 143                         | <ProductType> | <ApplicationStage> | <ApplicantType> | <Category> |     |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | Address                    | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | ProductType   | ApplicationStage   | ApplicantType   | Category | key |
      | Additional Address         | personal_information.xlsx | address              | 139                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Alternate Business Address | personal_information.xlsx | address              | 138                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Office Address             | personal_information.xlsx | address              | 141                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Permanent Address          | personal_information.xlsx | address              | 142                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Residential Address        | personal_information.xlsx | address              | 143                         | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
