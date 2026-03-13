@Epic-Applicant_Information
@AuthoredBy-Anshu.bhaduri
@ReviewedBy-harshprit.kumar
@TechReviewedBy-harshprit.kumar
@ImplementedBy-manish.yadav2
@Release3
@Conventional @Release @Part-3

  # ${ProductType:[ "PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","FE","MHL","CV","CC","LAP","CL"]}

Feature: Applicant Info Monthly Data

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # 08_CAS-120693,13_CAS-120693
  # FeatureID-CAS-120693,ACAUTOCAS-4,ACAUTOCAS-10504
  Scenario Outline: ACAUTOCAS-12649: User should be able to see Monthly Data tab under applicant details tab only for non individual customer for <ProductType> application at <ApplicationStage> for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When user views and edit applicant details for "nonindiv" "<Key>" applicant type
    Then User should be able to see Monthly Data tab under applicant details only for non individual customer
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key   |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> |

    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage | ApplicantType | Category | Key   |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> |


  # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # 01_CAS-120693,14_CAS-120693
  # FeatureID-CAS-120693,ACAUTOCAS-4,ACAUTOCAS-10504
  Scenario Outline: ACAUTOCAS-12650: User should be able to verify Monthly Data tab under applicant details tab for <ProductType> application at <ApplicationStage> for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    When user clicks on Monthly Data Tab under applicant details
    Then user should see Monthly Data Screen with "<Field>" fields to capture Monthly Data details in format of MM with YYYY
    Examples:
      | ProductType   | ApplicationStage   | Field      | ApplicantType | Category | Key   |
      | <ProductType> | <ApplicationStage> | Month(MM)  | nonindiv      |          | <Key> |
      | <ProductType> | <ApplicationStage> | Year(YYYY) | nonindiv      |          | <Key> |

    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage | Field      | ApplicantType | Category | Key   |
      | <ProductType> | Recommendation   | Month(MM)  | nonindiv      |          | <Key> |
      | <ProductType> | Recommendation   | Year(YYYY) | nonindiv      |          | <Key> |


  # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # 02_CAS-120693
  # FeatureID-CAS-120693,ACAUTOCAS-4,ACAUTOCAS-10504
  Scenario Outline:User should be able to see columns created for previous 12 months with Total, Average columns while entering month with year values for <ProductType> application at <ApplicationStage> for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "monthly_data.xlsx" under sheet "home" and row 0
    And user navigates to applicant details page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user clicks on Monthly Data Tab under applicant details
    When user enters month with year in fields
    And user clicks on "<save_savenext>" button to save the record
    Then user should see columns created for previous 12 months with Total, Average columns on Monthly Data screen
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key   | save_savenext |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   |

    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage | ApplicantType | Category | Key   | save_savenext |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   |

  # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # 03_CAS-120693,06_CAS-120693,09_CAS-120693,14_CAS-120693,15_CAS-120693,16_CAS-120693,17_CAS-120693
  # FeatureID-CAS-120693,ACAUTOCAS-4,ACAUTOCAS-10504
  Scenario Outline: ACAUTOCAS-12651:  User should be able to <Add_Edit> Month with Year values on Monthly Data Screen for application of <ProductType> at <ApplicationStage> stage for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "monthly_data.xlsx" under sheet "home" and row <MonthlyData_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user clicks on Monthly Data Tab under applicant details
    When user enters month with year in fields
    And user selects monthly data category
    And user clicks on "<save_savenext>" button to save the record
    Then user should be able to "<Add_Edit>" Month with Year values on Monthly Data screen
    #  comment by manish --> I splitted this scenario example's because failure cases cannot be covered under this outline and for failure cases edit case is invalid so i have removed edit cases for failure cases
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key   | save_savenext | Add_Edit | MonthlyData_home_rowNum |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 0                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 1                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 2                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 3                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 4                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 5                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 6                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 7                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 8                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 9                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 10                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 11                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 12                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 13                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 14                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 15                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 16                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 17                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 18                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 19                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 0                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 1                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 2                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 3                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 4                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 5                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 6                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 7                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 8                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 9                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 10                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 11                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 12                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 13                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 14                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 15                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 16                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 17                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 18                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 19                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 0                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 1                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 2                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 3                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 4                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 5                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 6                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 7                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 8                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 9                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 10                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 11                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 12                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 13                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 14                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 15                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 16                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 17                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 18                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 19                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 0                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 1                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 2                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 3                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 4                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 5                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 6                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 7                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 8                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 9                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 10                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 11                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 12                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 13                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 14                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 15                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 16                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 17                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 18                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 19                      |

    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage | ApplicantType | Category | Key   | save_savenext | Add_Edit | MonthlyData_home_rowNum |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 0                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 1                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 2                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 3                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 4                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 5                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 6                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 7                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 8                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 9                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 10                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 11                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 12                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 13                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 14                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 15                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 16                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 17                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 18                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 19                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 0                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 1                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 2                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 3                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 4                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 5                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 6                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 7                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 8                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 9                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 10                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 11                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 12                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 13                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 14                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 15                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 16                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 17                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 18                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 19                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 0                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 1                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 2                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 3                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 4                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 5                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 6                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 7                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 8                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 9                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 10                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 11                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 12                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 13                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 14                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 15                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 16                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 17                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 18                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 19                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 0                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 1                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 2                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 3                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 4                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 5                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 6                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 7                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 8                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 9                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 10                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 11                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 12                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 13                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 14                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 15                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 16                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 17                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 18                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 19                      |

  # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # 03_CAS-120693,06_CAS-120693,09_CAS-120693,14_CAS-120693,15_CAS-120693,16_CAS-120693,17_CAS-120693
  # FeatureID-CAS-120693,ACAUTOCAS-4,ACAUTOCAS-10504
  Scenario Outline: ACAUTOCAS-12652:  validate error in <Field> on Monthly Data Screen for application of <ProductType> at <ApplicationStage> stage for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "monthly_data.xlsx" under sheet "home" and row <MonthlyData_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user clicks on Monthly Data Tab under applicant details
    When user enters month with year in fields
    And user selects monthly data category
    And user clicks on "<save_savenext>" button to save the record
    Then proper error message should be displayed in "<Field>" Monthly Data Screen

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key   | Field      | save_savenext | MonthlyData_home_rowNum |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save          | 45                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save          | 46                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save          | 47                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save          | 48                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save          | 49                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save          | 50                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save          | 51                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save          | 52                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save          | 53                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save          | 54                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save          | 55                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save          | 56                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 45                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 46                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 47                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 48                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 49                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 50                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 51                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 52                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 53                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 54                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 55                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 56                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save          | 57                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save          | 58                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save          | 59                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save          | 60                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save          | 61                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save          | 62                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save          | 63                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save          | 64                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save          | 65                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save          | 66                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save          | 67                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save          | 68                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save          | 69                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save          | 70                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 57                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 58                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 59                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 60                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 61                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 62                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 63                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 64                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 65                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 66                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 67                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 68                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 69                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 70                      |

    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage | ApplicantType | Category | Key   | Field      | save_savenext | MonthlyData_home_rowNum |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save          | 45                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save          | 46                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save          | 47                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save          | 48                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save          | 49                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save          | 50                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save          | 51                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save          | 52                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save          | 53                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save          | 54                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save          | 55                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save          | 56                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 45                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 46                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 47                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 48                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 49                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 50                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 51                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 52                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 53                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 54                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 55                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Month(MM)  | Save & Next   | 56                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save          | 57                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save          | 58                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save          | 59                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save          | 60                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save          | 61                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save          | 62                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save          | 63                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save          | 64                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save          | 65                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save          | 66                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save          | 67                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save          | 68                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save          | 69                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save          | 70                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 57                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 58                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 59                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 60                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 61                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 62                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 63                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 64                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 65                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 66                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 67                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 68                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 69                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Year(YYYY) | Save & Next   | 70                      |

  # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # FeatureID-CAS-120693,ACAUTOCAS-4,ACAUTOCAS-10504
  Scenario Outline: ACAUTOCAS-12653:  User should not be able to delete Month Year Wise details row from monthly data grid for application of <ProductType> at <ApplicationStage> stage for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "monthly_data.xlsx" under sheet "home" and row 20
    And user navigates to applicant details page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user clicks on Monthly Data Tab under applicant details
    When user deletes only single record present in monthly data grid
    Then user should get proper message that at least one data row is required to present in grid
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key   |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> |

    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage | ApplicantType | Category | Key   |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> |

  # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # 03_CAS-120693,06_CAS-120693,09_CAS-120693,14_CAS-120693,15_CAS-120693,16_CAS-120693,17_CAS-120693
  # FeatureID-CAS-120693,ACAUTOCAS-4,ACAUTOCAS-10504
  Scenario Outline: ACAUTOCAS-12654:  User should be able to <Add_Edit> Month Year Wise details against monthly data category grid for application of <ProductType> at <ApplicationStage> stage for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "monthly_data.xlsx" under sheet "home" and row <MonthlyData_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user clicks on Monthly Data Tab under applicant details
    When user enters month with year in fields
    And user enter all values month year wise against monthly data category grid
    And user clicks on "<save_savenext>" button to save the record
    Then user should be able to "<Add_Edit>" Month Year Wise details on Monthly Data screen against monthly data category grid
##Rest examples deleted by anshu on 11-Jun-24 as data is merged for validation in excel file
#  comment by manish --> I splitted this scenario example's because failure cases cannot be covered under this outline and for failure cases edit case is invalid so i have removed edit cases for failure cases
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key   | save_savenext | Add_Edit | MonthlyData_home_rowNum |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 0                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 1                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 2                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 3                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 4                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 5                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 6                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 7                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 8                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 9                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 10                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 11                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 12                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 13                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 14                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 15                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 16                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 17                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 18                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 19                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 0                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 1                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 2                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 3                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 4                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 5                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 6                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 7                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 8                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 9                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 10                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 11                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 12                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 13                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 14                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 15                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 16                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 17                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 18                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 19                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 0                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 1                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 2                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 3                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 4                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 5                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 6                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 7                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 8                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 9                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 10                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 11                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 12                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 13                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 14                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 15                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 16                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 17                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 18                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Edit     | 19                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 0                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 1                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 2                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 3                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 4                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 5                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 6                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 7                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 8                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 9                       |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 10                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 11                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 12                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 13                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 14                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 15                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 16                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 17                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 18                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Edit     | 19                      |

    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage | ApplicantType | Category | Key   | save_savenext | Add_Edit | MonthlyData_home_rowNum |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 0                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 1                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 2                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 3                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 4                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 5                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 6                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 7                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 8                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 9                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 10                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 11                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 12                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 13                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 14                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 15                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 16                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 17                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 18                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 19                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 0                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 1                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 2                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 3                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 4                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 5                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 6                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 7                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 8                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 9                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 10                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 11                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 12                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 13                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 14                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 15                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 16                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 17                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 18                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 19                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 0                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 1                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 2                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 3                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 4                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 5                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 6                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 7                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 8                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 9                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 10                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 11                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 12                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 13                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 14                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 15                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 16                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 17                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 18                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Edit     | 19                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 0                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 1                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 2                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 3                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 4                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 5                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 6                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 7                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 8                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 9                       |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 10                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 11                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 12                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 13                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 14                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 15                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 16                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 17                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 18                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Edit     | 19                      |

  # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # 03_CAS-120693,06_CAS-120693,09_CAS-120693,14_CAS-120693,15_CAS-120693,16_CAS-120693,17_CAS-120693
  # FeatureID-CAS-120693,ACAUTOCAS-4,ACAUTOCAS-10504
  Scenario Outline: ACAUTOCAS-12655:  validate error in Month Year Wise details against monthly data category grid for application of <ProductType> at <ApplicationStage> stage for applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "monthly_data.xlsx" under sheet "home" and row <MonthlyData_home_rowNum>
    And user navigates to applicant details page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user clicks on Monthly Data Tab under applicant details
    When user enters month with year in fields
    And user enter all values month year wise against monthly data category grid
    And user clicks on "<save_savenext>" button to save the record
    Then proper error message should be displayed in month year wise fields

    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key   | save_savenext | Add_Edit | MonthlyData_home_rowNum |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 21                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 22                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 23                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 24                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 25                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 26                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 27                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 28                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 29                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 30                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 31                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 32                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 33                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 34                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 35                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 36                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 37                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 38                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 39                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 40                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 41                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 42                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 43                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save          | Add      | 44                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 21                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 22                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 23                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 24                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 25                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 26                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 27                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 28                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 29                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 30                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 31                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 32                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 33                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 34                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 35                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 36                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 37                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 38                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 39                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 40                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 41                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 42                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 43                      |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> | Save & Next   | Add      | 44                      |

    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage | ApplicantType | Category | Key   | save_savenext | Add_Edit | MonthlyData_home_rowNum |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 21                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 22                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 23                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 24                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 25                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 26                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 27                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 28                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 29                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 30                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 31                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 32                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 33                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 34                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 35                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 36                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 37                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 38                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 39                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 40                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 41                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 42                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 43                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save          | Add      | 44                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 21                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 22                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 23                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 24                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 25                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 26                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 27                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 28                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 29                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 30                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 31                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 32                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 33                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 34                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 35                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 36                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 37                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 38                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 39                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 40                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 41                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 42                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 43                      |
      | <ProductType> | Recommendation   | nonindiv      |          | <Key> | Save & Next   | Add      | 44                      |

  # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # 07_CAS-120693
  # FeatureID-CAS-134065,ACAUTOCAS-4,ACAUTOCAS-10504
  @Sanity
  Scenario Outline: ACAUTOCAS-12656:  User should be able to see grid with <single_multiple> records once all line items are added using plus sign for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "monthly_data.xlsx" under sheet "home" and row 0
    And user navigates to applicant details page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user clicks on Monthly Data Tab under applicant details
    And user enters month with year in fields
    When user enters all values in fields month wise for "<single_multiple>" case by reading data from
      | monthly_data.xlsx | home | 0 |
      | monthly_data.xlsx | home | 1 |
    And user clicks on "<save_savenext>" button to save the record
    Then User should be able to see grid with "<single_multiple>" records once all line items are added using plus sign
    Examples:
      | ProductType   | ApplicationStage   | single_multiple | ApplicantType | Category | Key   | save_savenext |
      | <ProductType> | <ApplicationStage> | Single          | nonindiv      |          | <Key> | Save          |
      | <ProductType> | <ApplicationStage> | Multiple        | nonindiv      |          | <Key> | Save          |
      | <ProductType> | <ApplicationStage> | Single          | nonindiv      |          | <Key> | Save & Next   |
      | <ProductType> | <ApplicationStage> | Multiple        | nonindiv      |          | <Key> | Save & Next   |

    @LoggedBug
    Examples:
      | ProductType   | ApplicationStage | single_multiple | ApplicantType | Category | Key   | save_savenext |
      | <ProductType> | Recommendation   | Single          | nonindiv      |          | <Key> | Save          |
      | <ProductType> | Recommendation   | Multiple        | nonindiv      |          | <Key> | Save          |
      | <ProductType> | Recommendation   | Single          | nonindiv      |          | <Key> | Save & Next   |
      | <ProductType> | Recommendation   | Multiple        | nonindiv      |          | <Key> | Save & Next   |

  # ${ApplicationStage:["DDE","Credit Approval"]}
  # ${Key:["Primary","Coapplicant","Guarantor"]}
  # 10_CAS-120693,11_CAS-120693
  # FeatureID-CAS-120693,ACAUTOCAS-4,ACAUTOCAS-10504
  Scenario Outline: ACAUTOCAS-12657:  User should be able to see  monthly data in copied application for an application of <ProductType> at <ApplicationStage> stage with applicant type as <Key>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "monthly_data.xlsx" under sheet "home" and row 0
    And user navigates to applicant details page of "<ApplicationStage>"
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user clicks on Monthly Data Tab under applicant details
    And user enters month with year in fields
    And user clicks on "Save" button to save the record
    And user reads data from the excel file "copy_application.xlsx" under sheet "personal" and row 10
    And user searches a non individual application using application id in copy application screen
    When user copy the application
    And user record the generated application
    And user opens an application of "DDE" stage present in context from application grid
    And user views and edit applicant details for "nonindiv" "<Key>" applicant type
    And user clicks on Monthly Data Tab under applicant details
    Then user should be able to see grids for monthly data in copied application
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType | Category | Key   |
      | <ProductType> | <ApplicationStage> | nonindiv      |          | <Key> |
