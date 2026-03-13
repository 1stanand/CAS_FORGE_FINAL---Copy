@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-vipin.kishor
@ReviewedByDEV
#${ApplicantType:["indiv"]}
#FeatureID-ACAUTOCAS-158
Feature: Edit or Delete Employment Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  Scenario Outline: ACAUTOCAS-3821: Employment Details are editable
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    When user fills employment details with "<Mandatory_All>" fields
    And edit employment details is clicked
    Then employment details are editable

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mandatory     | employment_details.xlsx | home                   | 18                            |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mandatory     | employment_details.xlsx | home                   | 136                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Mandatory     | employment_details.xlsx | home                   | 136                           |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mandatory     | employment_details.xlsx | home                   | 18                            |

  Scenario Outline: ACAUTOCAS-3822: Employment Details can be deleted
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    When user fills employment details with "<Mandatory_All>" fields
    And user clicks done
    And user deletes the employment details
    Then employment details are deleted successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mandatory     | employment_details.xlsx | home                   | 18                            |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mandatory     | employment_details.xlsx | home                   | 136                           |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-1
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | Key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Mandatory     | employment_details.xlsx | home                   | 136                           |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key | Mandatory_All | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Mandatory     | employment_details.xlsx | home                   | 18                            |
