@Epic-Applicant_Information
@AuthoredBy-harshita.nayak
@Reconciled
@AppInfoAdoption
@Perishable
@Dedupe
      # ${ApplicantType:["indiv","nonindiv"]}
Feature: Dedupe Execution for applicant details at Applicant Information

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
## ${ ProductType : ["PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
## ${ApplicationStage:["Lead Details"]}
  #01_CAS-110869
#  #FeatureID-ACAUTOCAS-144
#    Scenario Outline:Error Message should be displayed while changing some values of applicant details if Dedupe values are already saved at "<ApplicationStage>" stage for "<ProductType>"
#       And user open "<ApplicationStage>" grid
#      And user search application for "<ProductType>"
#      And user view Repayment Parameters under Application Details
#      When user navigates to Repayment Parameters
#      Then user should be able to select disbursal type as "<Disbursal_Type>"
#
#
#      Examples:
#        | ProductType   | ApplicationStage   | Disbursal_Type |
#        | <ProductType> | <ApplicationStage> | single         |
#        | <ProductType> | <ApplicationStage> | multiple       |
@Sanity
#FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12787: On <Field_Name> No of Dedupe Match hyperlink Dedupe Match Screen displayed for Applicant Details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    Then Dedupe Match Screen should be displayed for Applicant Details

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 19                  |

    @Release
    @Conventional
    @Part-1
    @ImplementedBy-aditya.tomar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 19                  |

@Sanity
#FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12788: On Negative Checklist No of Dedupe Match hyperlink Negative Checklist Matches displayed for Applicant Details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "identification" and row <PersonalInformation_identification_rowNum>
    And user fill all identification details
    And user rerun the dedupe on Applicant Information page
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    Then Negative Checklist Matches Screen should be displayed for Applicant Details

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Field_Name         | PersonalInformation_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Negative Checklist | 160                                       |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name         | PersonalInformation_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Negative Checklist | 160                                       |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name         | PersonalInformation_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Negative Checklist | 116                                       |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name         | PersonalInformation_identification_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Negative Checklist | 116                                       |

#FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12789: Matched Application Details Screen should be displayed  when clicking on the application ID for Applicant Details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    Then Dedupe Match Screen should be displayed for Applicant Details

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 19                  |
@Sanity
#FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12790:  On <Field_Name> Dedupe Match Screen with <Action> should work properly for Applicant Details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    When user take "<Action>" in Dedupe Match Screen on Applicant Information
    Then "<Action>" should work properly on Applicant Information

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Field_Name        | Action        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Maximize      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Minimize      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Cross         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Expand All    | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Collapse All  | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Ignore & Save | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Cancel        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Done          | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Maximize      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Minimize      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Cross         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Expand All    | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Collapse All  | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Ignore & Save | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Cancel        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Done          | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Action        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Maximize      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Minimize      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Cross         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Expand All    | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Collapse All  | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Ignore & Save | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Cancel        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Done          | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Maximize      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Minimize      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Cross         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Expand All    | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Collapse All  | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Ignore & Save | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Cancel        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Done          | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Action        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Maximize      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Minimize      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Cross         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Expand All    | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Collapse All  | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Ignore & Save | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Cancel        | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Done          | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Maximize      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Minimize      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Cross         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Expand All    | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Collapse All  | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Ignore & Save | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Cancel        | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Done          | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Action        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Maximize      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Minimize      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Cross         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Expand All    | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Collapse All  | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Ignore & Save | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Cancel        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Done          | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Maximize      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Minimize      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Cross         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Expand All    | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Collapse All  | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Ignore & Save | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Cancel        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Done          | 19                  |


#FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12791:  On "<Field_Name>" Matched Application Details Screen with <Action> should work properly for Applicant Details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    When user take "<Action>" in Dedupe Match Screen on Applicant Information
    Then "<Action>" should work properly on Applicant Information

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Field_Name        | Action       | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Maximize     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Minimize     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Cross        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Expand All   | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Collapse All | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Cancel       | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Maximize     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Minimize     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Cross        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Expand All   | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Collapse All | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Cancel       | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Action       | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Maximize     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Minimize     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Cross        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Expand All   | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Collapse All | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Cancel       | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Maximize     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Minimize     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Cross        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Expand All   | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Collapse All | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Cancel       | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Action       | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Maximize     | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Minimize     | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Cross        | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Expand All   | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Collapse All | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Cancel       | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Maximize     | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Minimize     | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Cross        | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Expand All   | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Collapse All | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Cancel       | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Action       | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Maximize     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Minimize     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Cross        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Expand All   | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Collapse All | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Cancel       | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Maximize     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Minimize     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Cross        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Expand All   | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Collapse All | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Cancel       | 19                  |

#FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12792: Show the <NumberOfRows> rows in Dedupe Match Screen for <Field_Name> on Applicant Details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen on Applicant information
    Then user should be able to selected "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Field_Name        | NumberOfRows | Display                                 | More_Less | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | 10           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | 25           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | 50           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | 100          | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | 10           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | 25           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | 50           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | 100          | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | 10           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | 25           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | 50           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | 100          | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | 10           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | 25           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | 50           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | 100          | not display only available rows display | less      | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | NumberOfRows | Display                                 | More_Less | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 10           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 25           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 50           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 100          | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 10           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 25           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 50           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 100          | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 10           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 25           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 50           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 100          | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 10           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 25           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 50           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 100          | not display only available rows display | less      | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | NumberOfRows | Display                                 | More_Less | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 10           | display                                 | more      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 25           | display                                 | more      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 50           | display                                 | more      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 100          | display                                 | more      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 10           | not display only available rows display | less      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 25           | not display only available rows display | less      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 50           | not display only available rows display | less      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 100          | not display only available rows display | less      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 10           | display                                 | more      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 25           | display                                 | more      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 50           | display                                 | more      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 100          | display                                 | more      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 10           | not display only available rows display | less      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 25           | not display only available rows display | less      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 50           | not display only available rows display | less      | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 100          | not display only available rows display | less      | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | NumberOfRows | Display                                 | More_Less | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 10           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 25           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 50           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 100          | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 10           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 25           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 50           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 100          | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 10           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 25           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 50           | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 100          | display                                 | more      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 10           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 25           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 50           | not display only available rows display | less      | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 100          | not display only available rows display | less      | 19                  |

#FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12793: Validating the <Field_Name> present in Matched Application Details for Applicant Details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    When user click Application Id hyperlink in Dedupe Match Screen on applicant information
    Then user should be able to validate "<Field_Name_Dedupe_Result>" present in Matched Application Details for "<ApplicationStage>"

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Field_Name        | Field_Name_Dedupe_Result   | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Matched Application ID     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Stage of application       | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Application Status         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Sourcing branch            | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Application present in CAS | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Matched Application ID     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Stage of application       | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Application Status         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Sourcing branch            | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Application present in CAS | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Field_Name_Dedupe_Result   | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Matched Application ID     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Stage of application       | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application Status         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Sourcing branch            | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application present in CAS | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Matched Application ID     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Stage of application       | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application Status         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Sourcing branch            | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application present in CAS | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Field_Name_Dedupe_Result   | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Matched Application ID     | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Stage of application       | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application Status         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Sourcing branch            | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application present in CAS | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Matched Application ID     | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Stage of application       | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application Status         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Sourcing branch            | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application present in CAS | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Field_Name_Dedupe_Result   | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Matched Application ID     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Stage of application       | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application Status         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Sourcing branch            | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application present in CAS | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Matched Application ID     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Stage of application       | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application Status         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Sourcing branch            | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application present in CAS | 19                  |

#FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12794: On <Field_Name> sorting of <sorting_field> column in Dedupe Match Screen in ascending order for Applicant Details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    Then user should be able to sort the "<sorting_field>" column in Dedupe Match Screen in ascending order

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Field_Name        | sorting_field         | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Application ID        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Strength Of Match     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Customer Name         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Host ID               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Dedupe Source         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Unique ID             | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Applicant Type        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Channel, Channel Name | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Dealer/DSA/RM Name    | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Application ID        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Strength Of Match     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Customer Name         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Host ID               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Dedupe Source         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Unique ID             | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Applicant Type        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Channel, Channel Name | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Dealer/DSA/RM Name    | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | sorting_field         | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application ID        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Strength Of Match     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Customer Name         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Host ID               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Dedupe Source         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Unique ID             | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Applicant Type        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Channel, Channel Name | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Dealer/DSA/RM Name    | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application ID        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Strength Of Match     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Customer Name         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Host ID               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Dedupe Source         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Unique ID             | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Applicant Type        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Channel, Channel Name | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Dealer/DSA/RM Name    | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | sorting_field         | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application ID        | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Strength Of Match     | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Neo CustID/CIF Number | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Customer Name         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Host ID               | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Neo CustID/CIF Number | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Dedupe Source         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Unique ID             | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Applicant Type        | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Channel, Channel Name | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Dealer/DSA/RM Name    | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application ID        | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Strength Of Match     | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Neo CustID/CIF Number | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Customer Name         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Host ID               | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Neo CustID/CIF Number | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Dedupe Source         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Unique ID             | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Applicant Type        | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Channel, Channel Name | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Dealer/DSA/RM Name    | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | sorting_field         | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application ID        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Strength Of Match     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Customer Name         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Host ID               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Dedupe Source         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Unique ID             | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Applicant Type        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Channel, Channel Name | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Dealer/DSA/RM Name    | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application ID        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Strength Of Match     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Customer Name         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Host ID               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Dedupe Source         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Unique ID             | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Applicant Type        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Channel, Channel Name | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Dealer/DSA/RM Name    | 19                  |

#FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12795: On <Field_Name> sorting of <sorting_field> column in Dedupe Match Screen in descending order for Applicant Details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    Then user should be able to sort the "<sorting_field>" column in Dedupe Match Screen in descending order

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Field_Name        | sorting_field         | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Application ID        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Strength Of Match     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Customer Name         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Host ID               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Dedupe Source         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Unique ID             | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Applicant Type        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Channel, Channel Name | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Dealer/DSA/RM Name    | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Application ID        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Strength Of Match     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Customer Name         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Host ID               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Dedupe Source         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Unique ID             | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Applicant Type        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Channel, Channel Name | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Dealer/DSA/RM Name    | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | sorting_field         | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application ID        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Strength Of Match     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Customer Name         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Host ID               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Dedupe Source         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Unique ID             | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Applicant Type        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Channel, Channel Name | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Dealer/DSA/RM Name    | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application ID        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Strength Of Match     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Customer Name         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Host ID               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Dedupe Source         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Unique ID             | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Applicant Type        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Channel, Channel Name | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Dealer/DSA/RM Name    | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | sorting_field         | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application ID        | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Strength Of Match     | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Neo CustID/CIF Number | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Customer Name         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Host ID               | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Neo CustID/CIF Number | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Dedupe Source         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Unique ID             | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Applicant Type        | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Channel, Channel Name | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Dealer/DSA/RM Name    | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application ID        | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Strength Of Match     | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Neo CustID/CIF Number | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Customer Name         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Host ID               | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Neo CustID/CIF Number | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Dedupe Source         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Unique ID             | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Applicant Type        | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Channel, Channel Name | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Dealer/DSA/RM Name    | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | sorting_field         | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application ID        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Strength Of Match     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Customer Name         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Host ID               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Dedupe Source         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Unique ID             | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Applicant Type        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Channel, Channel Name | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Dealer/DSA/RM Name    | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application ID        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Strength Of Match     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Customer Name         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Host ID               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Neo CustID/CIF Number | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Dedupe Source         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Unique ID             | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Applicant Type        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Channel, Channel Name | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Dealer/DSA/RM Name    | 19                  |

#FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @FixedExp
  Scenario Outline: ACAUTOCAS-12796: Pagination of <Field_Name> in which <Paginate_Btn> should be <Disable_Enable> in Dedupe Match Screen for Applicant Details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    When user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    And user select "<Page>" page in Dedupe Match Screen on Applicant Information
    Then user on "<Page>" and "<Paginate_Btn>" should be "<Disable_Enable>" on Applicant Information

    @Islamic
    @Release
    @Part-1
    @MultiCheck
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Field_Name        | Page  | Paginate_Btn             | Disable_Enable | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | first | paginate_button previous | disable        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | first | paginate_button next     | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | next  | paginate_button previous | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | last  | paginate_button first    | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | last  | paginate_button previous | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | last  | paginate_button next     | disable        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | first | paginate_button previous | disable        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | first | paginate_button next     | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | next  | paginate_button previous | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | last  | paginate_button first    | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | last  | paginate_button previous | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | last  | paginate_button next     | disable        | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Page  | Paginate_Btn             | Disable_Enable | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | first | paginate_button previous | disable        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | first | paginate_button next     | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | next  | paginate_button previous | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | last  | paginate_button first    | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | last  | paginate_button previous | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | last  | paginate_button next     | disable        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | first | paginate_button previous | disable        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | first | paginate_button next     | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | next  | paginate_button previous | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | last  | paginate_button first    | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | last  | paginate_button previous | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | last  | paginate_button next     | disable        | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Page  | Paginate_Btn             | Disable_Enable | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | first | paginate_button previous | disable        | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | first | paginate_button next     | enable         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | next  | paginate_button previous | enable         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | last  | paginate_button first    | enable         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | last  | paginate_button previous | enable         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | last  | paginate_button next     | disable        | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | first | paginate_button previous | disable        | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | first | paginate_button next     | enable         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | next  | paginate_button previous | enable         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | last  | paginate_button first    | enable         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | last  | paginate_button previous | enable         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | last  | paginate_button next     | disable        | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Page  | Paginate_Btn             | Disable_Enable | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | first | paginate_button previous | disable        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | first | paginate_button next     | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | next  | paginate_button previous | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | last  | paginate_button first    | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | last  | paginate_button previous | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | last  | paginate_button next     | disable        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | first | paginate_button previous | disable        | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | first | paginate_button next     | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | next  | paginate_button previous | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | last  | paginate_button first    | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | last  | paginate_button previous | enable         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | last  | paginate_button next     | disable        | 19                  |

  #08_CAS-110869,09_CAS-110869
  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12797: Move to next stage without run De dupe at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user save the data without run dedupe
    When user click on move to next stage on Applicant Information
    Then error message should be displayed while moving the application to next stage

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 9                   |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 19                  |

@Sanity
#Prerequisite-Change the email,mobile number,Address detail
  #Support - 16_CAS-1108869
  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12798: Validate the <Field_Name> dedupe is successfully reinitiated after changing some data in the applicant details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_communication_details>" and row <PersonalInfo_communication_details_rowNum>
    When user change some data in the applicant details
    And user rerun the dedupe on Applicant Information page
    Then user should be able to validate "<Field_Name>" dedupe get initiated successfully with the changed data

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Field_Name        | PersonalInfoWB            | PersonalInfo_communication_details | PersonalInfo_communication_details_rowNum | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | personal_information.xlsx | communication_details              | 0                                         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | personal_information.xlsx | communication_details              | 0                                         | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | PersonalInfoWB            | PersonalInfo_communication_details | PersonalInfo_communication_details_rowNum | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | personal_information.xlsx | communication_details              | 0                                         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | personal_information.xlsx | communication_details              | 0                                         | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | PersonalInfoWB            | PersonalInfo_communication_details | PersonalInfo_communication_details_rowNum | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | personal_information.xlsx | communication_details              | 0                                         | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | personal_information.xlsx | communication_details              | 0                                         | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | PersonalInfoWB            | PersonalInfo_communication_details | PersonalInfo_communication_details_rowNum | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | personal_information.xlsx | communication_details              | 0                                         | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | personal_information.xlsx | communication_details              | 0                                         | 19                  |

#  CAS-191048
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @Sanity
  Scenario Outline: ACAUTOCAS-12799: On clicking <Field_Name> the Dedupe Match Screen opens at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    When user reinitiate the dedupe for "<Field_Name>"
    Then on clicking "<Field_Name>" the Dedupe Match Screen get open successfully

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 19                  |


#  CAS-191048
  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @PotentialBug
  Scenario Outline: ACAUTOCAS-12800: On linking existing applicant with different applicant the message <message> is displayed at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    When user reinitiate the dedupe for "<Field_Name>"
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    And user link the existing application with different application
    Then user validate that the message "<message>" should be displayed successfully
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Field_Name        | message                                  | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Application successfully linked with CIF | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Application successfully linked with CIF | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | message                                  | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application successfully linked with CIF | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application successfully linked with CIF | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | message                                  | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application successfully linked with CIF | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application successfully linked with CIF | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | message                                  | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application successfully linked with CIF | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application successfully linked with CIF | 19                  |


  #Support - 16_CAS-1108869
  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @LoggedBug
    @FixedExp
  Scenario Outline:On linking existing applicant with different applicant the message <message> is displayed,same message <message> should get appear in Activity comments tab at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    When user reinitiate the dedupe for "<Field_Name>"
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    And user link the existing application with different application
    And user opens the activity tab
    And user opens the activity child tab
    Then user validate that the same message "<message>" should get appear in Activity comments tab
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Field_Name        | message                                  | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Application successfully linked with CIF | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Application successfully linked with CIF | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | message                                  | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application successfully linked with CIF | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application successfully linked with CIF | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
    # ${ ProductType : ["PF","HL","MAL"]}
    # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | message                                  | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application successfully linked with CIF | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application successfully linked with CIF | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | message                                  | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Application successfully linked with CIF | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Application successfully linked with CIF | 19                  |


#03_CAS-51940,Support_13_CAS-51940
  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @Sanity
  Scenario Outline: ACAUTOCAS-12801: While adding multiple <identification_type> with click on <Field_Name> view details hyperlink Dedupe Match Screen get displayed for Applicant Details at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<Summary_AnalysisWB>" under sheet "<KYC_Check_SHEET>" and row <KYC_Check_rowNum>
    When user add multiple "<identification_type>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    Then Dedupe Match Screen should be displayed for Applicant Details

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Field_Name        | identification_type  | Summary_AnalysisWB    | KYC_Check_SHEET | KYC_Check_rowNum | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | Emirates ID          | summary_analysis.xlsx | kyc_check       | 19               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | UDYAM                | summary_analysis.xlsx | kyc_check       | 20               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | UDYOG                | summary_analysis.xlsx | kyc_check       | 21               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | PASSPORT FILE NUMBER | summary_analysis.xlsx | kyc_check       | 22               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | Emirates ID          | summary_analysis.xlsx | kyc_check       | 19               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | UDYAM                | summary_analysis.xlsx | kyc_check       | 20               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | UDYOG                | summary_analysis.xlsx | kyc_check       | 21               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | PASSPORT FILE NUMBER | summary_analysis.xlsx | kyc_check       | 22               | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | identification_type  | Summary_AnalysisWB    | KYC_Check_SHEET | KYC_Check_rowNum | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Emirates ID          | summary_analysis.xlsx | kyc_check       | 19               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | UDYAM                | summary_analysis.xlsx | kyc_check       | 20               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | UDYOG                | summary_analysis.xlsx | kyc_check       | 21               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | PASSPORT FILE NUMBER | summary_analysis.xlsx | kyc_check       | 22               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Emirates ID          | summary_analysis.xlsx | kyc_check       | 19               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | UDYAM                | summary_analysis.xlsx | kyc_check       | 20               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | UDYOG                | summary_analysis.xlsx | kyc_check       | 21               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | PASSPORT FILE NUMBER | summary_analysis.xlsx | kyc_check       | 22               | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
   #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | identification_type | Summary_AnalysisWB    | KYC_Check_SHEET | KYC_Check_rowNum | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Aadhar No.          | summary_analysis.xlsx | kyc_check       | 11               | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | PAN                 | summary_analysis.xlsx | kyc_check       | 12               | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Voter's ID          | summary_analysis.xlsx | kyc_check       | 13               | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | PASSPORT            | summary_analysis.xlsx | kyc_check       | 9                | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Aadhar No.          | summary_analysis.xlsx | kyc_check       | 11               | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | PAN                 | summary_analysis.xlsx | kyc_check       | 12               | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Voter's ID          | summary_analysis.xlsx | kyc_check       | 13               | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | PASSPORT            | summary_analysis.xlsx | kyc_check       | 9                | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | identification_type | Summary_AnalysisWB    | KYC_Check_SHEET | KYC_Check_rowNum | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Aadhar No.          | summary_analysis.xlsx | kyc_check       | 11               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | PAN                 | summary_analysis.xlsx | kyc_check       | 12               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | Voter's ID          | summary_analysis.xlsx | kyc_check       | 13               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | PASSPORT            | summary_analysis.xlsx | kyc_check       | 9                | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Aadhar No.          | summary_analysis.xlsx | kyc_check       | 11               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | PAN                 | summary_analysis.xlsx | kyc_check       | 12               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | Voter's ID          | summary_analysis.xlsx | kyc_check       | 13               | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | PASSPORT            | summary_analysis.xlsx | kyc_check       | 9                | 19                  |




  #CAS-169406
  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12802:  In Dedupe Match Screen Personal Details field should be available in view mode at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    And  user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    When user view details in dedupe match screen
    Then personal details field should be available in view mode
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
   #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 19                  |



# ${ ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
#  ${ApplicationStage:["KYC"]}
#  CAS-170255, 06_CAS-67609
  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @Release
    @Part-1
    @Conventional
    @ImplementedBy-utkarsh.tiwari
  Scenario Outline: ACAUTOCAS-12803:  Success message <message> appears on reinitiate negative checklist at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    When user reinitiate Negative Checklist
    Then user should be able to validate that the Success message "<message>" appears upon reinitiation
    Examples:
      | ProductType   | ApplicationStage   | message                                  | Summary_home_rowNum | ApplicantType   |
      | <ProductType> | <ApplicationStage> | Negative Checklist executed successfully | 9                   | <ApplicantType> |

#  CAS-169656
  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12804: After saving Address details under Personal information data should be fetched while clicking on check for duplicates at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    When user fills the address details on Applicant Information
    Then data should be fetched while clicking on check for duplicates

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
   #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 19                  |

# ${ ProductType : ["IPF", "IHF", "IAF","PF", "CL", "MAL","HL","LAP","SHG","CV","MHL","FE","EDU","AGRL","JLG","CEQ","GL","FAS","MULF","BD","CashCred","BL","LC","BG"]}
# ${ApplicationStage:["Lead Details"]}
#  CAS-177482
  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @Release
    @Part-1
    @Conventional
    @ImplementedBy-utkarsh.tiwari
  Scenario Outline: ACAUTOCAS-12805:  Delete the identification details from Existing customer for <ApplicantType> at <ApplicationStage> stage for <ProductType>
    And user creates "<ProductType>" application
    And user search the application of "<ApplicantType>" type on "<ApplicationStage>" of "<ProductType>"
    And user navigates to personal information page of "<ApplicationStage>"
    When user delete the identification of existing customer for "<ApplicantType>" applicant type
    Then user should be able to validate that the identification details delete successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType |
      | <ProductType> | <ApplicationStage> | indiv         |
      | <ProductType> | <ApplicationStage> | nonindiv      |

#  CAS-133164
  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12806:  Fill the address as <Address_Type> dedupe matches should work for Non Individual Customer at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    When user select address as "<Address_Type>"
    And user rerun the dedupe on Applicant Information page
    Then data should be fetched while clicking on check for duplicates

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Address_Type            | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Office Business Address | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Address_Type            | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Office Business Address | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
   #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Address_Type            | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Office Business Address | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Address_Type            | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Office Business Address | 19                  |

#  CAS-128107
  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12807: Verify the dedupe button that appeared on the screen should be named as Re-initiate at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user add identification type
    And user fills the address details on Applicant Information
    And user rerun the dedupe on Applicant Information page
    When user rerun the dedupe on Applicant Information page
    Then user validate that the dedupe button should named as Re-initiate

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 19                  |

#  CAS-178849
  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @LoggedBug-CAS-229475
    @FixedExp
  Scenario Outline: ACAUTOCAS-12808: For Existing Customer Customer dedupe match result should shows a business match with <Field_Name> at <ApplicationStage> stage for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user fetch customer number from current application
    And user updates the application for dedupe
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row <Summary_home_rowNum>
    And user consent the identification details
    And user rerun the dedupe on Applicant Information page
    And user click on "<Field_Name>" No of Dedupe Match hyperlink on Applicant Information
    When user opens Strength of Match in dedupe match screen
    Then user should be able to validate that the Customer dedupe match result shows a business match
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Application Match | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Customer Match    | 19                  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 19                  |


    @Conventional
    @Release
    @Part-1
    @ImplementedBy-aditya.tomar
   #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 9                   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 9                   |
    @NotImplemented
    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Field_Name        | Summary_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Application Match | 19                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Customer Match    | 19                  |

