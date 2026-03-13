@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-
@TechReviewedBy-
#@ReleaseAppInfoM3
@Reconciled
@ReviewedByDEV
@Deferred
Feature: Address Detail Validation In which Application Start From DDE

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

   # ${ ProductType : ["GL","FAS"]}
   # ${ApplicationStage:["DDE","Credit Approval"]}
  @Sanity
  Scenario Outline: ACAUTOCAS-3967:  Fill the applicant's address with <var> fields at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    When user fills address details with "<var>" fields
    Then address details should save successfully
    Examples:
      | ApplicationStage   | ProductType   | var       | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
      | <ApplicationStage> | <ProductType> | mandatory | personal_information.xlsx | home              | 0                        | address              | 0                           |
      | <ApplicationStage> | <ProductType> | all       | personal_information.xlsx | home              | 0                        | address              | 1                           |


#  FeatureID-ACAUTOCAS-151,CAS-99291
   #StoryID:CAS-99291
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  @Sanity
  Scenario Outline: ACAUTOCAS-9844: Capability to accept multiple <Address> in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user add multiple "<Address>" in personal information
    Then multiple "<Address>" should be added successfully
    Examples:
      | ApplicationStage   | ProductType   | Address                                          |
      | <ApplicationStage> | <ProductType> | Alternate Business Address                       |
      | <ApplicationStage> | <ProductType> | Additional Address with purpose combination      |
      | <ApplicationStage> | <ProductType> | Additional Address with same purpose combination |
      | <ApplicationStage> | <ProductType> | Office Address                                   |

#StoryID:CAS-102674,CAS-25615
#SquashID:06_CAS-109608
#FeatureID-ACAUTOCAS-151,CAS-109608,CAS-25615,CAS-102674
   # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9845: Required <Field> field validation for Additional Address in Address at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user selects address type as Additional Address
    When user click on Required to check required fields of Additional Address
    Then "<Field>" field should be present for Additional Address in Address as required field
    Examples:
      | ApplicationStage   | ProductType   | Field                                  |
      | <ApplicationStage> | <ProductType> | Address Type                           |
      | <ApplicationStage> | <ProductType> | Purpose                                |
      | <ApplicationStage> | <ProductType> | Country                                |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |
      | <ApplicationStage> | <ProductType> | PinCode                                |
      | <ApplicationStage> | <ProductType> | State                                  |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |
      | <ApplicationStage> | <ProductType> | Village conditional  mandatory         |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |

#StoryID:CAS-102674,CAS-25615
  #FeatureID-ACAUTOCAS-151,CAS-25615,CAS-102674
   # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9846: <Field> field validation in All Fields for Additional Address in Address at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user selects address type as Additional Address
    When user click on All Fields to check all fields of Additional Address
    Then "<Field>" field should be present for Additional Address in Address
    Examples:
      | ApplicationStage   | ProductType   | Field                                  |
      | <ApplicationStage> | <ProductType> | Address Type                           |
      | <ApplicationStage> | <ProductType> | Purpose                                |
      | <ApplicationStage> | <ProductType> | Full Address                           |
      | <ApplicationStage> | <ProductType> | Country                                |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |
      | <ApplicationStage> | <ProductType> | PinCode                                |
      | <ApplicationStage> | <ProductType> | Region                                 |
      | <ApplicationStage> | <ProductType> | State                                  |
      | <ApplicationStage> | <ProductType> | City                                   |
      | <ApplicationStage> | <ProductType> | District                               |
      | <ApplicationStage> | <ProductType> | Taluka                                 |
      | <ApplicationStage> | <ProductType> | Village                                |
      | <ApplicationStage> | <ProductType> | Residence Status                       |
      | <ApplicationStage> | <ProductType> | Residence Type                         |
      | <ApplicationStage> | <ProductType> | Landmark                               |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |
#StoryID:CAS-102674,CAS-25615
#FeatureID-ACAUTOCAS-151,CAS-102674,CAS-25615
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9847: Field type validation of <Field> field for Additional Address in Address at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user selects address type as Additional Address
    Then field type of "<Field>" field should "<Field_Type>" field in Address for Additional Address
    Examples:
      | ApplicationStage   | ProductType   | Field                         | Field_Type     |
      | <ApplicationStage> | <ProductType> | Address Type                  | drop down      |
      | <ApplicationStage> | <ProductType> | Purpose                       | drop down      |
      | <ApplicationStage> | <ProductType> | Full Address                  | input          |
      | <ApplicationStage> | <ProductType> | Country                       | drop down      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number              | input          |
      | <ApplicationStage> | <ProductType> | Address Line 2                | input          |
      | <ApplicationStage> | <ProductType> | Address Line 3                | input          |
      | <ApplicationStage> | <ProductType> | PinCode                       | list of values |
      | <ApplicationStage> | <ProductType> | Region                        | drop down      |
      | <ApplicationStage> | <ProductType> | State                         | drop down      |
      | <ApplicationStage> | <ProductType> | City                          | drop down      |
      | <ApplicationStage> | <ProductType> | District                      | drop down      |
      | <ApplicationStage> | <ProductType> | Taluka                        | input          |
      | <ApplicationStage> | <ProductType> | Village                       | input          |
      | <ApplicationStage> | <ProductType> | Residence Status              | drop down      |
      | <ApplicationStage> | <ProductType> | Residence Type                | drop down      |
      | <ApplicationStage> | <ProductType> | Landmark                      | input          |
      | <ApplicationStage> | <ProductType> | Duration at this Address      | input          |
      | <ApplicationStage> | <ProductType> | Duration at this City         | input          |
      | <ApplicationStage> | <ProductType> | Primary Phone                 | input          |
      | <ApplicationStage> | <ProductType> | Mobile Phone                  | input          |
      | <ApplicationStage> | <ProductType> | Current Address               | checkbox       |
      | <ApplicationStage> | <ProductType> | Create Same As Address        | checkbox       |
      | <ApplicationStage> | <ProductType> | Create another after this one | checkbox       |



#FeatureID-ACAUTOCAS-151
 # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9848: Required <Field> field validation for Alternate Business Address in Address at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user selects address type as Alternate Business Address
    When user click on Required to check required fields of Alternate Business Address
    Then "<Field>" field should be present for Alternate Business Address in Address as required field
    Examples:
      | ApplicationStage   | ProductType   | Field                                  |
      | <ApplicationStage> | <ProductType> | Address Type                           |
      | <ApplicationStage> | <ProductType> | Country                                |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |
      | <ApplicationStage> | <ProductType> | PinCode                                |
      | <ApplicationStage> | <ProductType> | State                                  |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |
      | <ApplicationStage> | <ProductType> | Village conditional  mandatory         |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |
    #FeatureID-ACAUTOCAS-151
 # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9849: <Field> field validation in All Fields for Alternate Business Address in Address at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user selects address type as Alternate Business Address
    When user click on All Fields to check all fields of Alternate Business Address
    Then "<Field>" field should be present for Alternate Business Address in Address
    Examples:
      | ApplicationStage   | ProductType   | Field                                  |
      | <ApplicationStage> | <ProductType> | Address Type                           |
      | <ApplicationStage> | <ProductType> | Full Address                           |
      | <ApplicationStage> | <ProductType> | Country                                |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |
      | <ApplicationStage> | <ProductType> | PinCode                                |
      | <ApplicationStage> | <ProductType> | Region                                 |
      | <ApplicationStage> | <ProductType> | State                                  |
      | <ApplicationStage> | <ProductType> | City                                   |
      | <ApplicationStage> | <ProductType> | District                               |
      | <ApplicationStage> | <ProductType> | Taluka                                 |
      | <ApplicationStage> | <ProductType> | Village                                |
      | <ApplicationStage> | <ProductType> | Landmark                               |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |
    #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9850: Field type validation of <Field> field in Address for Alternate Business Address at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user selects address type as Alternate Business Address
    Then field type of "<Field>" field should "<Field_Type>" field in Address for Alternate Business Address
    Examples:
      | ApplicationStage   | ProductType   | Field                         | Field_Type     |
      | <ApplicationStage> | <ProductType> | Address Type                  | drop down      |
      | <ApplicationStage> | <ProductType> | Purpose                       | drop down      |
      | <ApplicationStage> | <ProductType> | Full Address                  | input          |
      | <ApplicationStage> | <ProductType> | Country                       | drop down      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number              | input          |
      | <ApplicationStage> | <ProductType> | Address Line 2                | input          |
      | <ApplicationStage> | <ProductType> | Address Line 3                | input          |
      | <ApplicationStage> | <ProductType> | PinCode                       | list of values |
      | <ApplicationStage> | <ProductType> | Region                        | drop down      |
      | <ApplicationStage> | <ProductType> | State                         | drop down      |
      | <ApplicationStage> | <ProductType> | City                          | drop down      |
      | <ApplicationStage> | <ProductType> | District                      | drop down      |
      | <ApplicationStage> | <ProductType> | Taluka                        | input          |
      | <ApplicationStage> | <ProductType> | Village                       | input          |
      | <ApplicationStage> | <ProductType> | Landmark                      | input          |
      | <ApplicationStage> | <ProductType> | Duration at this Address      | input          |
      | <ApplicationStage> | <ProductType> | Duration at this City         | input          |
      | <ApplicationStage> | <ProductType> | Primary Phone                 | input          |
      | <ApplicationStage> | <ProductType> | Mobile Phone                  | input          |
      | <ApplicationStage> | <ProductType> | Current Address               | checkbox       |
      | <ApplicationStage> | <ProductType> | Create Same As Address        | checkbox       |
      | <ApplicationStage> | <ProductType> | Create another after this one | checkbox       |

#FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9851: Required <Field> field validation for Office Address in Address at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user selects address type as Office Address
    When user click on Required to check required fields of Office Address
    Then "<Field>" field should be present for Office Address in Address as required field
    Examples:
      | ApplicationStage   | ProductType   | Field                                  |
      | <ApplicationStage> | <ProductType> | Address Type                           |
      | <ApplicationStage> | <ProductType> | Country                                |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |
      | <ApplicationStage> | <ProductType> | PinCode                                |
      | <ApplicationStage> | <ProductType> | State                                  |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |
      | <ApplicationStage> | <ProductType> | Village conditional  mandatory         |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |
    #FeatureID-ACAUTOCAS-151
 # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9852: <Field> field validation in All Fields for Office Address in Address at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user selects address type as Office Address
    When user click on All Fields to check all fields of Office Address
    Then "<Field>" field should be present for Office Address in Address
    Examples:
      | ApplicationStage   | ProductType   | Field                                  |
      | <ApplicationStage> | <ProductType> | Address Type                           |
      | <ApplicationStage> | <ProductType> | Full Address                           |
      | <ApplicationStage> | <ProductType> | Country                                |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |
      | <ApplicationStage> | <ProductType> | PinCode                                |
      | <ApplicationStage> | <ProductType> | Region                                 |
      | <ApplicationStage> | <ProductType> | State                                  |
      | <ApplicationStage> | <ProductType> | City                                   |
      | <ApplicationStage> | <ProductType> | District                               |
      | <ApplicationStage> | <ProductType> | Taluka                                 |
      | <ApplicationStage> | <ProductType> | Village                                |
      | <ApplicationStage> | <ProductType> | Landmark                               |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |

    #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9853: Field type validation of <Field> field in Address for Office Address at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user selects address type as Office Address
    Then field type of "<Field>" field should "<Field_Type>" field in Address for Office Address
    Examples:
      | ApplicationStage   | ProductType   | Field                         | Field_Type     |
      | <ApplicationStage> | <ProductType> | Address Type                  | drop down      |
      | <ApplicationStage> | <ProductType> | Purpose                       | drop down      |
      | <ApplicationStage> | <ProductType> | Full Address                  | input          |
      | <ApplicationStage> | <ProductType> | Country                       | drop down      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number              | input          |
      | <ApplicationStage> | <ProductType> | Address Line 2                | input          |
      | <ApplicationStage> | <ProductType> | Address Line 3                | input          |
      | <ApplicationStage> | <ProductType> | PinCode                       | list of values |
      | <ApplicationStage> | <ProductType> | Region                        | drop down      |
      | <ApplicationStage> | <ProductType> | State                         | drop down      |
      | <ApplicationStage> | <ProductType> | City                          | drop down      |
      | <ApplicationStage> | <ProductType> | District                      | drop down      |
      | <ApplicationStage> | <ProductType> | Taluka                        | input          |
      | <ApplicationStage> | <ProductType> | Village                       | input          |
      | <ApplicationStage> | <ProductType> | Landmark                      | input          |
      | <ApplicationStage> | <ProductType> | Duration at this Address      | input          |
      | <ApplicationStage> | <ProductType> | Duration at this City         | input          |
      | <ApplicationStage> | <ProductType> | Primary Phone                 | input          |
      | <ApplicationStage> | <ProductType> | Mobile Phone                  | input          |
      | <ApplicationStage> | <ProductType> | Current Address               | checkbox       |
      | <ApplicationStage> | <ProductType> | Create Same As Address        | checkbox       |
      | <ApplicationStage> | <ProductType> | Create another after this one | checkbox       |
#FeatureID-ACAUTOCAS-151
 # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9854: Required <Field> field validation for Permanent Address in Address at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user selects address type as Permanent Address
    When user click on Required to check required fields of Permanent Address
    Then "<Field>" field should be present for Permanent Address in Address as required field
    Examples:
      | ApplicationStage   | ProductType   | Field                                  |
      | <ApplicationStage> | <ProductType> | Address Type                           |
      | <ApplicationStage> | <ProductType> | Country                                |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |
      | <ApplicationStage> | <ProductType> | PinCode                                |
      | <ApplicationStage> | <ProductType> | State                                  |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |
      | <ApplicationStage> | <ProductType> | Village conditional  mandatory         |
      | <ApplicationStage> | <ProductType> | Residence Status                       |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |
    #FeatureID-ACAUTOCAS-151
 # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9855: <Field> field validation in All Fields for Permanent Address in Address at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user selects address type as Permanent Address
    When user click on All Fields to check all fields of Permanent Address
    Then "<Field>" field should be present for Permanent Address in Address
    Examples:
      | ApplicationStage   | ProductType   | Field                                  |
      | <ApplicationStage> | <ProductType> | Address Type                           |
      | <ApplicationStage> | <ProductType> | Full Address                           |
      | <ApplicationStage> | <ProductType> | Country                                |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |
      | <ApplicationStage> | <ProductType> | PinCode                                |
      | <ApplicationStage> | <ProductType> | Region                                 |
      | <ApplicationStage> | <ProductType> | State                                  |
      | <ApplicationStage> | <ProductType> | City                                   |
      | <ApplicationStage> | <ProductType> | District                               |
      | <ApplicationStage> | <ProductType> | Taluka                                 |
      | <ApplicationStage> | <ProductType> | Village                                |
      | <ApplicationStage> | <ProductType> | Residence Status                       |
      | <ApplicationStage> | <ProductType> | Landmark                               |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |

    #FeatureID-ACAUTOCAS-151
# ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9856: Field type validation of <Field> field in Permanent Address at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user selects address type as Permanent Address
    Then field type of "<Field>" field should "<Field_Type>" field in Address for Permanent Address
    Examples:
      | ApplicationStage | ProductType   | Field                         | Field_Type     |
      | ApplicationStage | <ProductType> | Address Type                  | drop down      |
      | ApplicationStage | <ProductType> | Purpose                       | drop down      |
      | ApplicationStage | <ProductType> | Full Address                  | input          |
      | ApplicationStage | <ProductType> | Country                       | drop down      |
      | ApplicationStage | <ProductType> | Flat/Plot Number              | input          |
      | ApplicationStage | <ProductType> | Address Line 2                | input          |
      | ApplicationStage | <ProductType> | Address Line 3                | input          |
      | ApplicationStage | <ProductType> | PinCode                       | list of values |
      | ApplicationStage | <ProductType> | Region                        | drop down      |
      | ApplicationStage | <ProductType> | State                         | drop down      |
      | ApplicationStage | <ProductType> | City                          | drop down      |
      | ApplicationStage | <ProductType> | District                      | drop down      |
      | ApplicationStage | <ProductType> | Taluka                        | input          |
      | ApplicationStage | <ProductType> | Village                       | input          |
      | ApplicationStage | <ProductType> | Residence Status              | drop down      |
      | ApplicationStage | <ProductType> | Residence Type                | drop down      |
      | ApplicationStage | <ProductType> | Landmark                      | input          |
      | ApplicationStage | <ProductType> | Duration at this Address      | input          |
      | ApplicationStage | <ProductType> | Duration at this City         | input          |
      | ApplicationStage | <ProductType> | Primary Phone                 | input          |
      | ApplicationStage | <ProductType> | Mobile Phone                  | input          |
      | ApplicationStage | <ProductType> | Current Address               | checkbox       |
      | ApplicationStage | <ProductType> | Create Same As Address        | checkbox       |
      | ApplicationStage | <ProductType> | Create another after this one | checkbox       |
#FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9857: Required <Field> field validation for Residential Address in Address at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user selects address type as Residential Address
    When user click on Required to check required fields of Residential Address
    Then "<Field>" field should be present for Residential Address in Address as required field
    Examples:
      | ApplicationStage   | ProductType   | Field                                  |
      | <ApplicationStage> | <ProductType> | Address Type                           |
      | <ApplicationStage> | <ProductType> | Country                                |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |
      | <ApplicationStage> | <ProductType> | PinCode                                |
      | <ApplicationStage> | <ProductType> | State                                  |
      | <ApplicationStage> | <ProductType> | City conditional mandatory             |
      | <ApplicationStage> | <ProductType> | Village conditional mandatory          |
      | <ApplicationStage> | <ProductType> | Residence Status                       |
      | <ApplicationStage> | <ProductType> | Landmark conditional mandatory         |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |

    #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9858: <Field> field validation in All Fields for Residential Address in Address at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user selects address type as Residential Addresss
    When user click on All Fields to check all fields of Residential Address
    Then "<Field>" field should be present for Residential Address in Address
    Examples:
      | ApplicationStage   | ProductType   | Field                                  |
      | <ApplicationStage> | <ProductType> | Address Type                           |
      | <ApplicationStage> | <ProductType> | Full Address                           |
      | <ApplicationStage> | <ProductType> | Country                                |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number                       |
      | <ApplicationStage> | <ProductType> | Address Line 2                         |
      | <ApplicationStage> | <ProductType> | Address Line 3                         |
      | <ApplicationStage> | <ProductType> | PinCode                                |
      | <ApplicationStage> | <ProductType> | Region                                 |
      | <ApplicationStage> | <ProductType> | State                                  |
      | <ApplicationStage> | <ProductType> | City                                   |
      | <ApplicationStage> | <ProductType> | District                               |
      | <ApplicationStage> | <ProductType> | Taluka                                 |
      | <ApplicationStage> | <ProductType> | Village                                |
      | <ApplicationStage> | <ProductType> | Residence Status                       |
      | <ApplicationStage> | <ProductType> | Landmark                               |
      | <ApplicationStage> | <ProductType> | Duration at this Address               |
      | <ApplicationStage> | <ProductType> | Duration at this City                  |
      | <ApplicationStage> | <ProductType> | Primary Phone                          |
      | <ApplicationStage> | <ProductType> | Mobile Phone                           |
      | <ApplicationStage> | <ProductType> | Current Address checkbox               |
      | <ApplicationStage> | <ProductType> | Create Same As Address checkbox        |
      | <ApplicationStage> | <ProductType> | Create another after this one checkbox |
      | <ApplicationStage> | <ProductType> | Is address verified checkbox           |
    #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9859: Field type validation of <Field> field in Residential Address at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user selects address type as Residential Address
    Then field type of "<Field>" field should "<Field_Type>" field in Address for Residential Address
    Examples:
      | ApplicationStage   | ProductType   | Field                         | Field_Type     |
      | <ApplicationStage> | <ProductType> | Address Type                  | drop down      |
      | <ApplicationStage> | <ProductType> | Purpose                       | drop down      |
      | <ApplicationStage> | <ProductType> | Full Address                  | input          |
      | <ApplicationStage> | <ProductType> | Country                       | drop down      |
      | <ApplicationStage> | <ProductType> | Flat/Plot Number              | input          |
      | <ApplicationStage> | <ProductType> | Address Line 2                | input          |
      | <ApplicationStage> | <ProductType> | Address Line 3                | input          |
      | <ApplicationStage> | <ProductType> | PinCode                       | list of values |
      | <ApplicationStage> | <ProductType> | Region                        | drop down      |
      | <ApplicationStage> | <ProductType> | State                         | drop down      |
      | <ApplicationStage> | <ProductType> | City                          | drop down      |
      | <ApplicationStage> | <ProductType> | District                      | drop down      |
      | <ApplicationStage> | <ProductType> | Taluka                        | input          |
      | <ApplicationStage> | <ProductType> | Village                       | input          |
      | <ApplicationStage> | <ProductType> | Residence Status              | drop down      |
      | <ApplicationStage> | <ProductType> | Residence Type                | drop down      |
      | <ApplicationStage> | <ProductType> | Landmark                      | input          |
      | <ApplicationStage> | <ProductType> | Duration at this Address      | input          |
      | <ApplicationStage> | <ProductType> | Duration at this City         | input          |
      | <ApplicationStage> | <ProductType> | Primary Phone                 | input          |
      | <ApplicationStage> | <ProductType> | Mobile Phone                  | input          |
      | <ApplicationStage> | <ProductType> | Current Address               | checkbox       |
      | <ApplicationStage> | <ProductType> | Create Same As Address        | checkbox       |
      | <ApplicationStage> | <ProductType> | Create another after this one | checkbox       |



#    Copy address functionality: Addition of validation to check mandatory fields in copied record

#StoryId:CAS-99514
   #FeatureID-ACAUTOCAS-151,CAS-99514
   # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9860: Copy address functionality in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user add "<Address>" in personal information
    And user copy from an existing Address to add another "<Copied_Address>"
    And user selects address type as "<Copied_Address>"
    And user click on "<Button>"
    Then "<Copied_Address>" "<Throw_notThrow>" message
    Examples:
      | ApplicationStage | ProductType   | Address                    | Copied_Address             | Button               | Throw_notThrow      |
      | ApplicationStage | <ProductType> | Additional Address         | Permanent Address          | Done                 | not throw any error |
      | ApplicationStage | <ProductType> | Additional Address         | Residential Address        | Done                 | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Additional Address         | Done                 | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Residential Address        | Done                 | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Additional Address         | Done                 | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Permanent Address          | Done                 | not throw any error |
      | ApplicationStage | <ProductType> | Alternate Business Address | Additional Address         | Done                 | not throw any error |
      | ApplicationStage | <ProductType> | Alternate Business Address | Permanent Address          | Done                 | throw an error      |
      | ApplicationStage | <ProductType> | Alternate Business Address | Residential Address        | Done                 | throw an error      |
      | ApplicationStage | <ProductType> | Office Address             | Additional Address         | Done                 | not throw any error |
      | ApplicationStage | <ProductType> | Office Address             | Permanent Address          | Done                 | throw an error      |
      | ApplicationStage | <ProductType> | Office Address             | Residential Address        | Done                 | throw an error      |
      | ApplicationStage | <ProductType> | Additional Address         | Alternate Business Address | Done                 | not throw any error |
      | ApplicationStage | <ProductType> | Additional Address         | Office Address             | Done                 | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Alternate Business Address | Done                 | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Office Address             | Done                 | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Alternate Business Address | Done                 | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Office Address             | Done                 | not throw any error |
      | ApplicationStage | <ProductType> | Additional Address         | Permanent Address          | Check for Duplicates | not throw any error |
      | ApplicationStage | <ProductType> | Additional Address         | Residential Address        | Check for Duplicates | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Additional Address         | Check for Duplicates | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Residential Address        | Check for Duplicates | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Additional Address         | Check for Duplicates | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Permanent Address          | Check for Duplicates | not throw any error |
      | ApplicationStage | <ProductType> | Alternate Business Address | Additional Address         | Check for Duplicates | not throw any error |
      | ApplicationStage | <ProductType> | Alternate Business Address | Permanent Address          | Check for Duplicates | throw an error      |
      | ApplicationStage | <ProductType> | Alternate Business Address | Residential Address        | Check for Duplicates | throw an error      |
      | ApplicationStage | <ProductType> | Office Address             | Additional Address         | Check for Duplicates | not throw any error |
      | ApplicationStage | <ProductType> | Office Address             | Permanent Address          | Check for Duplicates | throw an error      |
      | ApplicationStage | <ProductType> | Office Address             | Residential Address        | Check for Duplicates | throw an error      |
      | ApplicationStage | <ProductType> | Additional Address         | Alternate Business Address | Check for Duplicates | not throw any error |
      | ApplicationStage | <ProductType> | Additional Address         | Office Address             | Check for Duplicates | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Alternate Business Address | Check for Duplicates | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Office Address             | Check for Duplicates | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Alternate Business Address | Check for Duplicates | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Office Address             | Check for Duplicates | not throw any error |
      | ApplicationStage | <ProductType> | Additional Address         | Permanent Address          | Save                 | not throw any error |
      | ApplicationStage | <ProductType> | Additional Address         | Residential Address        | Save                 | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Additional Address         | Save                 | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Residential Address        | Save                 | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Additional Address         | Save                 | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Permanent Address          | Save                 | not throw any error |
      | ApplicationStage | <ProductType> | Alternate Business Address | Additional Address         | Save                 | not throw any error |
      | ApplicationStage | <ProductType> | Alternate Business Address | Permanent Address          | Save                 | throw an error      |
      | ApplicationStage | <ProductType> | Alternate Business Address | Residential Address        | Save                 | throw an error      |
      | ApplicationStage | <ProductType> | Office Address             | Additional Address         | Save                 | not throw any error |
      | ApplicationStage | <ProductType> | Office Address             | Permanent Address          | Save                 | throw an error      |
      | ApplicationStage | <ProductType> | Office Address             | Residential Address        | Save                 | throw an error      |
      | ApplicationStage | <ProductType> | Additional Address         | Alternate Business Address | Save                 | not throw any error |
      | ApplicationStage | <ProductType> | Additional Address         | Office Address             | Save                 | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Alternate Business Address | Save                 | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Office Address             | Save                 | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Alternate Business Address | Save                 | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Office Address             | Save                 | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Additional Address         | Save & Next          | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Permanent Address          | Save & Next          | not throw any error |
      | ApplicationStage | <ProductType> | Alternate Business Address | Additional Address         | Save & Next          | not throw any error |
      | ApplicationStage | <ProductType> | Alternate Business Address | Permanent Address          | Save & Next          | throw an error      |
      | ApplicationStage | <ProductType> | Alternate Business Address | Residential Address        | Save & Next          | throw an error      |
      | ApplicationStage | <ProductType> | Office Address             | Additional Address         | Save & Next          | not throw any error |
      | ApplicationStage | <ProductType> | Office Address             | Permanent Address          | Save & Next          | throw an error      |
      | ApplicationStage | <ProductType> | Office Address             | Residential Address        | Save & Next          | throw an error      |
      | ApplicationStage | <ProductType> | Additional Address         | Alternate Business Address | Save & Next          | not throw any error |
      | ApplicationStage | <ProductType> | Additional Address         | Office Address             | Save & Next          | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Alternate Business Address | Save & Next          | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Office Address             | Save & Next          | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Alternate Business Address | Save & Next          | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Office Address             | Save & Next          | not throw any error |
      | ApplicationStage | <ProductType> | Additional Address         | Permanent Address          | Move to Next Stage   | not throw any error |
      | ApplicationStage | <ProductType> | Additional Address         | Residential Address        | Move to Next Stage   | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Additional Address         | Move to Next Stage   | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Residential Address        | Move to Next Stage   | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Additional Address         | Move to Next Stage   | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Permanent Address          | Move to Next Stage   | not throw any error |
      | ApplicationStage | <ProductType> | Alternate Business Address | Additional Address         | Move to Next Stage   | not throw any error |
      | ApplicationStage | <ProductType> | Alternate Business Address | Permanent Address          | Move to Next Stage   | throw an error      |
      | ApplicationStage | <ProductType> | Alternate Business Address | Residential Address        | Move to Next Stage   | throw an error      |
      | ApplicationStage | <ProductType> | Office Address             | Additional Address         | Move to Next Stage   | not throw any error |
      | ApplicationStage | <ProductType> | Office Address             | Permanent Address          | Move to Next Stage   | throw an error      |
      | ApplicationStage | <ProductType> | Office Address             | Residential Address        | Move to Next Stage   | throw an error      |
      | ApplicationStage | <ProductType> | Additional Address         | Alternate Business Address | Move to Next Stage   | not throw any error |
      | ApplicationStage | <ProductType> | Additional Address         | Office Address             | Move to Next Stage   | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Alternate Business Address | Move to Next Stage   | not throw any error |
      | ApplicationStage | <ProductType> | Permanent Address          | Office Address             | Move to Next Stage   | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Alternate Business Address | Move to Next Stage   | not throw any error |
      | ApplicationStage | <ProductType> | Residential Address        | Office Address             | Move to Next Stage   | not throw any error |

#StoryID:CAS-102674
     #FeatureID-ACAUTOCAS-151,CAS-102674
   # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9861: <Field> field validation for <Address_City> in <Address_Type> at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user selects address type as <Address_Type>
    Then "<Field>" field for "<Address_City>" should be display as Calendar field in <Address_Type>
    Examples:
      | ApplicationStage | ProductType   | Field     | Address_City                | Address_Type               |
      | ApplicationStage | <ProductType> | From Date | Duration at current Address | Additional Address         |
      | ApplicationStage | <ProductType> | To Date   | Duration at current Address | Additional Address         |
      | ApplicationStage | <ProductType> | From Date | Duration at Current City    | Additional Address         |
      | ApplicationStage | <ProductType> | To Date   | Duration at Current City    | Additional Address         |
      | ApplicationStage | <ProductType> | From Date | Duration at current Address | Alternate Business Address |
      | ApplicationStage | <ProductType> | To Date   | Duration at current Address | Alternate Business Address |
      | ApplicationStage | <ProductType> | From Date | Duration at Current City    | Alternate Business Address |
      | ApplicationStage | <ProductType> | To Date   | Duration at Current City    | Alternate Business Address |
      | ApplicationStage | <ProductType> | From Date | Duration at current Address | Office Address             |
      | ApplicationStage | <ProductType> | To Date   | Duration at current Address | Office Address             |
      | ApplicationStage | <ProductType> | From Date | Duration at Current City    | Office Address             |
      | ApplicationStage | <ProductType> | To Date   | Duration at Current City    | Office Address             |
      | ApplicationStage | <ProductType> | From Date | Duration at current Address | Permanent Address          |
      | ApplicationStage | <ProductType> | To Date   | Duration at current Address | Permanent Address          |
      | ApplicationStage | <ProductType> | From Date | Duration at Current City    | Permanent Address          |
      | ApplicationStage | <ProductType> | To Date   | Duration at Current City    | Permanent Address          |
      | ApplicationStage | <ProductType> | From Date | Duration at current Address | Residential Address        |
      | ApplicationStage | <ProductType> | To Date   | Duration at current Address | Residential Address        |
      | ApplicationStage | <ProductType> | From Date | Duration at Current City    | Residential Address        |
      | ApplicationStage | <ProductType> | To Date   | Duration at Current City    | Residential Address        |

  #StoryID:CAS-102674
       #FeatureID-ACAUTOCAS-151,CAS-102674
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9862: <Field> validation for <Address_City> in <Address_Type> at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user selects address type as "<Address_Type>"
    And user fills To Date field for "<Address_City>"
    When user fills From Date field for "<Address_City>"
    Then "<Field>" field should be display in two separate block
    Examples:
      | ApplicationStage   | ProductType   | Field           | Address_City                | Address_Type               |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Additional Address         |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Additional Address         |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Office Address             |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Office Address             |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Residential Address        |

    #StoryID:CAS-102674
  #FeatureID-ACAUTOCAS-151,CAS-102674
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9863: <Field> calculation for <Address_City> in <Address_Type> at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user selects address type as "<Address_Type>"
    And user fills To Date field for "<Address_City>"
    When user fills From Date field for "<Address_City>"
    Then "<Field>" field should be calculated correctly
    Examples:
      | ApplicationStage   | ProductType   | Field           | Address_City                | Address_Type               |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Additional Address         |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Additional Address         |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Office Address             |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Office Address             |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Residential Address        |

   #StoryID:CAS-102674
   #FeatureID-ACAUTOCAS-151,CAS-102674
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9864: <Field> calculation for <Address_City> in <Address_Type> if Current Address checkbox is checked at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user selects address type as "<Address_Type>"
    And user checked Current Address checkbox
    When user fills From Date field for "<Address_City>"
    Then "<Field>" field should be calculated correctly as per current system date
    Examples:
      | ApplicationStage   | ProductType   | Field           | Address_City                | Address_Type               |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Additional Address         |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Additional Address         |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Office Address             |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Office Address             |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Permanent Address          |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Permanent Address          |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at current address | Residential Address        |
      | <ApplicationStage> | <ProductType> | Year and Months | Duration at Current City    | Residential Address        |
    #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9865: Duplicate <Address> addition in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user add "<Address>" in personal information
    And user wants to add same "<Address>" which is added already
    Then "<Address>" should not add with duplicate address error
    Examples:
      | ApplicationStage   | ProductType   | Address             |
      | <ApplicationStage> | <ProductType> | Residential Address |
    #FeatureID-ACAUTOCAS-151
   # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9866: Adding duplicate <Address> in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user add "<Address>" in personal information
    And user wants to add same "<Address>" which is added already
    Then "<Address>" should not throw any error added without any error message
    Examples:
      | ApplicationStage   | ProductType   | Address                                          |
      | <ApplicationStage> | <ProductType> | Alternate Business Address                       |
      | <ApplicationStage> | <ProductType> | Additional Address with purpose combination      |
      | <ApplicationStage> | <ProductType> | Additional Address with same purpose combination |
      | <ApplicationStage> | <ProductType> | Office Address                                   |
    #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9867: Edit the added <Address> in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user add "<Address>" in personal information
    And user edits "<Address>" details
    Then "<Address>" should should be edited successfully
    Examples:
      | ApplicationStage   | ProductType   | Address                    |
      | <ApplicationStage> | <ProductType> | Additional Address         |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | Office Address             |
      | <ApplicationStage> | <ProductType> | Permanent Address          |
      | <ApplicationStage> | <ProductType> | Residential Address        |

     #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9868: Validate the <Address> details after editing the details in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add "<Address>" in personal information
    And user edits "<Address>" details
    When user view "<Address>" details
    Then "<Address>" should should be display with updated details after edit
    Examples:
      | ApplicationStage   | ProductType   | Address                    |
      | <ApplicationStage> | <ProductType> | Additional Address         |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | Office Address             |
      | <ApplicationStage> | <ProductType> | Permanent Address          |
      | <ApplicationStage> | <ProductType> | Residential Address        |

 #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9869: View the added <Address> in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add "<Address>" in personal information
    When user view the added "<Address>" details
    Then "<Address>" details should should be display in view mode
    Examples:
      | ApplicationStage   | ProductType   | Address                    |
      | <ApplicationStage> | <ProductType> | Additional Address         |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | Office Address             |
      | <ApplicationStage> | <ProductType> | Permanent Address          |
      | <ApplicationStage> | <ProductType> | Residential Address        |
#15_CAS-99291
  #FeatureID-ACAUTOCAS-151,CAS-99291
   # ${ ProductType : ["GL","FAS"]}
   # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9870: Delete the added <Address> in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user add "<Address>" in personal information
    And user deletes "<Address>" details
    Then "<Address>" should should be deleted successfully
    Examples:
      | ApplicationStage   | ProductType   | Address                    |
      | <ApplicationStage> | <ProductType> | Additional Address         |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | Office Address             |
      | <ApplicationStage> | <ProductType> | Permanent Address          |
      | <ApplicationStage> | <ProductType> | Residential Address        |

    #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  @Sanity
  Scenario Outline: ACAUTOCAS-9871: Communication details validation after adding all types of address in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user add below address in personal information
      | Additional Address         |
      | Alternate Business Address |
      | Office Address             |
      | Permanent Address          |
      | Residential Address        |
    And user open communication detail
    Then all added address details should be display in communication details
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

 #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9872: Communication details "<Communication_Column>" column validation after adding address in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user add address in personal information
    And user open communication detail
    Then added address details should be display in communication details with "<Communication_Column>"
    Examples:
      | ApplicationStage   | ProductType   | Communication_Column |
      | <ApplicationStage> | <ProductType> | Address              |
      | <ApplicationStage> | <ProductType> | Country              |
      | <ApplicationStage> | <ProductType> | Address Type         |
      | <ApplicationStage> | <ProductType> | State                |
      | <ApplicationStage> | <ProductType> | City                 |
     #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9873: Address details from communication details removed on deleting of added "<Address>" in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add "<Address>" in personal information
    When user deletes "<Address>" details
    And user open communication details accordion
    Then "<Address>" details from should removed from communication details
    Examples:
      | ApplicationStage   | ProductType   | Address                    |
      | <ApplicationStage> | <ProductType> | Additional Address         |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | Office Address             |
      | <ApplicationStage> | <ProductType> | Permanent Address          |
      | <ApplicationStage> | <ProductType> | Residential Address        |

#StoryID:CAS-110827
   #FeatureID-ACAUTOCAS-151,CAS-110827
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9874: Click on <Save_Next> button "<With_Without>" marking added multiple address as Primary Address in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add multiple address in personal information
    And user user check for duplicates
    When user clicks "<Save_Next>" button "<With_Without>" marking an address as Primary Address out of multiple added addresses in communication details
    Then an error message <Occurred_NotOccurred> on Primary Address marking
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | With_Without | Occurred_NotOccurred           |
      | <ApplicationStage> | <ProductType> | Save        | without      | occurred                       |
      | <ApplicationStage> | <ProductType> | Save        | with         | not throw any error   occurred |
      | <ApplicationStage> | <ProductType> | Save & Next | without      | occurred                       |
      | <ApplicationStage> | <ProductType> | Save & Next | with         | not throw any error   occurred |

    #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-151,CAS-110827
   # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9875: Residential Address marked as primary address automatically on clicking <Save_Next> button in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add single Residential Address in personal information
    And user user check for duplicates
    When user clicks "<Save_Next>" button
    Then Residential Address marked as primary address automatically in communication details
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   |
      | <ApplicationStage> | <ProductType> | Save        |
      | <ApplicationStage> | <ProductType> | Save & Next |
    #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9876: Automatic primary marking of address on clicking <Save_Next> button in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add multiple address in personal information
    And user user check for duplicates
    When user clicks "<Save_Next>" button
    Then an error occurred to mark a primary address in communication details
    Examples:
      | ApplicationStage | ProductType   | Save_Next   |
      | ApplicationStage | <ProductType> | Save        |
      | ApplicationStage | <ProductType> | Save & Next |

  #StoryID:CAS-53892
  #FeatureID-ACAUTOCAS-151,CAS-53892
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9877: "<Primary_Number>" field validation in Communication Details on selecting the radio button of "<Address>" to make it Primary Address in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add "<Address>" in personal information
    And user open communication details accordion
    When user selects the radio button of "<Address>" to make it Primary Address
    Then "<Primary_Number>" field in Communication Details should be auto filled with same "<Primary_Number>" which is filled in "<Address>"
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Primary_Number        |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Phone         |
      | <ApplicationStage> | <ProductType> | Additional Address         | Primary Mobile Number |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Phone         |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Primary Mobile Number |
      | <ApplicationStage> | <ProductType> | Office Address             | Primary Phone         |
      | <ApplicationStage> | <ProductType> | Office Address             | Primary Mobile Number |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Phone         |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Primary Mobile Number |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Phone         |
      | <ApplicationStage> | <ProductType> | Residential Address        | Primary Mobile Number |
  #FeatureID-ACAUTOCAS-151
     # ${ ProductType : ["GL","FAS"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9878: Residential Address is mandatory to <Save_Next> in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user add all type of address except Residential Address in personal information
    And user clicks "<Save_Next>" button
    Then an error message display to add Residential Address
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   |
      | <ApplicationStage> | <ProductType> | Save        |
      | <ApplicationStage> | <ProductType> | Save & Next |

  #StoryID:CAS-110827
    #FeatureID-ACAUTOCAS-151,CAS-110827
   # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9879: Residential Address marked as primary address automatically on clicking <Save_Next> button after deleting "<Address>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add "<Address>" in personal information
    And user add Residential Address in personal information
    And user user check for duplicates
    When user deletes "<Address>"
    And user clicks "<Save_Next>" button
    Then Residential Address marked as primary address automatically after deletion of "<Address>" in communication details
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Save_Next   |
      | <ApplicationStage> | <ProductType> | Additional Address         | Save        |
      | <ApplicationStage> | <ProductType> | Additional Address         | Save & Next |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Save        |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Save & Next |
      | <ApplicationStage> | <ProductType> | Office Address             | Save        |
      | <ApplicationStage> | <ProductType> | Office Address             | Save & Next |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Save        |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Save & Next |
      | <ApplicationStage> | <ProductType> | Residential Address        | Save        |
      | <ApplicationStage> | <ProductType> | Residential Address        | Save & Next |

  #StoryID:CAS-110827
     #FeatureID-ACAUTOCAS-151,CAS-110827
    # ${ ProductType : ["GL","FAS"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9880: Primary address marking should remain intact after any modification in <Address> details at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add "<Address>" in personal information
    And user open communication details accordion
    And user selects the radio button of "<Address>" to make it Primary Address
    When user modify "<Address>" details in personal information
    Then Primary address marking should remain intact after any modification in communication details
    Examples:
      | ApplicationStage   | ProductType   | Address                    |
      | <ApplicationStage> | <ProductType> | Additional Address         |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | Office Address             |
      | <ApplicationStage> | <ProductType> | Permanent Address          |
      | <ApplicationStage> | <ProductType> | Residential Address        |

 #StoryID:CAS-110827
   #FeatureID-ACAUTOCAS-151,CAS-110827
   # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9881: If user deletes the marked primary Residential Address and after adding again Residential Address marked as primary address automatically on clicking <Save_Next> button in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add Residential Address in personal information
    And user user check for duplicates
    And user selects the radio button of Residential Address to make it Primary Address
    And user clicks "<Save_Next>" button
    And user deletes the marked primary Residential Address
    And user again add Residential Address
    And user user check for duplicates
    When user clicks "<Save_Next>" button
    Then Residential Address marked as primary address automatically in communication details
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   |
      | <ApplicationStage> | <ProductType> | Save        |
      | <ApplicationStage> | <ProductType> | Save & Next |

 #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-151,CAS-110827
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9882: Residential Address marked as primary address automatically on clicking <Save_Next> button in personal information for individual applicant co-applicant at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user adding another individual applicant as co-applicant
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add single Residential Address in personal information
    And user user check for duplicates
    When user clicks "<Save_Next>" button
    Then Residential Address marked as primary address automatically in communication details
    Examples:
      | ApplicationStage   | ProductType   | ApplicationStage   | Save_Next   |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Save        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Save & Next |

 #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-151,CAS-110827
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9883: Automatic primary marking of address on clicking <Save_Next> button in personal information for individual applicant co-applicant at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user adding another individual applicant as co-applicant
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add multiple address in personal information
    And user user check for duplicates
    When user clicks "<Save_Next>" button
    Then an error occurred to mark a primary address in communication details

    Examples:
      | ApplicationStage   | ProductType   | ApplicationStage   | Save_Next   |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Save        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Save & Next |

 #StoryID:CAS-53892
  #FeatureID-ACAUTOCAS-151,CAS-53892
   # ${ ProductType : ["GL","FAS"]}
   # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-13860: "<Primary_Number>" validation in Communication Details on selecting the radio button of "<Address>" to make it Primary Address for individual applicant co-applicant at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user adding another individual applicant as co-applicant
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add "<Address>" in personal information
    And user open communication details accordion
    When user selects the radio button of "<Address>" to make it Primary Address
    Then "<Primary_Number>" field in Communication Details should be auto filled with same "<Primary_Number>" which is filled in "<Address>"
    Examples:
      | ApplicationStage   | ProductType   | ApplicationStage   | Address                    | Primary_Number        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Additional Address         | Primary Phone         |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Additional Address         | Primary Mobile Number |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Alternate Business Address | Primary Phone         |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Alternate Business Address | Primary Mobile Number |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Office Address             | Primary Phone         |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Office Address             | Primary Mobile Number |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Permanent Address          | Primary Phone         |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Permanent Address          | Primary Mobile Number |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Residential Address        | Primary Phone         |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Residential Address        | Primary Mobile Number |

     #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-151,CAS-110827
   # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-13861: After adding again Residential Address marked as primary address automatically on clicking <Save_Next> for individual applicant co-applicant at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user adding another individual applicant as co-applicant
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add Residential Address in personal information
    And user user check for duplicates
    And user selects the radio button of Residential Address to make it Primary Address
    And user clicks "<Save_Next>" button
    And user deletes the marked primary Residential Address
    And user again add Residential Address
    And user user check for duplicates
    When user clicks "<Save_Next>" button
    Then Residential Address marked as primary address automatically in communication details
    Examples:
      | ApplicationStage   | ProductType   | ApplicationStage   | Save_Next   |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Save        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Save & Next |

    #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-151,CAS-110827
   # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9884: Primary address marking should remain intact after any modification in <Address> details in personal information for individual applicant co-applicant at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user adding another individual applicant as co-applicant
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add "<Address>" in personal information
    And user open communication details accordion
    And user selects the radio button of "<Address>" to make it Primary Address
    When user modify "<Address>" details in personal information
    Then Primary address marking should remain intact after any modification in communication details
    Examples:
      | ApplicationStage   | ProductType   | ApplicationStage   | Address                    |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Additional Address         |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Office Address             |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Residential Address        |

    #StoryID:CAS-110827
    #FeatureID-ACAUTOCAS-151,CAS-110827
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-13862: Residential Address marked as primary address automatically on clicking <Save_Next> after deleting "<Address>" for individual applicant co-applicant at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user adding another individual applicant as co-applicant
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add "<Address>" in personal information
    And user add Residential Address in personal information
    And user user check for duplicates
    When user deletes "<Address>"
    And user clicks "<Save_Next>" button
    Then Residential Address marked as primary address automatically after deletion of "<Address>" in communication details
    Examples:
      | ApplicationStage   | ProductType   | ApplicationStage   | Address                    | Save_Next   |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Additional Address         | Save        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Additional Address         | Save & Next |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Alternate Business Address | Save        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Alternate Business Address | Save & Next |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Office Address             | Save        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Office Address             | Save & Next |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Permanent Address          | Save        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Permanent Address          | Save & Next |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Residential Address        | Save        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Residential Address        | Save & Next |


   #StoryID:CAS-110827
   #FeatureID-ACAUTOCAS-151,CAS-110827
   # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9885: Residential Address marked as primary address automatically on clicking <Save_Next> button in personal information for individual applicant guarantor at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user adding another individual applicant as guarantor
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add single Residential Address in personal information
    And user user check for duplicates
    When user clicks "<Save_Next>" button
    Then Residential Address marked as primary address automatically in communication details
    Examples:
      | ApplicationStage   | ProductType   | ApplicationStage   | Save_Next   |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Save        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Save & Next |

 #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-151,CAS-110827
   # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9886: Automatic primary marking of address on clicking <Save_Next> button in personal information for individual applicant guarantor at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user adding another individual applicant as guarantor
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add multiple address in personal information
    And user user check for duplicates
    When user clicks "<Save_Next>" button
    Then an error occurred to mark a primary address in communication details
    Examples:
      | ApplicationStage   | ProductType   | ApplicationStage   | Save_Next   |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Save        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Save & Next |

 #StoryID:CAS-53892
  #FeatureID-ACAUTOCAS-151,CAS-53892
   # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-13863: "<Primary_Number>" validation in Communication Details on selecting the radio button of "<Address>" to make it Primary Address for individual guarantor at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user adding another individual applicant as guarantor
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add "<Address>" in personal information
    And user open communication details accordion
    When user selects the radio button of "<Address>" to make it Primary Address
    Then "<Primary_Number>" field in Communication Details should be auto filled with same "<Primary_Number>" which is filled in "<Address>"
    Examples:
      | ApplicationStage   | ProductType   | ApplicationStage   | Address                    | Primary_Number        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Additional Address         | Primary Phone         |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Additional Address         | Primary Mobile Number |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Alternate Business Address | Primary Phone         |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Alternate Business Address | Primary Mobile Number |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Office Address             | Primary Phone         |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Office Address             | Primary Mobile Number |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Permanent Address          | Primary Phone         |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Permanent Address          | Primary Mobile Number |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Residential Address        | Primary Phone         |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Residential Address        | Primary Mobile Number |

    #Bug:CAS-116497
  #FeatureID-ACAUTOCAS-151,CAS-116497
   # ${ ProductType : ["GL","FAS"]}
   # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9887: "<Primary_Number>" field validation in Communication Details on selection of address to make it Primary Address in personal information for individual guarantor at <ApplicationStage> in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user adding another individual applicant as guarantor
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add all type of address in personal information
    And user open communication details accordion
    When user selects the radio button of an address to make it Primary Address
#   Residential Address
    And now selects the radio button of another address to make it Primary Address
#    Additional Address//Permanent//Office Address
    Then "<Primary_Number>" field in Communication Details should be change as per selection of radio button
    Examples:
      | ApplicationStage   | ProductType   | ApplicationStage   | Primary_Number        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Primary Phone         |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Primary Mobile Number |

     #StoryID:CAS-110827
   #FeatureID-ACAUTOCAS-151,CAS-110827
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-13864: After deleting adding again Residential Address marked as primary address automatically on clicking <Save_Next> for individual applicant guarantor at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user adding another individual applicant as guarantor
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add Residential Address in personal information
    And user user check for duplicates
    And user selects the radio button of Residential Address to make it Primary Address
    And user clicks "<Save_Next>" button
    And user deletes the marked primary Residential Address
    And user again add Residential Address
    And user user check for duplicates
    When user clicks "<Save_Next>" button
    Then Residential Address marked as primary address automatically
    Examples:
      | ApplicationStage   | ProductType   | ApplicationStage   | Save_Next   |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Save        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Save & Next |

    #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-151,CAS-110827
   # ${ ProductType : ["GL","FAS"]}
   # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9888: Primary address marking should remain intact after any modification in <Address> details in personal information for individual applicant guarantor at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user adding another individual applicant as guarantor
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add "<Address>" in personal information
    And user open communication details accordion
    And user selects the radio button of "<Address>" to make it Primary Address
    When user modify "<Address>" details in personal information
    Then Primary address marking should remain intact after any modification
    Examples:
      | ApplicationStage   | ProductType   | ApplicationStage   | Address                    |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Additional Address         |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Office Address             |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Permanent Address          |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Residential Address        |

    #StoryID:CAS-110827
  #FeatureID-ACAUTOCAS-151,CAS-110827
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-13865: Residential Address marked as primary address automatically on clicking <Save_Next> after deleting "<Address>" for individual applicant guarantor at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user adding another individual applicant as guarantor
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add "<Address>" in personal information
    And user add Residential Address in personal information
    And user user check for duplicates
    And user deletes "<Address>"
    When user clicks "<Save_Next>" button
    Then Residential Address marked as primary address automatically after deletion of "<Address>"
    Examples:
      | ApplicationStage   | ProductType   | ApplicationStage   | Address                    | Save_Next   |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Additional Address         | Save        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Additional Address         | Save & Next |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Alternate Business Address | Save        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Alternate Business Address | Save & Next |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Office Address             | Save        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Office Address             | Save & Next |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Permanent Address          | Save        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Permanent Address          | Save & Next |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Residential Address        | Save        |
      | <ApplicationStage> | <ProductType> | <ApplicationStage> | Residential Address        | Save & Next |

#    SquashID:02_CAS_64722,03_CAS_64722
   #FeatureID-ACAUTOCAS-151,CAS_64722
   # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9889: Validate the office address to be Non mandatory during the application creation in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user add Residential Address except office address in personal information
    Then Residential Address "<Save_Next>" successfully without any error that Please save office address
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   |
      | <ApplicationStage> | <ProductType> | Save        |
      | <ApplicationStage> | <ProductType> | Save & Next |

#    ============================== Configuration based Scenarios ==========================================

#  Prerequisites:Configuration should be '${address1},${address2},${street} ${streetName},${city},${state}-${pinCode},${country}' in configuration table
  #StoryID:CAS-102541
   #FeatureID-ACAUTOCAS-151,CAS-102541
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9890: Full Address field validation for <Address> in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user fills below field of <Address>
      | Address1 |
      | Address2 |
      | Address3 |
      | Street   |
      | Pin code |
      | Country  |
    Then Full Address field should contain data in this format "address1, address2, street, city, state- pincode, country"
    Examples:
      | ApplicationStage   | ProductType   | Address                                          |
      | <ApplicationStage> | <ProductType> | Alternate Business Address                       |
      | <ApplicationStage> | <ProductType> | Additional Address with purpose combination      |
      | <ApplicationStage> | <ProductType> | Additional Address with same purpose combination |
      | <ApplicationStage> | <ProductType> | Office Address                                   |

#StoryID:CAS-102541
   #FeatureID-ACAUTOCAS-151,CAS-102541
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9891: <Filed> field validation after filling full address field of <Address> in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    When user fills full address field of "<Address>"
    Then "<Field>" should be auto filled successfully "address1, address2, street, city, state- pincode, country"
    Examples:
      | ApplicationStage   | ProductType   | Address                    | Field          |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Address Line 1 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Address Line 2 |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | City           |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | State          |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | PinCode        |
      | <ApplicationStage> | <ProductType> | Alternate Business Address | Country        |
      | <ApplicationStage> | <ProductType> | Additional Address         | Address Line 1 |
      | <ApplicationStage> | <ProductType> | Additional Address         | Address Line 2 |
      | <ApplicationStage> | <ProductType> | Additional Address         | City           |
      | <ApplicationStage> | <ProductType> | Additional Address         | State          |
      | <ApplicationStage> | <ProductType> | Additional Address         | PinCode        |
      | <ApplicationStage> | <ProductType> | Additional Address         | Country        |
      | <ApplicationStage> | <ProductType> | Residential Address        | Address Line 1 |
      | <ApplicationStage> | <ProductType> | Residential Address        | Address Line 2 |
      | <ApplicationStage> | <ProductType> | Residential Address        | City           |
      | <ApplicationStage> | <ProductType> | Residential Address        | State          |
      | <ApplicationStage> | <ProductType> | Residential Address        | PinCode        |
      | <ApplicationStage> | <ProductType> | Residential Address        | Country        |
      | <ApplicationStage> | <ProductType> | Office Address             | Address Line 1 |
      | <ApplicationStage> | <ProductType> | Office Address             | Address Line 2 |
      | <ApplicationStage> | <ProductType> | Office Address             | City           |
      | <ApplicationStage> | <ProductType> | Office Address             | State          |
      | <ApplicationStage> | <ProductType> | Office Address             | PinCode        |
      | <ApplicationStage> | <ProductType> | Office Address             | Country        |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Address Line 1 |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Address Line 2 |
      | <ApplicationStage> | <ProductType> | Permanent Address          | City           |
      | <ApplicationStage> | <ProductType> | Permanent Address          | State          |
      | <ApplicationStage> | <ProductType> | Permanent Address          | PinCode        |
      | <ApplicationStage> | <ProductType> | Permanent Address          | Country        |


#========= Additional Info button/ configuration based
#  Prerequisite:user have to below Authority
# YAKEEN_EDIT_ENABLED
    #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9892: Additional Info button validation in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    When user clicks on Additional Info button
    Then Customer Additional Info page should be open
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

      #FeatureID-ACAUTOCAS-151
 # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9893: Minimize the Customer Additional Info page in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user minimize the Customer Additional Info page in personal information
    When user clicks on Additional Info button
    And user minimize the Customer Additional Info page
    Then Customer Additional Info page should be minimized
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

      #FeatureID-ACAUTOCAS-151
 # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9894: Maximize the minimized Customer Additional Info page in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    When user clicks on Additional Info button
    And user maximize the minimized Customer Additional Info page in personal information
    Then  Customer Additional Info page should be maximized
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

      #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9895: <Close_Cancel> the Customer Additional Info page in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user clicks on Additional Info button
    When user "<Close_Cancel>" the Customer Additional Info page
    Then Customer Additional Info should be "<Close_Cancel>"
    Examples:
      | ApplicationStage   | ProductType   | Close_Cancel |
      | <ApplicationStage> | <ProductType> | close        |
      | <ApplicationStage> | <ProductType> | cancel       |

 #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9896: Validation of warning message while cancel the "<Address>" adding process in personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user fill some fields of "<Address>" in personal information
    When user cancel the "<Address>" adding process
    Then warning popped up message should be display
    Examples:
      | ApplicationStage   | ProductType   | Address                    |
      | <ApplicationStage> | <ProductType> | Additional Address         |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | Office Address             |
      | <ApplicationStage> | <ProductType> | Permanent Address          |
      | <ApplicationStage> | <ProductType> | Residential Address        |

   #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9897: Cancel the "<Address>" adding process personal information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user fill some fields of "<Address>" in personal information
    When user cancel the "<Address>" adding process
    Then adding process of "<Address>" should should be canceled successfully
    Examples:
      | ApplicationStage   | ProductType   | Address                    |
      | <ApplicationStage> | <ProductType> | Additional Address         |
      | <ApplicationStage> | <ProductType> | Alternate Business Address |
      | <ApplicationStage> | <ProductType> | Office Address             |
      | <ApplicationStage> | <ProductType> | Permanent Address          |
      | <ApplicationStage> | <ProductType> | Residential Address        |

  #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9898: Validate <Field> field of primary applicant under Applicant Information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add address details in personal information
    And user save the Applicant Information
    When clicks applicant information tab
    Then "<Field>" field should be matched
    Examples:
      | ApplicationStage   | ProductType   | Field                |
      | <ApplicationStage> | <ProductType> | Photo                |
      | <ApplicationStage> | <ProductType> | Customer Name        |
      | <ApplicationStage> | <ProductType> | Neo Cust ID          |
      | <ApplicationStage> | <ProductType> | Date of Birth        |
      | <ApplicationStage> | <ProductType> | ID Number            |
      | <ApplicationStage> | <ProductType> | Landline Number      |
      | <ApplicationStage> | <ProductType> | Phone Number(Mobile) |

  #FeatureID-ACAUTOCAS-151
   # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9899: Validate <Field> field of co-applicant under Applicant Information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user adding another individual applicant as co-applicant
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add address details in personal information
    And user save the Applicant Information
    When clicks applicant information tab
    Then "<Field>" field should be matched
    Examples:
      | ApplicationStage   | ProductType   | Field                |
      | <ApplicationStage> | <ProductType> | Photo                |
      | <ApplicationStage> | <ProductType> | Customer Name        |
      | <ApplicationStage> | <ProductType> | Neo Cust ID          |
      | <ApplicationStage> | <ProductType> | Date of Birth        |
      | <ApplicationStage> | <ProductType> | ID Number            |
      | <ApplicationStage> | <ProductType> | Landline Number      |
      | <ApplicationStage> | <ProductType> | Phone Number(Mobile) |

     #FeatureID-ACAUTOCAS-151
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["DDE","Credit Approval"]}
  Scenario Outline: ACAUTOCAS-9900: Validate <Field> field of guarantor under Applicant Information at "<ApplicationStage>" in "<ProductType>" which start from DDE stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user adding another individual applicant as guarantor
    And user fills home page of personal information
    And user fills identification details in personal information
    And user add address details in personal information
    And user save the Applicant Information
    When clicks applicant information tab
    Then "<Field>" field should be matched
    Examples:
      | ApplicationStage   | ProductType   | Field                |
      | <ApplicationStage> | <ProductType> | Photo                |
      | <ApplicationStage> | <ProductType> | Customer Name        |
      | <ApplicationStage> | <ProductType> | Neo Cust ID          |
      | <ApplicationStage> | <ProductType> | Date of Birth        |
      | <ApplicationStage> | <ProductType> | ID Number            |
      | <ApplicationStage> | <ProductType> | Landline Number      |
      | <ApplicationStage> | <ProductType> | Phone Number(Mobile) |

   #Sqaush:11_CAS-25615
  #FeatureID-ACAUTOCAS-151,11_CAS-25615
  # ${ ProductType : ["GL","FAS"]}
  # ${ApplicationStage:["Credit Approval","Post Approval","Tranche Initiation", "APP RECOMMENDATION","SENT TO OPS",]}
  Scenario Outline: ACAUTOCAS-13421: Address details data moved to "<ApplicationStage>" stage in "<ProductType>"
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
