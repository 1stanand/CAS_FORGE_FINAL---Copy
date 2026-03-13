@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-
@TechReviewedBy-
@Part-3

Feature:Organization Address Details


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #FeatureID-ACAUTOCAS-11452,CAS-99291
  #StoryID:CAS-99291
  Scenario Outline: ACAUTOCAS-13486: Capability to accept multiple <Address> in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    When user add multiple "<Address>" in organization address
      | personal_information.xlsx | address | 120 | Alternate Business Address                       |
      | personal_information.xlsx | address | 121 | Alternate Business Address                       |
      | personal_information.xlsx | address | 122 | Additional Address with purpose combination      |
      | personal_information.xlsx | address | 123 | Additional Address with purpose combination      |
      | personal_information.xlsx | address | 124 | Additional Address with same purpose combination |
      | personal_information.xlsx | address | 125 | Additional Address with same purpose combination |
      | personal_information.xlsx | address | 126 | Office/ Business Address                         |
      | personal_information.xlsx | address | 127 | Office/ Business Address                         |
    Then multiple "<Address>" should be added successfully
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                                          |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address                       |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address with purpose combination      |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address with same purpose combination |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address                         |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                                          |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address                       |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address with purpose combination      |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address with same purpose combination |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address                         |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Address                                          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address                       |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address with purpose combination      |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address with same purpose combination |
      | <ApplicationStage> | <ProductType> | <Category> |     | Office/ Business Address                         |

  #StoryID:CAS-102674,CAS-25615
  #SquashID:06_CAS-109608
  #FeatureID-ACAUTOCAS-11452,CAS-109608,CAS-25615,CAS-102674
  Scenario Outline: ACAUTOCAS-13487: Required <Field> field validation for Additional Address in Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user click on add new address
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 122
    And user selects organization address type as "Additional Address"
    When user click on Required to check required fields of "Additional Address"
    Then "<Field>" field should be present for "Additional Address" in Address as required field
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field                                  |
      | <ApplicationStage> | <ProductType> |          |     | Address Type                           |
      | <ApplicationStage> | <ProductType> |          |     | Purpose                                |
      | <ApplicationStage> | <ProductType> |          |     | Country                                |
      | <ApplicationStage> | <ProductType> |          |     | Flat/Plot Number                       |
      | <ApplicationStage> | <ProductType> |          |     | PinCode                                |
      | <ApplicationStage> | <ProductType> |          |     | State                                  |
      | <ApplicationStage> | <ProductType> |          |     | City conditional mandatory             |
      | <ApplicationStage> | <ProductType> |          |     | Village conditional  mandatory         |
      | <ApplicationStage> | <ProductType> |          |     | Create another after this one checkbox |
   # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field                                  |
      | <ApplicationStage> | <ProductType> |          |     | Address Type                           |
      | <ApplicationStage> | <ProductType> |          |     | Purpose                                |
      | <ApplicationStage> | <ProductType> |          |     | Country                                |
      | <ApplicationStage> | <ProductType> |          |     | Flat/Plot Number                       |
      | <ApplicationStage> | <ProductType> |          |     | PinCode                                |
      | <ApplicationStage> | <ProductType> |          |     | State                                  |
      | <ApplicationStage> | <ProductType> |          |     | City conditional mandatory             |
      | <ApplicationStage> | <ProductType> |          |     | Village conditional  mandatory         |
      | <ApplicationStage> | <ProductType> |          |     | Create another after this one checkbox |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Field                                  |
      | <ApplicationStage> | <ProductType> | <Category> |     | Address Type                           |
      | <ApplicationStage> | <ProductType> | <Category> |     | Purpose                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Country                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Flat/Plot Number                       |
      | <ApplicationStage> | <ProductType> | <Category> |     | PinCode                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | State                                  |
      | <ApplicationStage> | <ProductType> | <Category> |     | City conditional mandatory             |
      | <ApplicationStage> | <ProductType> | <Category> |     | Village conditional  mandatory         |
      | <ApplicationStage> | <ProductType> | <Category> |     | Create another after this one checkbox |

  #StoryID:CAS-102674,CAS-25615
  #FeatureID-ACAUTOCAS-11452,CAS-25615,CAS-102674
  Scenario Outline: ACAUTOCAS-13488: Fields validation in All Fields for Additional Address in Organization Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user click on add new address
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 122
    And user selects organization address type as "Additional Address"
    When user select All Fields in Personal Information
    Then following below fields should be present for "Additional Address" in Organization Address
      | Field                                  |
      | Address Type                           |
      | Purpose                                |
      | Full Address                           |
      | Country                                |
      | Flat/Plot Number                       |
      | Address Line 2                         |
      | Address Line 3                         |
      | PinCode                                |
      | Region                                 |
      | State                                  |
      | City                                   |
      | District                               |
      | Taluka                                 |
      | Village                                |
      | Residence Status                       |
      | Residence Type                         |
      | Landmark                               |
      | Duration at this Address               |
      | Duration at this City                  |
      | Primary Phone                          |
      | Mobile Phone                           |
      | Current Address checkbox               |
      | Create another after this one checkbox |
      | Is address verified checkbox           |
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <Category> |     |

  #StoryID:CAS-102674,CAS-25615
  #FeatureID-ACAUTOCAS-11452,CAS-102674,CAS-25615
  Scenario Outline: ACAUTOCAS-13489: Field type validation of <Field> field for Additional Address in Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user click on add new address
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 122
    When user selects organization address type as "Additional Address"
    Then field type of "<Field>" field should "<Field_Type>" field in Address for "Additional Address"
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","DDE"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field                                  | Field_Type     |
      | <ApplicationStage> | <ProductType> |          |     | Address Type                           | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Purpose                                | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Full Address                           | input          |
      | <ApplicationStage> | <ProductType> |          |     | Country                                | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Flat/Plot Number                       | input          |
      | <ApplicationStage> | <ProductType> |          |     | Address Line 2                         | input          |
      | <ApplicationStage> | <ProductType> |          |     | Address Line 3                         | input          |
      | <ApplicationStage> | <ProductType> |          |     | PinCode                                | list of values |
      | <ApplicationStage> | <ProductType> |          |     | Region                                 | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | State                                  | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | City                                   | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | District                               | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Taluka                                 | input          |
      | <ApplicationStage> | <ProductType> |          |     | Village                                | input          |
      | <ApplicationStage> | <ProductType> |          |     | Residence Status                       | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Residence Type                         | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Landmark                               | textarea       |
      | <ApplicationStage> | <ProductType> |          |     | Duration at this Address               | input          |
      | <ApplicationStage> | <ProductType> |          |     | Duration at this City                  | input          |
      | <ApplicationStage> | <ProductType> |          |     | Primary Phone                          | input          |
      | <ApplicationStage> | <ProductType> |          |     | Mobile Phone                           | input          |
      | <ApplicationStage> | <ProductType> |          |     | Current Address checkbox               | checkbox       |
      | <ApplicationStage> | <ProductType> |          |     | Create Same As Address checkbox        | checkbox       |
      | <ApplicationStage> | <ProductType> |          |     | Create another after this one checkbox | checkbox       |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","DDE"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field                                  | Field_Type     |
      | <ApplicationStage> | <ProductType> |          |     | Address Type                           | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Purpose                                | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Full Address                           | input          |
      | <ApplicationStage> | <ProductType> |          |     | Country                                | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Flat/Plot Number                       | input          |
      | <ApplicationStage> | <ProductType> |          |     | Address Line 2                         | input          |
      | <ApplicationStage> | <ProductType> |          |     | Address Line 3                         | input          |
      | <ApplicationStage> | <ProductType> |          |     | PinCode                                | list of values |
      | <ApplicationStage> | <ProductType> |          |     | Region                                 | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | State                                  | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | City                                   | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | District                               | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Taluka                                 | input          |
      | <ApplicationStage> | <ProductType> |          |     | Village                                | input          |
      | <ApplicationStage> | <ProductType> |          |     | Residence Status                       | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Residence Type                         | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Landmark                               | textarea       |
      | <ApplicationStage> | <ProductType> |          |     | Duration at this Address               | input          |
      | <ApplicationStage> | <ProductType> |          |     | Duration at this City                  | input          |
      | <ApplicationStage> | <ProductType> |          |     | Primary Phone                          | input          |
      | <ApplicationStage> | <ProductType> |          |     | Mobile Phone                           | input          |
      | <ApplicationStage> | <ProductType> |          |     | Current Address checkbox               | checkbox       |
      | <ApplicationStage> | <ProductType> |          |     | Create Same As Address checkbox        | checkbox       |
      | <ApplicationStage> | <ProductType> |          |     | Create another after this one checkbox | checkbox       |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","DDE"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Field                                  | Field_Type     |
      | <ApplicationStage> | <ProductType> | <Category> |     | Address Type                           | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | Purpose                                | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | Full Address                           | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Country                                | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | Flat/Plot Number                       | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Address Line 2                         | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Address Line 3                         | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | PinCode                                | list of values |
      | <ApplicationStage> | <ProductType> | <Category> |     | Region                                 | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | State                                  | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | City                                   | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | District                               | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | Taluka                                 | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Village                                | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Residence Status                       | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | Residence Type                         | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | Landmark                               | textarea       |
      | <ApplicationStage> | <ProductType> | <Category> |     | Duration at this Address               | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Duration at this City                  | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Primary Phone                          | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Mobile Phone                           | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Current Address checkbox               | checkbox       |
      | <ApplicationStage> | <ProductType> | <Category> |     | Create Same As Address checkbox        | checkbox       |
      | <ApplicationStage> | <ProductType> | <Category> |     | Create another after this one checkbox | checkbox       |

  #FeatureID-ACAUTOCAS-11452
  Scenario Outline: ACAUTOCAS-13490: Required field validation for Alternate Business Address in Organization Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user click on add new address
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 120
    And user selects organization address type as "Alternate Business Address"
    When user click on Required to check required fields of "Alternate Business Address"
    Then following below fields should be present for "Alternate Business Address" in Organization address as required field
      | Field                                  |
      | Address Type                           |
      | Country                                |
      | Flat/Plot Number                       |
      | PinCode                                |
      | State                                  |
      | City conditional mandatory             |
      | Village conditional  mandatory         |
      | Create another after this one checkbox |
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
     # ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <Category> |     |

  #FeatureID-ACAUTOCAS-11452
  Scenario Outline: ACAUTOCAS-13491: Field validation in All Fields for Alternate Business Address in Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user click on add new address
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 120
    And user selects organization address type as "Alternate Business Address"
    When user select All Fields in Personal Information
    Then following below fields should be present for "Alternate Business Address" in Organization Address
      | Field                                  |
      | Address Type                           |
      | Full Address                           |
      | Country                                |
      | Flat/Plot Number                       |
      | Address Line 2                         |
      | Address Line 3                         |
      | PinCode                                |
      | Region                                 |
      | State                                  |
      | City                                   |
      | District                               |
      | Taluka                                 |
      | Village                                |
      | Landmark                               |
      | Duration at this Address               |
      | Duration at this City                  |
      | Primary Phone                          |
      | Mobile Phone                           |
      | Current Address checkbox               |
      | Create another after this one checkbox |
      | Is address verified checkbox           |
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <Category> |     |

  #FeatureID-ACAUTOCAS-11452
  Scenario Outline: ACAUTOCAS-13492: Field type validation of <Field> field in Address for Alternate Business Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user click on add new address
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 120
    When user selects organization address type as "Alternate Business Address"
    Then field type of "<Field>" field should "<Field_Type>" field in Address for "Alternate Business Address"
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field                                  | Field_Type     |
      | <ApplicationStage> | <ProductType> |          |     | Address Type                           | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Purpose                                | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Full Address                           | input          |
      | <ApplicationStage> | <ProductType> |          |     | Country                                | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Flat/Plot Number                       | input          |
      | <ApplicationStage> | <ProductType> |          |     | Address Line 2                         | input          |
      | <ApplicationStage> | <ProductType> |          |     | Address Line 3                         | input          |
      | <ApplicationStage> | <ProductType> |          |     | PinCode                                | list of values |
      | <ApplicationStage> | <ProductType> |          |     | Region                                 | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | State                                  | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | City                                   | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | District                               | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Taluka                                 | input          |
      | <ApplicationStage> | <ProductType> |          |     | Village                                | input          |
      | <ApplicationStage> | <ProductType> |          |     | Landmark                               | textarea       |
      | <ApplicationStage> | <ProductType> |          |     | Duration at this Address               | input          |
      | <ApplicationStage> | <ProductType> |          |     | Duration at this City                  | input          |
      | <ApplicationStage> | <ProductType> |          |     | Primary Phone                          | input          |
      | <ApplicationStage> | <ProductType> |          |     | Mobile Phone                           | input          |
      | <ApplicationStage> | <ProductType> |          |     | Current Address checkbox               | checkbox       |
      | <ApplicationStage> | <ProductType> |          |     | Create Same As Address checkbox        | checkbox       |
      | <ApplicationStage> | <ProductType> |          |     | Create another after this one checkbox | checkbox       |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field                                  | Field_Type     |
      | <ApplicationStage> | <ProductType> |          |     | Address Type                           | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Purpose                                | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Full Address                           | input          |
      | <ApplicationStage> | <ProductType> |          |     | Country                                | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Flat/Plot Number                       | input          |
      | <ApplicationStage> | <ProductType> |          |     | Address Line 2                         | input          |
      | <ApplicationStage> | <ProductType> |          |     | Address Line 3                         | input          |
      | <ApplicationStage> | <ProductType> |          |     | PinCode                                | list of values |
      | <ApplicationStage> | <ProductType> |          |     | Region                                 | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | State                                  | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | City                                   | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | District                               | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Taluka                                 | input          |
      | <ApplicationStage> | <ProductType> |          |     | Village                                | input          |
      | <ApplicationStage> | <ProductType> |          |     | Landmark                               | textarea       |
      | <ApplicationStage> | <ProductType> |          |     | Duration at this Address               | input          |
      | <ApplicationStage> | <ProductType> |          |     | Duration at this City                  | input          |
      | <ApplicationStage> | <ProductType> |          |     | Primary Phone                          | input          |
      | <ApplicationStage> | <ProductType> |          |     | Mobile Phone                           | input          |
      | <ApplicationStage> | <ProductType> |          |     | Current Address checkbox               | checkbox       |
      | <ApplicationStage> | <ProductType> |          |     | Create Same As Address checkbox        | checkbox       |
      | <ApplicationStage> | <ProductType> |          |     | Create another after this one checkbox | checkbox       |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Field                                  | Field_Type     |
      | <ApplicationStage> | <ProductType> | <Category> |     | Address Type                           | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | Purpose                                | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | Full Address                           | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Country                                | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | Flat/Plot Number                       | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Address Line 2                         | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Address Line 3                         | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | PinCode                                | list of values |
      | <ApplicationStage> | <ProductType> | <Category> |     | Region                                 | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | State                                  | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | City                                   | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | District                               | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | Taluka                                 | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Village                                | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Landmark                               | textarea       |
      | <ApplicationStage> | <ProductType> | <Category> |     | Duration at this Address               | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Duration at this City                  | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Primary Phone                          | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Mobile Phone                           | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Current Address checkbox               | checkbox       |
      | <ApplicationStage> | <ProductType> | <Category> |     | Create Same As Address checkbox        | checkbox       |
      | <ApplicationStage> | <ProductType> | <Category> |     | Create another after this one checkbox | checkbox       |

  #FeatureID-ACAUTOCAS-11452
  Scenario Outline: ACAUTOCAS-13493: Required <Field> field validation for Office_Business Address in Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user click on add new address
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 126
    And user selects organization address type as "Office/ Business Address"
    When user click on Required to check required fields of "Office/ Business Address"
    Then following below fields should be present for "Office/ Business Address" in Organization address as required field
      | Field                                  |
      | Address Type                           |
      | Country                                |
      | Flat/Plot Number                       |
      | PinCode                                |
      | State                                  |
      | City conditional mandatory             |
      | Village conditional  mandatory         |
      | Create another after this one checkbox |
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <Category> |     |

  #FeatureID-ACAUTOCAS-11452
  Scenario Outline: ACAUTOCAS-13494: Field validation in All Fields for Office_Business Address in Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user click on add new address
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 126
    And user selects organization address type as "Office/ Business Address"
    When user select All Fields in Personal Information
    Then following below fields should be present for "Office/ Business Address" in Organization Address
      | Field                                  |
      | Address Type                           |
      | Full Address                           |
      | Country                                |
      | Flat/Plot Number                       |
      | Address Line 2                         |
      | Address Line 3                         |
      | PinCode                                |
      | Region                                 |
      | State                                  |
      | City                                   |
      | District                               |
      | Taluka                                 |
      | Village                                |
      | Landmark                               |
      | Duration at this Address               |
      | Duration at this City                  |
      | Primary Phone                          |
      | Mobile Phone                           |
      | Current Address checkbox               |
      | Create another after this one checkbox |
      | Is address verified checkbox           |
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <Category> |     |


  #FeatureID-ACAUTOCAS-11452
  Scenario Outline: ACAUTOCAS-13495: Field type validation of <Field> field in Address for Office_Business Address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user click on add new address
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 126
    When user selects organization address type as "Office/ Business Address"
    Then field type of "<Field>" field should "<Field_Type>" field in Address for "Office/ Business Address"
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field                                  | Field_Type     |
      | <ApplicationStage> | <ProductType> |          |     | Address Type                           | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Purpose                                | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Full Address                           | input          |
      | <ApplicationStage> | <ProductType> |          |     | Country                                | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Flat/Plot Number                       | input          |
      | <ApplicationStage> | <ProductType> |          |     | Address Line 2                         | input          |
      | <ApplicationStage> | <ProductType> |          |     | Address Line 3                         | input          |
      | <ApplicationStage> | <ProductType> |          |     | PinCode                                | list of values |
      | <ApplicationStage> | <ProductType> |          |     | Region                                 | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | State                                  | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | City                                   | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | District                               | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Taluka                                 | input          |
      | <ApplicationStage> | <ProductType> |          |     | Village                                | input          |
      | <ApplicationStage> | <ProductType> |          |     | Landmark                               | textarea       |
      | <ApplicationStage> | <ProductType> |          |     | Duration at this Address               | input          |
      | <ApplicationStage> | <ProductType> |          |     | Duration at this City                  | input          |
      | <ApplicationStage> | <ProductType> |          |     | Primary Phone                          | input          |
      | <ApplicationStage> | <ProductType> |          |     | Mobile Phone                           | input          |
      | <ApplicationStage> | <ProductType> |          |     | Current Address checkbox               | checkbox       |
      | <ApplicationStage> | <ProductType> |          |     | Create Same As Address checkbox        | checkbox       |
      | <ApplicationStage> | <ProductType> |          |     | Create another after this one checkbox | checkbox       |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field                                  | Field_Type     |
      | <ApplicationStage> | <ProductType> |          |     | Address Type                           | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Purpose                                | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Full Address                           | input          |
      | <ApplicationStage> | <ProductType> |          |     | Country                                | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Flat/Plot Number                       | input          |
      | <ApplicationStage> | <ProductType> |          |     | Address Line 2                         | input          |
      | <ApplicationStage> | <ProductType> |          |     | Address Line 3                         | input          |
      | <ApplicationStage> | <ProductType> |          |     | PinCode                                | list of values |
      | <ApplicationStage> | <ProductType> |          |     | Region                                 | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | State                                  | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | City                                   | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | District                               | drop down      |
      | <ApplicationStage> | <ProductType> |          |     | Taluka                                 | input          |
      | <ApplicationStage> | <ProductType> |          |     | Village                                | input          |
      | <ApplicationStage> | <ProductType> |          |     | Landmark                               | textarea       |
      | <ApplicationStage> | <ProductType> |          |     | Duration at this Address               | input          |
      | <ApplicationStage> | <ProductType> |          |     | Duration at this City                  | input          |
      | <ApplicationStage> | <ProductType> |          |     | Primary Phone                          | input          |
      | <ApplicationStage> | <ProductType> |          |     | Mobile Phone                           | input          |
      | <ApplicationStage> | <ProductType> |          |     | Current Address checkbox               | checkbox       |
      | <ApplicationStage> | <ProductType> |          |     | Create Same As Address checkbox        | checkbox       |
      | <ApplicationStage> | <ProductType> |          |     | Create another after this one checkbox | checkbox       |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Field                                  | Field_Type     |
      | <ApplicationStage> | <ProductType> | <Category> |     | Address Type                           | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | Purpose                                | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | Full Address                           | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Country                                | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | Flat/Plot Number                       | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Address Line 2                         | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Address Line 3                         | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | PinCode                                | list of values |
      | <ApplicationStage> | <ProductType> | <Category> |     | Region                                 | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | State                                  | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | City                                   | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | District                               | drop down      |
      | <ApplicationStage> | <ProductType> | <Category> |     | Taluka                                 | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Village                                | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Landmark                               | textarea       |
      | <ApplicationStage> | <ProductType> | <Category> |     | Duration at this Address               | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Duration at this City                  | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Primary Phone                          | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Mobile Phone                           | input          |
      | <ApplicationStage> | <ProductType> | <Category> |     | Current Address checkbox               | checkbox       |
      | <ApplicationStage> | <ProductType> | <Category> |     | Create Same As Address checkbox        | checkbox       |
      | <ApplicationStage> | <ProductType> | <Category> |     | Create another after this one checkbox | checkbox       |


#Copy address functionality: Addition of validation to check mandatory fields in copied record

  #StoryId:CAS-99514
  #FeatureID-ACAUTOCAS-11452,CAS-99514
  Scenario Outline: ACAUTOCAS-13496: Copy address functionality in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    When user add "<Address>" in organization address
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_copyRowNum>
    And user copy from an existing "<Address>" to add another "<Copied_Address>"
    And user selects organization address type as "<Copied_Address>"
    And user click on "<Button>"
    Then "<Copied_Address>" "<Throw_notThrow>" message
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | Copied_Address             | Button | Throw_notThrow      | PersonalInformation_address_rowNum | PersonalInformation_address_copyRowNum |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Additional Address         | Done   | throw an error      | 120                                | 122                                    |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Additional Address         | Done   | throw an error      | 126                                | 122                                    |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Alternate Business Address | Done   | not throw any error | 122                                | 120                                    |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Office/ Business Address   | Done   | not throw any error | 122                                | 126                                    |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | Copied_Address             | Button | Throw_notThrow      | PersonalInformation_address_rowNum | PersonalInformation_address_copyRowNum |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Additional Address         | Done   | throw an error      | 120                                | 122                                    |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Additional Address         | Done   | throw an error      | 126                                | 122                                    |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Alternate Business Address | Done   | not throw any error | 122                                | 120                                    |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Office/ Business Address   | Done   | not throw any error | 122                                | 126                                    |

# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Address                    | Copied_Address             | Button | Throw_notThrow      | PersonalInformation_address_rowNum | PersonalInformation_address_copyRowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | Additional Address         | Done   | throw an error      | 120                                | 122                                    |
      | <ApplicationStage> | <ProductType> | <Category> |     | Office/ Business Address   | Additional Address         | Done   | throw an error      | 126                                | 122                                    |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | Alternate Business Address | Done   | not throw any error | 122                                | 120                                    |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | Office/ Business Address   | Done   | not throw any error | 122                                | 126                                    |


  #StoryID:CAS-102674
  #FeatureID-ACAUTOCAS-11452,CAS-102674
  Scenario Outline: ACAUTOCAS-13497: <Field> field validation for <Address_City> in <Address_Type> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    And user click on add new address icon in organization Address
    When user selects organization address type as "<Address_Type>"
    Then "<Field>" field for "<Address_City>" should be display as Calendar field
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field     | Address_City                | Address_Type               | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | From Date | Duration at current Address | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | To Date   | Duration at current Address | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | From Date | Duration at Current City    | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | To Date   | Duration at Current City    | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | From Date | Duration at current Address | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | To Date   | Duration at current Address | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | From Date | Duration at Current City    | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | To Date   | Duration at Current City    | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | From Date | Duration at current Address | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | To Date   | Duration at current Address | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | From Date | Duration at Current City    | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | To Date   | Duration at Current City    | Office/ Business Address   | 126                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field     | Address_City                | Address_Type               | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | From Date | Duration at current Address | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | To Date   | Duration at current Address | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | From Date | Duration at Current City    | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | To Date   | Duration at Current City    | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | From Date | Duration at current Address | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | To Date   | Duration at current Address | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | From Date | Duration at Current City    | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | To Date   | Duration at Current City    | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | From Date | Duration at current Address | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | To Date   | Duration at current Address | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | From Date | Duration at Current City    | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | To Date   | Duration at Current City    | Office/ Business Address   | 126                                |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Field     | Address_City                | Address_Type               | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | From Date | Duration at current Address | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | To Date   | Duration at current Address | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | From Date | Duration at Current City    | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | To Date   | Duration at Current City    | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | From Date | Duration at current Address | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | To Date   | Duration at current Address | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | From Date | Duration at Current City    | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | To Date   | Duration at Current City    | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | From Date | Duration at current Address | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | To Date   | Duration at current Address | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | From Date | Duration at Current City    | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | To Date   | Duration at Current City    | Office/ Business Address   | 126                                |

  #StoryID:CAS-102674
  #FeatureID-ACAUTOCAS-11452,CAS-102674
  Scenario Outline: ACAUTOCAS-13498: <Field> validation for <Address_City> in <Address_Type> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    And user click on add new address icon in organization Address
    And user selects organization address type as "<Address_Type>"
    And user fills To Date field for "<Address_City>"
    When user fills From Date field for "<Address_City>"
    Then "<Field>" field should be display in two separate block
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field           | Address_City                | Address_Type               | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Office/ Business Address   | 126                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field           | Address_City                | Address_Type               | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Office/ Business Address   | 126                                |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Field           | Address_City                | Address_Type               | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at current address | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at Current City    | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at current address | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at Current City    | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at current address | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at Current City    | Office/ Business Address   | 126                                |

  #StoryID:CAS-102674
  #FeatureID-ACAUTOCAS-11452,CAS-102674
  Scenario Outline: ACAUTOCAS-13499: <Field> calculation for <Address_City> in <Address_Type> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    And user click on add new address icon in organization Address
    And user selects organization address type as "<Address_Type>"
    And user fills To Date field for "<Address_City>"
    When user fills From Date field for "<Address_City>"
    Then "<Field>" field should be calculated correctly for "<Address_City>"
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field           | Address_City                | Address_Type               | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Office/ Business Address   | 126                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field           | Address_City                | Address_Type               | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Office/ Business Address   | 126                                |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Field           | Address_City                | Address_Type               | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at current address | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at Current City    | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at current address | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at Current City    | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at current address | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at Current City    | Office/ Business Address   | 126                                |


  #StoryID:CAS-102674
  #FeatureID-ACAUTOCAS-11452,CAS-102674
  Scenario Outline: ACAUTOCAS-13500: <Field> calculation for <Address_City> in <Address_Type> if Current Address checkbox is checked at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    And user click on add new address icon in organization Address
    And user selects organization address type as "<Address_Type>"
    And user checked Current Address checkbox
    When user fills From Date field for "<Address_City>"
    Then "<Field>" field should be calculated correctly as per current system date for "<Address_City>"
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field           | Address_City                | Address_Type               | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Office/ Business Address   | 126                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field           | Address_City                | Address_Type               | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at current address | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | Year and Months | Duration at Current City    | Office/ Business Address   | 126                                |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Field           | Address_City                | Address_Type               | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at current address | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at Current City    | Additional Address         | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at current address | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at Current City    | Alternate Business Address | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at current address | Office/ Business Address   | 126                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Year and Months | Duration at Current City    | Office/ Business Address   | 126                                |

  #FeatureID-ACAUTOCAS-11452
  Scenario Outline: ACAUTOCAS-13501: Adding duplicate Office Address in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 126
    When user add "Office/ Business Address" in organization address
    And user wants to add same "Office/ Business Address" which is added already in organization address
    Then "Office/ Business Address" should not add with duplicate address error
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <Category> |     |


  #FeatureID-ACAUTOCAS-11452
  Scenario Outline: ACAUTOCAS-13502: Adding duplicate <Address> in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    When user add "<Address>" in organization address
    And user wants to add same "<Address>" which is added already in organization address
    Then "<Address>" should not throw any error added without any error
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                                          | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address                       | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address with purpose combination      | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address with same purpose combination | 124                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address                         | 126                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                                          | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address                       | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address with purpose combination      | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address with same purpose combination | 124                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address                         | 126                                |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Address                                          | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address                       | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address with purpose combination      | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address with same purpose combination | 124                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Office/ Business Address                         | 126                                |


  #FeatureID-ACAUTOCAS-11452
  @Sanity
  Scenario Outline: ACAUTOCAS-13503: Edit the added <Address> in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    When user add "<Address>" in organization address
    And user edits "<Address>" details in organization address
    Then "<Address>" should be edited successfully
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | 126                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | 126                                |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Office/ Business Address   | 126                                |

  #15_CAS-99291
  #FeatureID-ACAUTOCAS-11452,CAS-99291
  Scenario Outline: ACAUTOCAS-13504: Delete the added <Address> in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    When user add "<Address>" in organization address
    And user deletes "<Address>" details
    Then "<Address>" should be deleted successfully
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | 126                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | 126                                |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Office/ Business Address   | 126                                |


  #FeatureID-ACAUTOCAS-11452
  Scenario Outline: ACAUTOCAS-13505: Communication details <Communication_Column> column validation after adding address in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 120
    When user add "Alternate Business Address" in organization address
    And user open communication detail for non individual applicant
    Then added "Alternate Business Address" address details should be display in communication details with "<Communication_Column>"
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Communication_Column |
      | <ApplicationStage> | <ProductType> |          |     | Address              |
      | <ApplicationStage> | <ProductType> |          |     | Country              |
      | <ApplicationStage> | <ProductType> |          |     | Address Type         |
      | <ApplicationStage> | <ProductType> |          |     | State                |
      | <ApplicationStage> | <ProductType> |          |     | City                 |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Communication_Column |
      | <ApplicationStage> | <ProductType> |          |     | Address              |
      | <ApplicationStage> | <ProductType> |          |     | Country              |
      | <ApplicationStage> | <ProductType> |          |     | Address Type         |
      | <ApplicationStage> | <ProductType> |          |     | State                |
      | <ApplicationStage> | <ProductType> |          |     | City                 |
    # ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Communication_Column |
      | <ApplicationStage> | <ProductType> | <Category> |     | Address              |
      | <ApplicationStage> | <ProductType> | <Category> |     | Country              |
      | <ApplicationStage> | <ProductType> | <Category> |     | Address Type         |
      | <ApplicationStage> | <ProductType> | <Category> |     | State                |
      | <ApplicationStage> | <ProductType> | <Category> |     | City                 |



  #FeatureID-ACAUTOCAS-11452
  Scenario Outline: ACAUTOCAS-13506: Address details from communication details removed on deleting of added <Address> in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    When user add "Alternate Business Address" in organization address
    And user deletes "<Address>" details
    And user open communication detail for non individual applicant
    Then "<Address>" details should removed from communication details
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | 126                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | 126                                |
  # ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Office/ Business Address   | 126                                |


  #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-11452,CAS-110827
  Scenario Outline: ACAUTOCAS-13507: Click on <Save_Next> button <With_Without> marking added multiple address as Primary Address in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user add multiple address in organization address
      | personal_information.xlsx | address | 120 | Alternate Business Address |
      | personal_information.xlsx | address | 125 | Additional Address         |
      | personal_information.xlsx | address | 127 | Office/ Business Address   |
    And user checks for duplicates in personal info page for non individual applicant
    And user open communication detail for non individual applicant
    When user clicks "<Save_Next>" button "<With_Without>" marking an address as Primary Address out of multiple added addresses in communication details for non indiv applicant
    Then an error message "<Occurred_NotOccurred>" on Primary Address marking
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   | With_Without | Occurred_NotOccurred         |
      | <ApplicationStage> | <ProductType> |          |     | Save        | without      | occurred                     |
      | <ApplicationStage> | <ProductType> |          |     | Save        | with         | not throw any error occurred |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next | without      | occurred                     |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next | with         | not throw any error occurred |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   | With_Without | Occurred_NotOccurred         |
      | <ApplicationStage> | <ProductType> |          |     | Save        | without      | occurred                     |
      | <ApplicationStage> | <ProductType> |          |     | Save        | with         | not throw any error occurred |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next | without      | occurred                     |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next | with         | not throw any error occurred |
 # ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Save_Next   | With_Without | Occurred_NotOccurred         |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save        | without      | occurred                     |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save        | with         | not throw any error occurred |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save & Next | without      | occurred                     |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save & Next | with         | not throw any error occurred |

  #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-11452,CAS-110827
  Scenario Outline: ACAUTOCAS-13508: Office Address marked as primary address automatically on clicking <Save_Next> button in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 126
    And user add "Office/ Business Address" in organization address
    And user checks for duplicates in personal info page for non individual applicant
    And user open communication detail for non individual applicant
    When user clicks "<Save_Next>" communication detail button for non individual applicant
    And user open communication detail for non individual applicant
    Then "Office/ Business Address" marked as primary address automatically in communication details
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
 # ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save & Next |

  #FeatureID-ACAUTOCAS-11452
  Scenario Outline: ACAUTOCAS-13509: Automatic primary marking of address on clicking <Save_Next> button in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user add multiple address in organization address
      | personal_information.xlsx | address | 120 | Alternate Business Address |
      | personal_information.xlsx | address | 125 | Additional Address         |
      | personal_information.xlsx | address | 127 | Office/ Business Address   |
    And user checks for duplicates in personal info page for non individual applicant
    And user open communication detail for non individual applicant
    When user clicks "<Save_Next>" communication detail button for non individual applicant
    Then an error occurred to mark a primary address in communication details
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save        |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save & Next |

  #StoryID:CAS-53892
  #FeatureID-ACAUTOCAS-11452,CAS-53892
  Scenario Outline: ACAUTOCAS-13510: <Primary_Number> field validation in Communication Details on selecting the radio button of <Address> to make it Primary Address in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    And user add "<Address>" in organization address
    And user open communication detail for non individual applicant
    When user selects the radio button of "<Address>" to make it Primary Address
    Then "<Primary_Number>" field in Communication Details should be auto filled with same as in Address
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | Primary_Number        | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Primary Phone         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Primary Mobile Number | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Primary Phone         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Primary Mobile Number | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Primary Phone         | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Primary Mobile Number | 126                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | Primary_Number        | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Primary Phone         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Primary Mobile Number | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Primary Phone         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Primary Mobile Number | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Primary Phone         | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Primary Mobile Number | 126                                |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Address                    | Primary_Number        | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | Primary Phone         | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | Primary Mobile Number | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | Primary Phone         | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | Primary Mobile Number | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Office/ Business Address   | Primary Phone         | 126                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Office/ Business Address   | Primary Mobile Number | 126                                |

  #FeatureID-ACAUTOCAS-11452
  Scenario Outline: ACAUTOCAS-13511: Office Address is mandatory to <Save_Next> in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user add multiple address in organization address
      | personal_information.xlsx | address | 120 | Alternate Business Address |
      | personal_information.xlsx | address | 125 | Additional Address         |
    And user checks for duplicates in personal info page for non individual applicant
    When user clicks "<Save_Next>" button for non individual applicant
    Then an error message display to add Office Address
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save        |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save & Next |

  #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-11452,CAS-110827
  Scenario Outline: ACAUTOCAS-13512: Office Address marked as primary address automatically on clicking <Save_Next> button after deleting <Address> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    And user add "<Address>" in organization address
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 127
    And user add new "Office/ Business Address" in organization address
    And user checks for duplicates in personal info page for non individual applicant
    When user deletes "<Address>" details
    And user open communication detail for non individual applicant
    And user clicks "<Save_Next>" communication detail button for non individual applicant
    And user open communication detail for non individual applicant
    Then "Office/ Business Address" marked as primary address automatically in communication details
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | Save_Next   | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Save & Next | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Save        | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Save & Next | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Save        | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Save & Next | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Save        | 126                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | Save_Next   | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Save & Next | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Save        | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Save & Next | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Save        | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Save & Next | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Save        | 126                                |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Address                    | Save_Next   | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | Save & Next | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | Save        | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | Save & Next | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | Save        | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Office/ Business Address   | Save & Next | 126                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Office/ Business Address   | Save        | 126                                |

  #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-11452,CAS-110827
  Scenario Outline: ACAUTOCAS-13513: Primary address marking should remain intact after any modification in <Address> details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    And user add "<Address>" in organization address
    And user open communication detail for non individual applicant
    And user selects the radio button of "<Address>" to make it Primary Address
    And user moves to customer details tab
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 123
    When user modifies "<Address>" details in organization address
    And user open communication detail for non individual applicant
    Then Primary address marking should remain intact for "<Address>" after any modification
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | 126                                |

# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | 126                                |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | 126                                |

  #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-11452,CAS-110827
  Scenario Outline: ACAUTOCAS-13514: If user deletes the marked primary Office Address and after adding again Office Address marked as primary address automatically on clicking <Save_Next> button in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 126
    And user add "Office/ Business Address" in organization address
    And user checks for duplicates in personal info page for non individual applicant
    And user open communication detail for non individual applicant
    And user selects the radio button of "Office/ Business Address" to make it Primary Address
    And user clicks "<Save_Next>" communication detail button for non individual applicant
    And user moves to customer details tab
    And user open organization address accordion
    And user deletes "Office/ Business Address" details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 126
    And user add new "Office/ Business Address" in organization address
    And user checks for duplicates in personal info page for non individual applicant
    And user open communication detail for non individual applicant
    When user clicks "<Save_Next>" communication detail button for non individual applicant
    And user open communication detail for non individual applicant
    Then "Office/ Business Address" marked as primary address automatically in communication details
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save        |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save & Next |

  #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-11452,CAS-110827
  Scenario Outline: ACAUTOCAS-13515: Office Address marked as primary address automatically on clicking <Save_Next> button in organization address for non individual co-applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 275
    And user saves the application number
    And user navigates to applicant details page of "<ApplicationStage>"
    And user add "coapplicant" at "<ApplicationStage>" stage
    And user opens personal information tab of "coapp"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 126
    And user add "Office/ Business Address" in organization address
    And user checks for duplicates in personal info page for non individual applicant
    And user open communication detail for non individual applicant
    When user clicks "<Save_Next>" communication detail button for non individual applicant
    And user open communication detail for non individual applicant
    Then "Office/ Business Address" marked as primary address automatically in communication details
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save        |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save & Next |


  #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-11452,CAS-110827
  Scenario Outline: ACAUTOCAS-13516: Automatic primary marking of address on clicking <Save_Next> button in organization address for non individual applicant co-applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 275
    And user saves the application number
    And user navigates to applicant details page of "<ApplicationStage>"
    And user add "coapplicant" at "<ApplicationStage>" stage
    And user opens personal information tab of "coapp"
    And user open organization address accordion
    And user add multiple address in organization address
      | personal_information.xlsx | address | 120 | Alternate Business Address |
      | personal_information.xlsx | address | 125 | Additional Address         |
      | personal_information.xlsx | address | 127 | Office/ Business Address   |
    And user checks for duplicates in personal info page for non individual applicant
    And user open communication detail for non individual applicant
    When user clicks "<Save_Next>" communication detail button for non individual applicant
    Then an error occurred to mark a primary address in communication details
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save        |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save & Next |


  #StoryID:CAS-53892
  #FeatureID-ACAUTOCAS-11452,CAS-53892
  Scenario Outline: ACAUTOCAS-13517: <Primary_Number> field validation in Communication Details on selecting the radio button of <Address> to make it Primary Address in organization address for non individual applicant co-applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 275
    And user saves the application number
    And user navigates to applicant details page of "<ApplicationStage>"
    And user add "coapplicant" at "<ApplicationStage>" stage
    And user opens personal information tab of "coapp"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    And user add "<Address>" in organization address
    And user open communication detail for non individual applicant
    When user selects the radio button of "<Address>" to make it Primary Address
    Then "<Primary_Number>" field in Communication Details should be auto filled with same as in Address
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | Primary_Number        | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Primary Phone         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Primary Mobile Number | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Primary Phone         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Primary Mobile Number | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Primary Phone         | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Primary Mobile Number | 126                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | Primary_Number        | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Primary Phone         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Primary Mobile Number | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Primary Phone         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Primary Mobile Number | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Primary Phone         | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Primary Mobile Number | 126                                |

# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Address                    | Primary_Number        | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | Primary Phone         | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | Primary Mobile Number | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | Primary Phone         | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | Primary Mobile Number | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Office/ Business Address   | Primary Phone         | 126                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Office/ Business Address   | Primary Mobile Number | 126                                |


  #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-11452,CAS-110827
  Scenario Outline: ACAUTOCAS-13868: After adding again Office Address marked as primary address automatically on clicking <Save_Next> in organization address for non individual applicant co-applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 275
    And user saves the application number
    And user navigates to applicant details page of "<ApplicationStage>"
    And user add "coapplicant" at "<ApplicationStage>" stage
    And user opens personal information tab of "coapp"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 126
    And user add "Office/ Business Address" in organization address
    And user checks for duplicates in personal info page for non individual applicant
    And user open communication detail for non individual applicant
    And user selects the radio button of "Office/ Business Address" to make it Primary Address
    And user clicks "<Save_Next>" communication detail button for non individual applicant
    And user moves to customer details tab
    And user open organization address accordion
    And user deletes "Office/ Business Address" details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 126
    And user add new "Office/ Business Address" in organization address
    And user checks for duplicates in personal info page for non individual applicant
    And user open communication detail for non individual applicant
    When user clicks "<Save_Next>" communication detail button for non individual applicant
    And user open communication detail for non individual applicant
    Then "Office/ Business Address" marked as primary address automatically in communication details
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save        |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save & Next |

  #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-11452,CAS-110827
  Scenario Outline: ACAUTOCAS-13518: Primary address marking should remain intact after any modification in <Address> details for non individual applicant co-applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 275
    And user saves the application number
    And user navigates to applicant details page of "<ApplicationStage>"
    And user add "coapplicant" at "<ApplicationStage>" stage
    And user opens personal information tab of "coapp"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    And user add "<Address>" in organization address
    And user open communication detail for non individual applicant
    And user selects the radio button of "<Address>" to make it Primary Address
    And user moves to customer details tab
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 123
    When user modifies "<Address>" details in organization address
    And user open communication detail for non individual applicant
    Then Primary address marking should remain intact for "<Address>" after any modification
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | 126                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | 126                                |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Office/ Business Address   | 126                                |

  #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-11452,CAS-110827
  Scenario Outline: ACAUTOCAS-13519: Office Address marked as primary address automatically on clicking <Save_Next> button after deleting <Address> in organization address for non individual applicant co-applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 275
    And user saves the application number
    And user navigates to applicant details page of "<ApplicationStage>"
    And user add "coapplicant" at "<ApplicationStage>" stage
    And user opens personal information tab of "coapp"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    And user add "<Address>" in organization address
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 127
    And user add new "Office/ Business Address" in organization address
    And user checks for duplicates in personal info page for non individual applicant
    When user deletes "<Address>" details
    And user open communication detail for non individual applicant
    And user clicks "<Save_Next>" communication detail button for non individual applicant
    And user open communication detail for non individual applicant
    Then "Office/ Business Address" marked as primary address automatically in communication details
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | Save_Next   | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Save        | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Save & Next | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Save        | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Save & Next | 120                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | Save_Next   | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Save        | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Save & Next | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Save        | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Save & Next | 120                                |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Address                    | Save_Next   | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | Save        | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | Save & Next | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | Save        | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | Save & Next | 120                                |


  #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-11452,CAS-110827
  Scenario Outline: ACAUTOCAS-13520: Office Address marked as primary address automatically on clicking <Save_Next> button in organization address for non individual applicant guarantor at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 283
    And user saves the application number
    And user navigates to applicant details page of "<ApplicationStage>"
    And user add "guarantor" at "<ApplicationStage>" stage
    And user opens personal information tab of "guarantor"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 126
    And user add "Office/ Business Address" in organization address
    And user checks for duplicates in personal info page for non individual applicant
    And user open communication detail for non individual applicant
    When user clicks "<Save_Next>" communication detail button for non individual applicant
    And user open communication detail for non individual applicant
    Then "Office/ Business Address" marked as primary address automatically in communication details
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save        |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save & Next |

  #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-11452,CAS-110827
  Scenario Outline: ACAUTOCAS-13521: Automatic primary marking of address on clicking <Save_Next> button in organization address for non individual applicant guarantor at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 283
    And user saves the application number
    And user navigates to applicant details page of "<ApplicationStage>"
    And user add "guarantor" at "<ApplicationStage>" stage
    And user opens personal information tab of "guarantor"
    And user open organization address accordion
    And user add multiple address in organization address
      | personal_information.xlsx | address | 120 | Alternate Business Address |
      | personal_information.xlsx | address | 125 | Additional Address         |
      | personal_information.xlsx | address | 127 | Office/ Business Address   |
    And user checks for duplicates in personal info page for non individual applicant
    And user open communication detail for non individual applicant
    When user clicks "<Save_Next>" communication detail button for non individual applicant
    Then an error occurred to mark a primary address in communication details
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save        |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save & Next |

  #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-11452,CAS-110827
  Scenario Outline: ACAUTOCAS-13522: <Primary_Number> field validation in Communication Details on selecting the radio button of <Address> to make it Primary Address in organization address for non individual guarantor at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 283
    And user saves the application number
    And user navigates to applicant details page of "<ApplicationStage>"
    And user add "guarantor" at "<ApplicationStage>" stage
    And user opens personal information tab of "guarantor"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    And user add "<Address>" in organization address
    And user open communication detail for non individual applicant
    When user selects the radio button of "<Address>" to make it Primary Address
    Then "<Primary_Number>" field in Communication Details should be auto filled with same as in Address
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | Primary_Number        | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Primary Phone         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Primary Mobile Number | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Primary Phone         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Primary Mobile Number | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Primary Phone         | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Primary Mobile Number | 126                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | Primary_Number        | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Primary Phone         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Primary Mobile Number | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Primary Phone         | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Primary Mobile Number | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Primary Phone         | 126                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | Primary Mobile Number | 126                                |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Address                    | Primary_Number        | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | Primary Phone         | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | Primary Mobile Number | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | Primary Phone         | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | Primary Mobile Number | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Office/ Business Address   | Primary Phone         | 126                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Office/ Business Address   | Primary Mobile Number | 126                                |


  #Bug:CAS-116497
  #FeatureID-ACAUTOCAS-11452,CAS-110827
  Scenario Outline: ACAUTOCAS-13523: <Primary_Number> field validation in Communication Details on selection of address to make it Primary Address in organization address for non individual guarantor at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 283
    And user saves the application number
    And user navigates to applicant details page of "<ApplicationStage>"
    And user add "guarantor" at "<ApplicationStage>" stage
    And user opens personal information tab of "guarantor"
    And user open organization address accordion
    And user add multiple address in organization address
      | personal_information.xlsx | address | 120 | Alternate Business Address |
      | personal_information.xlsx | address | 125 | Additional Address         |
      | personal_information.xlsx | address | 127 | Office/ Business Address   |
    And user open communication detail for non individual applicant
    When user selects the radio button of "Office/ Business Address" to make it Primary Address
#   Office Address
    And user save "<Primary_Number>" for non individual application in context
    And user selects the radio button of "Additional Address" to make it Primary Address
#    Additional Address//Permanent//Office Address
    Then "<Primary_Number>" field in Communication Details should be change as per selection of radio button
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Primary_Number        |
      | <ApplicationStage> | <ProductType> |          |     | Primary Phone         |
      | <ApplicationStage> | <ProductType> |          |     | Primary Mobile Number |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Primary_Number        |
      | <ApplicationStage> | <ProductType> |          |     | Primary Phone         |
      | <ApplicationStage> | <ProductType> |          |     | Primary Mobile Number |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Primary_Number        |
      | <ApplicationStage> | <ProductType> | <Category> |     | Primary Phone         |
      | <ApplicationStage> | <ProductType> | <Category> |     | Primary Mobile Number |


  #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-11452,CAS-110827
  Scenario Outline: ACAUTOCAS-13524: Validation of primary marked address If user delete it and again adding on clicking <Save_Next> button for non individual applicant guarantor at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 283
    And user saves the application number
    And user navigates to applicant details page of "<ApplicationStage>"
    And user add "guarantor" at "<ApplicationStage>" stage
    And user opens personal information tab of "guarantor"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 126
    And user add "Office/ Business Address" in organization address
    And user checks for duplicates in personal info page for non individual applicant
    And user open communication detail for non individual applicant
    And user selects the radio button of "Office/ Business Address" to make it Primary Address
    And user clicks "<Save_Next>" communication detail button for non individual applicant
    And user moves to customer details tab
    And user open organization address accordion
    And user deletes "Office/ Business Address" details
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 126
    And user add new "Office/ Business Address" in organization address
    And user checks for duplicates in personal info page for non individual applicant
    And user open communication detail for non individual applicant
    When user clicks "<Save_Next>" communication detail button for non individual applicant
    And user open communication detail for non individual applicant
    Then "Office/ Business Address" marked as primary address automatically in communication details
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> |          |     | Save        |
      | <ApplicationStage> | <ProductType> |          |     | Save & Next |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Save_Next   |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save        |
      | <ApplicationStage> | <ProductType> | <Category> |     | Save & Next |

  #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-11452,CAS-110827
  Scenario Outline: ACAUTOCAS-13525: Primary address marking should remain intact after any modification in <Address> details for non individual applicant guarantor at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 283
    And user saves the application number
    And user navigates to applicant details page of "<ApplicationStage>"
    And user add "guarantor" at "<ApplicationStage>" stage
    And user opens personal information tab of "guarantor"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    And user add "<Address>" in organization address
    And user open communication detail for non individual applicant
    And user selects the radio button of "<Address>" to make it Primary Address
    And user moves to customer details tab
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 123
    When user modifies "<Address>" details in organization address
    And user open communication detail for non individual applicant
    Then Primary address marking should remain intact for "<Address>" after any modification
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | 126                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address   | 126                                |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Address                    | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Office/ Business Address   | 126                                |

  #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-11452,CAS-110827
  Scenario Outline: ACAUTOCAS-13526: Office Address marked as primary address automatically on clicking <Save_Next> button after deleting <Address> for non individual applicant guarantor at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 283
    And user saves the application number
    And user navigates to applicant details page of "<ApplicationStage>"
    And user add "guarantor" at "<ApplicationStage>" stage
    And user opens personal information tab of "guarantor"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    And user add "<Address>" in organization address
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row 127
    And user add new "Office/ Business Address" in organization address
    And user checks for duplicates in personal info page for non individual applicant
    When user deletes "<Address>" details
    And user open communication detail for non individual applicant
    And user clicks "<Save_Next>" communication detail button for non individual applicant
    And user open communication detail for non individual applicant
    Then "Office/ Business Address" marked as primary address automatically in communication details
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | Save_Next   | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Save        | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Save & Next | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Save        | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Save & Next | 120                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                    | Save_Next   | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Save        | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address         | Save & Next | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Save        | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address | Save & Next | 120                                |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Address                    | Save_Next   | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | Save        | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address         | Save & Next | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | Save        | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address | Save & Next | 120                                |

#    ============================== Configuration based Scenarios ==========================================
#  Prerequisites:Configuration should be '${address1},${address2},${street} ${streetName},${city},${state}-${pinCode},${country}' in configuration table

  #StoryID:CAS-102541
  #FeatureID-ACAUTOCAS-11452,CAS-102541
  Scenario Outline: ACAUTOCAS-13527: Full Address field validation for <Address> in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open organization address accordion
    And user reads data from the excel file "personal_information.xlsx" under sheet "address" and row <PersonalInformation_address_rowNum>
    When user fills all fields of "<Address>" in organization address
    And user edits "<Address>" details in organization address
    Then full address should be auto filled successfully as "address1, address2, street, city, state- pincode, country"
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                                          | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address                       | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address with purpose combination      | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address with same purpose combination | 123                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address                         | 126                                |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Address                                          | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> |          |     | Alternate Business Address                       | 120                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address with purpose combination      | 122                                |
      | <ApplicationStage> | <ProductType> |          |     | Additional Address with same purpose combination | 123                                |
      | <ApplicationStage> | <ProductType> |          |     | Office/ Business Address                         | 126                                |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Address                                          | PersonalInformation_address_rowNum |
      | <ApplicationStage> | <ProductType> | <Category> |     | Alternate Business Address                       | 120                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address with purpose combination      | 122                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Additional Address with same purpose combination | 123                                |
      | <ApplicationStage> | <ProductType> | <Category> |     | Office/ Business Address                         | 126                                |


#========= Additional Info button/ configuration based
#  Prerequisite:user have to below Authority
# YAKEEN_EDIT_ENABLED
  #FeatureID-ACAUTOCAS-11452
  Scenario Outline: ACAUTOCAS-13528: Additional Info button validation in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    When user clicks on additional info button
    Then Customer Additional Info page should be open
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <Category> |     |


  #FeatureID-ACAUTOCAS-11452
  Scenario Outline: ACAUTOCAS-13529: Minimize the Customer Additional Info page in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    When user clicks on additional info button
    And user minimize the Customer Additional Info page
    Then Customer Additional Info page should be minimized
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <Category> |     |

  #FeatureID-ACAUTOCAS-11452
  Scenario Outline: ACAUTOCAS-13530: Maximize the minimized Customer Additional Info page in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    When user clicks on additional info button
    And user minimize the Customer Additional Info page
    And user maximize the minimized Customer Additional Info page
    Then Customer Additional Info page should be maximized
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |

 # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <Category> |     |

  #FeatureID-ACAUTOCAS-11452
  Scenario Outline: ACAUTOCAS-13531: <Close_Cancel> the Customer Additional Info page in organization address at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user clicks on additional info button
    When user "<Close_Cancel>" the Customer Additional Info page
    Then Customer Additional Info should be "<Close_Cancel>"
    @ImplementedBy-rishabh.sachan
    @Release
    @Conventional
    @Release3
 #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Close_Cancel |
      | <ApplicationStage> | <ProductType> |          |     | close        |
      | <ApplicationStage> | <ProductType> |          |     | Cancel       |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Close_Cancel |
      | <ApplicationStage> | <ProductType> |          |     | close        |
      | <ApplicationStage> | <ProductType> |          |     | Cancel       |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
# ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Close_Cancel |
      | <ApplicationStage> | <ProductType> | <Category> |     | close        |
      | <ApplicationStage> | <ProductType> | <Category> |     | Cancel       |


# Is address verified checkbox =5
#  update plot number then full address should be updated =CAS-169127

#Bug:CAS-110410
#Follow the expect steps for simulation:
#  1. New application
#  2. New financial details, enter Income details only -click Save & Compute (capture screen expense summary)
#  3. Click Save & Next
#  4. Complete Loan Details
#  5. Complete Documents
#  6. Complete Checklist
#  7. Complete Title Search COLL00011180
#  8. Move to next stage
#  9. At Recommendation stage, check Intent Indicators and open CAM report generated
#  10. View CAM report generated, Net and Acceptable Net Income were showing blank
#  11. Go back to Financial Details screen and check the income expense summary
#  12. At Income Expense Summary - Total Income Post Tax and Total Acceptable Income are now showing blank (no updates made on this screen)APPLICATION NUMBER - APPL00010641
