@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-vipin.kishor
@ReviewedByDEV
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-151
Feature: Employer Address Checkbox

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  @Perishable
  Scenario Outline: ACAUTOCAS-6236: Selecting Employer address Checkbox for Office or Business Address of the employee <Is_Displayed> if <Previously_Filled>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    And user "<EntersOrNot>" "<AddressType>" in address details
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with "<Selected>" fields after filling address
    When user checks the employer address checkbox in salaried
    Then office or business address "<Is_Displayed>" if "<Previously_Filled>"

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | EntersOrNot     | Is_Displayed     | Previously_Filled     | AddressType              | Selected  | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | enters          | is_displayed     | previously_filled     | Office/ Business Address | mandatory | personal_information.xlsx | address              | 52                          | employment_details.xlsx | home                   | 12                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | does_not_enters | is_not_displayed | not_filled_previously | Office/ Business Address | mandatory | personal_information.xlsx | address              | 52                          | employment_details.xlsx | home                   | 12                            |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | EntersOrNot     | Is_Displayed     | Previously_Filled     | AddressType              | Selected  | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | enters          | is_displayed     | previously_filled     | Office/ Business Address | mandatory | personal_information.xlsx | address              | 52                          | employment_details.xlsx | home                   | 12                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | does_not_enters | is_not_displayed | not_filled_previously | Office/ Business Address | mandatory | personal_information.xlsx | address              | 52                          | employment_details.xlsx | home                   | 12                            |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | EntersOrNot     | Is_Displayed     | Previously_Filled     | AddressType              | Selected  | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | enters          | is_displayed     | previously_filled     | Office/ Business Address | mandatory | personal_information.xlsx | address              | 52                          | employment_details.xlsx | home                   | 12                            | <Category>         |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | does_not_enters | is_not_displayed | not_filled_previously | Office/ Business Address | mandatory | personal_information.xlsx | address              | 52                          | employment_details.xlsx | home                   | 12                            | <Category>         |     |
    @NotImplemented
 # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | EntersOrNot     | Is_Displayed     | Previously_Filled     | AddressType              | Selected  | PersonalInfoWB            | PersonalInfo_address | PersonalInfo_address_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | enters          | is_displayed     | previously_filled     | Office/ Business Address | mandatory | personal_information.xlsx | address              | 52                          | employment_details.xlsx | home                   | 12                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | does_not_enters | is_not_displayed | not_filled_previously | Office/ Business Address | mandatory | personal_information.xlsx | address              | 52                          | employment_details.xlsx | home                   | 12                            |          |     |
