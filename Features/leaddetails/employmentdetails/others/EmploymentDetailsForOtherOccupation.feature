@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ReviewedBy-
@TechReviewedBy-
@Reconciled
@AppInfoAdoption
# ${ApplicantType:["indiv"]}
Feature:Employment Details for Others occupation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #  CAS-110829
  #  Below configuration should be configured in the system for Reconsideration stage
  #1) Authority added for update details checkbox is 'UPDATE_DETAILS_CHECKBOX_AUTH'.
  #2) Two new configuration columns are added in entity 'CAS_PROD_TYPE_CONFIG' namely 'IS_NEW_CUST_ALLOWED_RECON' and 'IS_EXIST_CUST_ALLOWED_RECON'.
  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12912: Required <Field> field validation for Others occupation in Employment Details at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects Occupation Type as "Others" in employment details
    When user click on Required to check required fields of Others occupation
    Then "<Field>" field should be present for Others occupation in Employment Details as required field
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Field                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Add Occupation Type  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Nature of Occupation |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation |


  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12913: <Field> field validation in All Fields for Others occupation in Employment Details at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects Occupation Type as "Others" in employment details
    When user click on All Fields to check all fields of occupation
    Then "<Field>" field should be present for Others occupation in Employment Details
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gross Yearly Income       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address Checkbox |
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
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gross Yearly Income       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address Checkbox |
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
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Nature of Occupation      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Location                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Gross Yearly Income       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Remarks                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employer Address Checkbox |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gross Yearly Income       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address Checkbox |


  #FeatureID-ACAUTOCAS-158
  @Sanity
  Scenario Outline: ACAUTOCAS-12914: <Save_Next> Employment Details for Others occupation at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with "mandatory" fields for others
    When user clicks on "<Save_Next>" button for others occupation
    Then Employment Details should be "<Save_Next>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Save_Next   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Save        | employment_details.xlsx | home                   | 66                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Save & Next | employment_details.xlsx | home                   | 66                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Save_Next   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Save        | employment_details.xlsx | home                   | 66                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Save & Next | employment_details.xlsx | home                   | 66                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Save_Next   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Save        | employment_details.xlsx | home                   | 66                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Save & Next | employment_details.xlsx | home                   | 66                            |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Save_Next   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Save        | employment_details.xlsx | home                   | 66                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Save & Next | employment_details.xlsx | home                   | 66                            |


  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12915: Field type validation of <Field> field in Employment Details for Others occupation at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    When user selects Occupation Type as "Others" in employment details
    Then field type of "<Field>" field should "<Field_Type>" field in Employment Details for Others occupation
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                     | Field_Type    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type       | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code           | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession                | auto complete |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description               | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation      | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location                  | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gross Yearly Income       | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks                   | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address checkbox | checkbox      |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                     | Field_Type |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type       | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code           | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession                | auto complete |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description               | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation      | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location                  | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gross Yearly Income       | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks                   | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address checkbox | checkbox   |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Field                     | Field_Type |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Add Occupation Type       | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Occupation Code           | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Profession                | auto completen |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Description               | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Nature of Occupation      | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Location                  | drop down      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Gross Yearly Income       | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Remarks                   | input          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employer Address checkbox | checkbox   |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                     | Field_Type |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type       | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code           | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession                | auto complete |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description               | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation      | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location                  | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gross Yearly Income       | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks                   | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address checkbox | checkbox   |


  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12916: :Warning pop up validation while cancelling the Employment Details filling process for Others occupation at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects Occupation Type as "Others" in employment details
    When user clicks on Cancel button in employment details
    Then warning pop up should be populated with a message in employment details
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


  # FeatureID:ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12917: Cancel the Employment Details filling process for Others occupation at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects Occupation Type as "Others" in employment details
    When user clicks on Cancel button in employment details
    And user clicks on "<Button>" of warning pop up
    Then filled data should be "<Clear_Remains>" in employment details
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Button | Clear_Remains  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Close  | remains intact |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Ok     | Clear          |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Button | Clear_Remains  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Close  | remains intact |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Ok     | Clear          |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Button | Clear_Remains  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Close  | remains intact |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Ok     | Clear          |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Button | Clear_Remains  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Close  | remains intact |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Ok     | Clear          |


  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12918: Close the warning pop up with help of <Button_Icon> in Employment Details for Others occupation at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects Occupation Type as "Others" in employment details
    When user clicks on Cancel button in employment details
    And user close the warning pop up with help of "<Button_Icon>" in Employment Details
    Then warning pop up should be closed in employment details
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Button_Icon  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | close icon   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | close button |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Button_Icon  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | close icon   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | close button |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Button_Icon  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | close icon   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | close button |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Button_Icon  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | close icon   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | close button |


  #FeatureID-ACAUTOCAS-158
  @Perishable
  Scenario Outline: ACAUTOCAS-12919: Minimize the warning pop up in Employment Details for Others occupation at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects Occupation Type as "Others" in employment details
    When user clicks on Cancel button in employment details
    And user minimize the warning pop up in Employment Details
    Then warning pop up should be minimized in employment details
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12920: Maximize the minimized warning pop up in Employment Details for Others occupation at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects Occupation Type as "Others" in employment details
    When user clicks on Cancel button in employment details
    And user maximize the minimized warning pop up in Employment Details
    Then warning pop up should be maximized in employment details
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12921: Validate Employment Details grid <Columns> column in Employment Details for Others occupation at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 2
    When user fills employment details for "Others"
    And user open Employment Details from selected application
    Then Employment Details should be visible with "<Columns>" Employment Details grid
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Columns                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | ID                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Major Employer?           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Type           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer/Organization     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industries                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Is this Major Occupation? |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Actions                   |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Columns                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | ID                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Major Employer?           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Type           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer/Organization     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industries                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Is this Major Occupation? |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Actions                   |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Columns                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | ID                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Major Employer?           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Occupation Type           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employer/Organization     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Industries                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Is this Major Occupation? |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Actions                   |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Columns                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | ID                        |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Major Employer?           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Type           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer/Organization     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Industries                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Is this Major Occupation? |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Actions                   |


  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12922: Validate Employment Details grid <Columns> column data in Employment Details for Others occupation at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 2
    When user fills employment details for "Others"
    And user open Employment Details from selected application
    Then Employment Details grid should be display with filled "<Columns>"
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Columns         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Type |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Columns         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Type |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Columns         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Occupation Type |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Columns         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Type |


  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12923: Occupation Id generation on adding occupation details in Employment Details grid for Others occupation at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with "mandatory" fields for others
    When Clicks on Done Button in Employment Details
    Then Occupation Id should get generated
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 66                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 66                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 66                            |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 66                            |


  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12924: Conformation pop up validation while changing the Major Occupation in Employment Details at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with "mandatory" fields for others
    When Clicks on Done Button in Employment Details
    And changes major occupation
    Then confirmation message pops up
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 66                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 66                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 66                            |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 66                            |


  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12925: Change the Major Occupation in Employment Details at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with "all" fields for others
    And saves the employment details
    When change major occupation and confirm
    Then major occupation is changed
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 66                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 66                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 66                            |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 66                            |


  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12926: <Close_Cancel> the conformation pop up in Employment Details for Others occupation at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with "mandatory" fields for others
    When Clicks on Done Button in Employment Details
    And changes major occupation
    And user close the Confirmation pop up of major occupation change with help of "<Close_Cancel>" in Employment Details
    Then confirmation pop up should be closed
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Close_Cancel | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Close        | employment_details.xlsx | home                   | 66                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Cancel       | employment_details.xlsx | home                   | 66                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Close_Cancel | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Close        | employment_details.xlsx | home                   | 66                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Cancel       | employment_details.xlsx | home                   | 66                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Close_Cancel | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Close        | employment_details.xlsx | home                   | 66                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Cancel       | employment_details.xlsx | home                   | 66                            |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Close_Cancel | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Close        | employment_details.xlsx | home                   | 66                            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Cancel       | employment_details.xlsx | home                   | 66                            |


  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12927: Minimize the conformation pop up in Employment Details for Others occupation at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with "mandatory" fields for others
    When Clicks on Done Button in Employment Details
    And changes major occupation
    And user minimize the confirmation pop up of major occupation change in Employment Details
    Then confirmation pop up should be minimized
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 66                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 66                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 66                            |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 66                            |


  #FeatureID-ACAUTOCAS-158
  @FixedExp
  Scenario Outline: ACAUTOCAS-12928: Maximize the minimized conformation pop up in Employment Details for Others occupation at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with "mandatory" fields for others
    And saves the employment details
    And changes major occupation
    When user maximize the minimized confirmation pop up in Employment Details
    Then confirmation pop up should be maximized
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 66                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 66                            |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | employment_details.xlsx | home                   | 66                            |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | employment_details.xlsx | home                   | 66                            |


#    Expanded Mode
    #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12929: Required <Field> field validation for Others occupation in Expanded Mode of Employment Details at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects Expanded Mode in applicant information
    And user opens employment detail accordion in expanded mode
    And user selects Occupation Type as "Others" in employment details
    When user click on Required to check required fields of occupation type
    Then "<Field>" field should be present for Others occupation in Employment Details as required field
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Field                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Add Occupation Type  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Nature of Occupation |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation |


  #FeatureID-ACAUTOCAS-158

  @LoggedBug
  Scenario Outline: ACAUTOCAS-12930: <Field> field validation in All Fields for Others occupation in Expanded Mode of Employment Details at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects Expanded Mode in employment details
    When user selects Occupation Type as "Others" in employment details
    Then "<Field>" field should be present for Others occupation in Employment Details
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gross Yearly Income       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address Checkbox |
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
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gross Yearly Income       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address Checkbox |
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
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Nature of Occupation      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Location                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Gross Yearly Income       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Remarks                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employer Address Checkbox |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession                |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description               |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location                  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gross Yearly Income       |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks                   |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address Checkbox |


 #FeatureID-ACAUTOCAS-158
  @Sanity
  Scenario Outline: ACAUTOCAS-12931: Save Employment Details for Others occupation in Expanded mode at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects Expanded Mode in applicant information
    And user opens employment detail accordion in expanded mode
    And user selects Occupation Type as "Others" in employment details
    When user clicks on "Save" button in employment details
    Then Employment Details should be saved successfully
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


  #FeatureID-ACAUTOCAS-158
  @LoggedBug
  Scenario Outline: ACAUTOCAS-12932: Field type validation of <Field> field in Expanded Mode of Employment Details for Others occupation at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects Expanded Mode in employment details
    When user selects Occupation Type as "Others" in employment details
    Then field type of "<Field>" field should "<Field_Type>" field in Employment Details for Others occupation
    @Conventional
    @Release @Part-1
    @ImplementedBy-pallavi.singh
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                     | Field_Type |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type       | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code           | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession                | auto complete |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description               | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation      | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location                  | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gross Yearly Income       | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks                   | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address checkbox | checkbox   |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                     | Field_Type |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type       | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code           | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession                | auto complete |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description               | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation      | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location                  | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gross Yearly Income       | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks                   | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address checkbox | checkbox   |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | Field                     | Field_Type |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Add Occupation Type       | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Occupation Code           | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Profession                | auto complete |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Description               | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Nature of Occupation      | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Location                  | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Gross Yearly Income       | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Remarks                   | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Employer Address checkbox | checkbox   |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | Field                     | Field_Type    |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type       | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code           | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession                | auto complete |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description               | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation      | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location                  | drop down     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gross Yearly Income       | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks                   | input         |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Employer Address checkbox | checkbox   |

       #  Bug:CAS-143435
#  CAS-143435
     #FeatureID-ACAUTOCAS-158,CAS-143435
  @FixedExp
  Scenario Outline: ACAUTOCAS-13845: <FieldName> field validation in Others occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 69
    And user fill employment details with Occupation Type as "Others"
    And user edits occupation details under employment Details Tab for "Others"
    And user reads "<FieldName>" for Occupation Type as "Others" under employment Details Tab
    And  user clicks on "Save" button of employment details
    When user refresh the Employment Details Screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user edits occupation details under employment Details Tab for "Others"
    Then "<FieldName>" field should be intact for occupation type "Others" under Employment Details Tab
    @Conventional
    @Release @Part-1
    @ImplementedBy-yash.sharma
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | FieldName            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gross Yearly Income  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks              |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | FieldName            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gross Yearly Income  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks              |
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-akash.bansal
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | FieldName            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Add Occupation Type  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Occupation Code      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Profession           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Description          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Nature of Occupation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Location             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Gross Yearly Income  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Remarks              |
    @NotImplemented
       # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | FieldName            |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Add Occupation Type  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Occupation Code      |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Profession           |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Description          |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Nature of Occupation |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Location             |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Gross Yearly Income  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Remarks              |
