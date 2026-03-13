@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-
@TechReviewedBy-
@Reconciled
@AppInfoAdoption
# ${ApplicantType:["indiv"]}

#FeatureID-ACAUTOCAS-158
Feature:Employment Details for Salaried Occupation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #CAS-110829
 # Below configuration should be configured in the system for Reconsideration stage
#1) Authority added for update details checkbox is 'UPDATE_DETAILS_CHECKBOX_AUTH'.
#2) Two new configuration columns are added in entity 'CAS_PROD_TYPE_CONFIG' namely 'IS_NEW_CUST_ALLOWED_RECON' and 'IS_EXIST_CUST_ALLOWED_RECON'.


  Scenario Outline: ACAUTOCAS-12933: Employment Details tab validation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user navigates to applicant personal information screen
    And user check for dedupe on personal information
    When user clicks on "<Save>" button on personal information
    Then Employment Details tab should be "<Enable_Open>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Enable_Open | Save        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Open        | Save & Next |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Enabled     | Save        |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Enable_Open | Save        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Open        | Save & Next |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Enabled     | Save        |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Enable_Open | Save        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Open        | Save & Next |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Enabled     | Save        |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Enable_Open | Save        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Open        | Save & Next |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Enabled     | Save        |


  Scenario Outline: ACAUTOCAS-12934: Required <Field> field validation for salaried employee in Employment Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    When user click on Required to check required fields of salaried employee
    Then "<Field>" field should be present for salaried employee in Employment Details as required field
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years In Job       |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years In Job       |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Field              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employer Name      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Nature of Business |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Industry           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employment Status  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Years In Job       |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years In Job       |


  Scenario Outline: ACAUTOCAS-12935: <Field> field validation in All Fields for salaried employee in Employment Details at stage <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    When user click on All Fields to check all fields of salaried employee
    Then "<Field>" field should be present for salaried employee in Employment Details
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Staff Member checkbox     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sub-Industry              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Type              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Website           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Type           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Department Name           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | DAS Flag                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Cost Center               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employee Number           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Designation               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed from             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed Till             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years In Job              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address checkbox |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Staff Member checkbox     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sub-Industry              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Type              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Website           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Type           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Department Name           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | DAS Flag                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Cost Center               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employee Number           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Designation               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed from             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed Till             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years In Job              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address checkbox |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Field                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Add Occupation Type       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Occupation Code           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Profession                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Description               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Staff Member checkbox     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employer Name             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Nature of Business        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Industry                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Sub-Industry              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Company Type              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Company Website           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employment Type           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Department Name           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | DAS Flag                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Location                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Cost Center               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employee Number           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Designation               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employment Status         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employed from             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employed Till             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Years In Job              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Remarks                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employer Address checkbox |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Staff Member checkbox     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sub-Industry              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Type              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Website           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Type           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Department Name           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | DAS Flag                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Cost Center               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employee Number           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Designation               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed from             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed Till             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years In Job              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address checkbox |


  @Sanity
  Scenario Outline: ACAUTOCAS-12936: <Save_Next> Employment Details for salaried occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And fills required fields of salaried occupation
    And user clicks on Done of employment details for self employed professional
    When user clicks on "<Save_Next>" button on personal information
    Then Employment Details should be "<Save_Next>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Save_Next   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Save        | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Save & Next | employment_details.xlsx | home                   | 0                             |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Save_Next   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Save        | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Save & Next | employment_details.xlsx | home                   | 0                             |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Save_Next   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Save        | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Save & Next | employment_details.xlsx | home                   | 0                             |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Save_Next   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Save        | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Save & Next | employment_details.xlsx | home                   | 0                             |


  Scenario Outline: ACAUTOCAS-12937: Field type validation of <Field> field in Employment Details for salaried employee
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    When user selects occupation type as salaried
    Then field type of "<Field>" field should "<Field_Type>" field in Employment Details for salaried employee
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field               | Field_Type     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code     | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession          | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description         | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name       | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Staff Member        | checkbox       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business  | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry            | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sub-Industry        | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Type        | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Website     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Type     | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Department Name     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employee Number     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Designation         | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status   | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed from       | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed Till       | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years in Job        | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks             | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address    | checkbox       |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field               | Field_Type     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code     | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession          | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description         | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name       | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Staff Member        | checkbox       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business  | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry            | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sub-Industry        | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Type        | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Website     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Type     | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Department Name     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employee Number     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Designation         | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status   | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed from       | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed Till       | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years in Job        | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks             | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address    | checkbox       |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Field               | Field_Type     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Add Occupation Type | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Occupation Code     | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Profession          | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Description         | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employer Name       | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Staff Member        | checkbox       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Nature of Business  | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Industry            | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Sub-Industry        | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Company Type        | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Company Website     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employment Type     | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Department Name     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employee Number     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Designation         | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employment Status   | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employed from       | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employed Till       | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Years in Job        | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Remarks             | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employer Address    | checkbox       |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field               | Field_Type     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code     | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession          | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description         | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name       | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Staff Member        | checkbox       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business  | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry            | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sub-Industry        | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Type        | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Website     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Type     | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Department Name     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employee Number     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Designation         | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status   | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed from       | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed Till       | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years in Job        | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks             | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address    | checkbox       |


  Scenario Outline: ACAUTOCAS-12938: :Warning pop up validation while cancelling the Employment Details filling process for salaried occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And fills some fields
    When user clicks on Cancel button on employment details
    Then warning pop up should be populated with a message
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 124                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 124                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 124                           |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 124                           |


  Scenario Outline: ACAUTOCAS-12939: Cancel the Employment Details filling process for salaried occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And fills some fields
    When user clicks on Cancel button on employment details
    And user clicks on "<Button>" of warning pop up
    Then filled data should be "<Clear_Remains>" in employment details
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Button | Clear_Remains  | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Close  | remains intact | employment_details.xlsx | home                   | 124                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Ok     | Clear          | employment_details.xlsx | home                   | 124                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Button | Clear_Remains  | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Close  | remains intact | employment_details.xlsx | home                   | 124                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Ok     | Clear          | employment_details.xlsx | home                   | 124                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Button | Clear_Remains  | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Close  | remains intact | employment_details.xlsx | home                   | 124                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Ok     | Clear          | employment_details.xlsx | home                   | 124                           |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Button | Clear_Remains  | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Close  | remains intact | employment_details.xlsx | home                   | 124                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Ok     | Clear          | employment_details.xlsx | home                   | 124                           |


  Scenario Outline: ACAUTOCAS-12940: Close the warning pop up with help of <Button_Icon> in Employment Details for salaried employee
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And fills some fields
    When user clicks on Cancel button on employment details
    And user close the warning pop up with help of "<Button_Icon>" in Employment Details
    Then warning pop up should be closed in employment details
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Button_Icon  | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | close icon   | employment_details.xlsx | home                   | 124                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | close button | employment_details.xlsx | home                   | 124                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Button_Icon  | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | close icon   | employment_details.xlsx | home                   | 124                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | close button | employment_details.xlsx | home                   | 124                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Button_Icon  | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | close icon   | employment_details.xlsx | home                   | 124                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | close button | employment_details.xlsx | home                   | 124                           |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Button_Icon  | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | close icon   | employment_details.xlsx | home                   | 124                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | close button | employment_details.xlsx | home                   | 124                           |


  Scenario Outline: ACAUTOCAS-12941: Minimize the warning pop up in Employment Details for salaried employee
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And fills some fields
    When user clicks on Cancel button on employment details
    And user minimize the warning pop up in Employment Details
    Then warning pop up should be minimized in employment details
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 124                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 124                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 124                           |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 124                           |


  Scenario Outline: ACAUTOCAS-12942: Maximize the minimized warning pop up in Employment Details for salaried employee
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And fills some fields
    When user clicks on Cancel button on employment details
    And user maximize the minimized warning pop up in Employment Details
    Then warning pop up should be maximized in employment details
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 124                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 124                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 124                           |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 124                           |


  Scenario Outline: ACAUTOCAS-12943: Validate Employment Details grid <Columns> column in Employment Details for salaried employee
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    When fills required fields of salaried occupation
    Then Employment Details should be display with "<Columns>" Employment Details grid
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Columns                   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | ID                        | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Major Employer?           | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Type           | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer/Organization     | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industries                | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Is this Major Occupation? | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Actions                   | employment_details.xlsx | home                   | 0                             |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Columns                   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | ID                        | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Major Employer?           | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Type           | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer/Organization     | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industries                | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Is this Major Occupation? | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Actions                   | employment_details.xlsx | home                   | 136                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Columns                   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | ID                        | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Major Employer?           | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Occupation Type           | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employer/Organization     | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Industries                | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Is this Major Occupation? | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Actions                   | employment_details.xlsx | home                   | 136                           |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Columns                   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | ID                        | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Major Employer?           | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Type           | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer/Organization     | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industries                | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Is this Major Occupation? | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Actions                   | employment_details.xlsx | home                   | 0                             |

  @FixedExp
  Scenario Outline: ACAUTOCAS-12944: Validate Employment Details grid <Columns> column data in Employment Details for salaried occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And fills required fields of salaried occupation
    When user click on done button on employment details
    Then Employment Details grid should be displayed with filled "<Columns>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Columns               | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Type       | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer/Organization | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industries            | employment_details.xlsx | home                   | 0                             |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Columns               | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Type       | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer/Organization | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industries            | employment_details.xlsx | home                   | 136                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Columns               | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Occupation Type       | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employer/Organization | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Industries            | employment_details.xlsx | home                   | 136                           |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Columns               | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Type       | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer/Organization | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industries            | employment_details.xlsx | home                   | 0                             |


  Scenario Outline: ACAUTOCAS-12945: Occupation Id generation on adding occupation details in Employment Details grid for salaried employee
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And fills required fields of salaried occupation
    When user click on done button on employment details
    Then Occupation Id should get generated
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 0                             |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |


  Scenario Outline: ACAUTOCAS-12946: Conformation pop up validation while changing the Major Occupation in Employment Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And fills required fields of salaried occupation
    And saves the employment details
    When changes major occupation
    Then confirmation message pops up
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 136                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 136                           |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |

  @FixedExp
  Scenario Outline: ACAUTOCAS-12947: Change the Major Occupation in Employment Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And fills required fields of salaried occupation
    And saves the employment details
    When change major occupation and confirm
    Then major occupation is changed
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 136                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 136                           |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |


  Scenario Outline: ACAUTOCAS-12948: <Close_Cancel> the conformation pop up in Employment Details for salaried employee
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And fills required fields of salaried occupation
    And saves the employment details
    And changes major occupation
    When user close the Confirmation pop up of major occupation change with help of "<Close_Cancel>" in Employment Details
    Then confirmation pop up should be closed
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Close_Cancel | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Close        | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Cancel       | employment_details.xlsx | home                   | 0                             |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Close_Cancel | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Close        | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Cancel       | employment_details.xlsx | home                   | 136                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Close_Cancel | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Close        | employment_details.xlsx | home                   | 136                           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Cancel       | employment_details.xlsx | home                   | 136                           |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Close_Cancel | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Close        | employment_details.xlsx | home                   | 0                             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Cancel       | employment_details.xlsx | home                   | 0                             |


  Scenario Outline: ACAUTOCAS-12949: Minimize the conformation pop up in Employment Details for salaried employee
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And fills required fields of salaried occupation
    And saves the employment details
    And changes major occupation
    When user minimize the confirmation pop up of major occupation change in Employment Details
    Then confirmation pop up should be minimized
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 136                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 136                           |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |

  @FixedExp
  Scenario Outline: ACAUTOCAS-12950: Maximize the minimized conformation pop up in Employment Details for salaried employee
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And fills required fields of salaried occupation
    And saves the employment details
    And changes major occupation
    When user maximize the minimized confirmation pop up in Employment Details
    Then confirmation pop up should be maximized on salaried occupation
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 136                           |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 136                           |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |


  Scenario Outline: ACAUTOCAS-12951: Required <Field> field validation for salaried employee in Expanded Mode of Employment Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects Expanded Mode in applicant information
    And user opens employment detail accordion in expanded mode
    And user selects occupation type as salaried
    When user click on Required to check required fields of occupation type
    Then "<Field>" field should be present for salaried employee in Expanded Mode of Employment Details as required field
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years In Job       |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years In Job       |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Field              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employer Name      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Nature of Business |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Industry           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employment Status  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Years In Job       |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years In Job       |


  Scenario Outline: ACAUTOCAS-12952: <Field> field validation in All Fields for salaried employee in Expanded Mode of Employment Details on <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects Expanded Mode in applicant information
    And user opens employment detail accordion in expanded mode
    And user selects occupation type as salaried
    When user click on All Fields to check all fields of occupation
    Then "<Field>" field should be present for salaried employee in Expanded Mode of Employment Details
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Staff Member checkbox |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sub-Industry          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Type          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Website       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Type       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Department Name       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employee Number       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Designation           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed from         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed Till         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years In Job          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks               |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Staff Member checkbox |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sub-Industry          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Type          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Website       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Type       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Department Name       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employee Number       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Designation           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed from         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed Till         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years In Job          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks               |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Field                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Add Occupation Type   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Occupation Code       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Profession            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Description           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Staff Member checkbox |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employer Name         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Nature of Business    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Industry              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Sub-Industry          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Company Type          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Company Website       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employment Type       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Department Name       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employee Number       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Designation           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employment Status     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employed from         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employed Till         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Years In Job          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Remarks               |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Staff Member checkbox |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sub-Industry          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Type          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Website       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Type       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Department Name       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employee Number       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Designation           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed from         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed Till         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years In Job          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks               |


  @Sanity
  Scenario Outline: ACAUTOCAS-12953: Save Employment Details for salaried occupation in Expanded mode at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And fills required fields of salaried occupation
    And user clicks on the done button
    When user clicks on "<Save_Next>" button on personal information
    Then Employment Details should be "<Save_Next>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Save_Next |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             | Save      |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Save_Next |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             | Save      |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Save_Next |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 0                             | Save      |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Save_Next |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             | Save      |


  Scenario Outline: ACAUTOCAS-12954: Field type validation of <Field> field in Expanded Mode of Employment Details for salaried employee
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects Expanded Mode in applicant information
    And user opens employment detail accordion in expanded mode
    When user selects occupation type as salaried
    Then field type of "<Field>" field should "<Field_Type>" field in Employment Details for salaried employee
    @Conventional
    @Release @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field               | Field_Type     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code     | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession          | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description         | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name       | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Staff Member        | checkbox       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business  | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry            | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sub-Industry        | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Type        | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Website     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Type     | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Department Name     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employee Number     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Designation         | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status   | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed from       | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed Till       | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years in Job        | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks             | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address    | checkbox       |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field               | Field_Type     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code     | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession          | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description         | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name       | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Staff Member        | checkbox       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business  | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry            | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sub-Industry        | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Type        | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Website     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Type     | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Department Name     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employee Number     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Designation         | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status   | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed from       | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed Till       | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years in Job        | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks             | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address    | checkbox       |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Field               | Field_Type     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Add Occupation Type | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Occupation Code     | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Profession          | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Description         | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employer Name       | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Staff Member        | checkbox       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Nature of Business  | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Industry            | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Sub-Industry        | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Company Type        | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Company Website     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employment Type     | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Department Name     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employee Number     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Designation         | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employment Status   | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employed from       | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employed Till       | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Years in Job        | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Remarks             | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employer Address    | checkbox       |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field               | Field_Type     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code     | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession          | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description         | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name       | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Staff Member        | checkbox       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business  | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry            | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sub-Industry        | list of values |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Type        | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Website     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Type     | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Department Name     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employee Number     | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Designation         | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status   | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed from       | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed Till       | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years in Job        | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks             | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address    | checkbox       |


#  Bug:CAS-143435
#  CAS-143435

  @FixedExp
  @Perishable
  Scenario Outline: ACAUTOCAS-13846: <FieldName> validation in salaried occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 153
    And user fill employment details with Occupation Type as "Salaried"
    And user edits occupation details under employment Details Tab for "Salaried"
    And user reads "<FieldName>" for Occupation Type as "Salaried" under employment Details Tab
    And user clicks on "Save" button of employment details
    When user refresh the Employment Details Screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user edits occupation details under employment Details Tab for "Salaried"
    Then "<FieldName>" field should be intact for occupation type "Salaried" under Employment Details Tab
    @Conventional
    @Release @Part-1
    @ImplementedBy-yash.sharma
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | FieldName             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Staff Member checkbox |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sub-Industry          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Type          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Website       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Type       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Department Name       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employee Number       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Designation           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed from         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed Till         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years In Job          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks               |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | FieldName             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Staff Member checkbox |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sub-Industry          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Type          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Website       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Type       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Department Name       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employee Number       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Designation           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed from         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed Till         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years In Job          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks               |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | FieldName             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Add Occupation Type   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Occupation Code       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Profession            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Description           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employer Name         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Staff Member checkbox |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Nature of Business    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Industry              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Sub-Industry          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Company Type          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Company Website       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employment Type       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Department Name       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employee Number       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Designation           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employment Status     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employed from         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employed Till         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Years In Job          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Remarks               |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | FieldName             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Name         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Staff Member checkbox |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Business    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industry              |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Sub-Industry          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Type          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Company Website       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Type       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Department Name       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employee Number       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Designation           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employment Status     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed from         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employed Till         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Years In Job          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks               |


  Scenario Outline:ACAUTOCAS-17137:DAS Flag validation in salaried occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user selects occupation type as salaried
    When user fills Employer Name
    Then DAS Flag should be display
    @Conventional
    @Release @Part-1
    @ImplementedBy-vipin.kishor
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 153                           |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
      #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 153                           |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
     #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 153                           |

    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |


  Scenario Outline:ACAUTOCAS-17138:DAS Flag validation after clearing filled Employer Name in salaried occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    When user fills Employer Name
    And user clears the filled Employer Name
    Then DAS flag should not be display
    @Conventional
    @Release @Part-1
    @ImplementedBy-vipin.kishor
      # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
      #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 153                           |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 153                           |

    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |


  Scenario Outline:ACAUTOCAS-17139:DAS Flag validation in case DAS Flag marked as Yes in salaried occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    When user fills Employer Name
    And user selects DAS flag as Yes
    Then following below fields should be display
      | Fields      |
      | Location    |
      | Cost Center |

    @Conventional
    @Release @Part-1
    @ImplementedBy-vipin.kishor
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
     #${ProductType:["IHF","IAF"]}
     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 153                           |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
     #${ProductType:["IPF"]}
     # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 153                           |

    @NotImplemented
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    #${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |


  Scenario Outline:ACAUTOCAS-17140:Fill <Validity> <Field_Name> with <InputType> in case DAS Flag marked as Yes in salaried occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills Employer Name
    And user selects DAS flag as Yes
    When user fills "<Validity>" "<Field_Name>" with "<InputType>" in salaried employment details
    Then "<Field_Name>" field will "<Throws_notThrows>" in salaried employment details
    @Conventional
    @Release @Part-1
    @ImplementedBy-vipin.kishor
    #${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field_Name  | Validity | InputType                 | Throws_notThrows         | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Location    | valid    | characters                | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 153                           |
      | Location    | valid    | alphanumeric              | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 154                           |
      | Location    | valid    | special characters        | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 155                           |
      | Location    | valid    | numbers                   | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 156                           |
      | Location    | valid    | max length 255 characters | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 157                           |
      | Cost Center | valid    | characters                | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 153                           |
      | Cost Center | valid    | alphanumeric              | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 154                           |
      | Cost Center | valid    | special characters        | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 155                           |
      | Cost Center | valid    | numbers                   | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 156                           |
      | Cost Center | valid    | max length 255 characters | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 157                           |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
     #${ProductType:["IHF","IAF"]}
     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field_Name  | Validity | InputType                 | Throws_notThrows         | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Location    | valid    | characters                | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 153                           |
      | Location    | valid    | alphanumeric              | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 154                           |
      | Location    | valid    | special characters        | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 155                           |
      | Location    | valid    | numbers                   | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 156                           |
      | Location    | valid    | max length 255 characters | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 157                           |
      | Cost Center | valid    | characters                | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 153                           |
      | Cost Center | valid    | alphanumeric              | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 154                           |
      | Cost Center | valid    | special characters        | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 155                           |
      | Cost Center | valid    | numbers                   | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 156                           |
      | Cost Center | valid    | max length 255 characters | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 157                           |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
     #${ProductType:["IHF","IAF"]}
     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field_Name  | Validity | InputType                 | Throws_notThrows         | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Location    | valid    | characters                | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 153                           |
      | Location    | valid    | alphanumeric              | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 154                           |
      | Location    | valid    | special characters        | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 155                           |
      | Location    | valid    | numbers                   | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 156                           |
      | Location    | valid    | max length 255 characters | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 157                           |
      | Cost Center | valid    | characters                | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 153                           |
      | Cost Center | valid    | alphanumeric              | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 154                           |
      | Cost Center | valid    | special characters        | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 155                           |
      | Cost Center | valid    | numbers                   | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 156                           |
      | Cost Center | valid    | max length 255 characters | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 157                           |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field_Name  | Validity | InputType                 | Throws_notThrows         | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Location    | valid    | characters                | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 153                           |
      | Location    | valid    | alphanumeric              | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 154                           |
      | Location    | valid    | special characters        | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 155                           |
      | Location    | valid    | numbers                   | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 156                           |
      | Location    | valid    | max length 255 characters | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 157                           |
      | Cost Center | valid    | characters                | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 153                           |
      | Cost Center | valid    | alphanumeric              | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 154                           |
      | Cost Center | valid    | special characters        | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 155                           |
      | Cost Center | valid    | numbers                   | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 156                           |
      | Cost Center | valid    | max length 255 characters | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 157                           |

    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field_Name  | Validity | InputType                 | Throws_notThrows         | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Location    | valid    | characters                | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 153                           |
      | Location    | valid    | alphanumeric              | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 154                           |
      | Location    | valid    | special characters        | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 155                           |
      | Location    | valid    | numbers                   | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 156                           |
      | Location    | valid    | max length 255 characters | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 157                           |
      | Cost Center | valid    | characters                | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 153                           |
      | Cost Center | valid    | alphanumeric              | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 154                           |
      | Cost Center | valid    | special characters        | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 155                           |
      | Cost Center | valid    | numbers                   | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 156                           |
      | Cost Center | valid    | max length 255 characters | does not throw any error | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 157                           |


  Scenario Outline:ACAUTOCAS-17141:Dependent fields validation in case DAS Flag marked as NO in salaried occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects occupation type as salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills Employer Name
    And user selects DAS flag as Yes
    When user again selects DAS flag as No
    Then following below fields should not be display
      | Fields      |
      | Location    |
      | Cost Center |

    @Conventional
    @Release @Part-1
    @ImplementedBy-vipin.kishor
    # ${ ProductType : ["PL","HL","AL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
      #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}

    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 153                           |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-vipin.kishor
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 153                           |

    @NotImplemented
      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 0                             |

