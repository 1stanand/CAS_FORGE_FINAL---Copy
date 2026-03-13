@Epic-Applicant_Information
@ReviewedBy-None
@ReviewedByDEV
@AppInfoAdoption
Feature: Save Applicants Other Income Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

   #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-3960:  Save Applicants other income detail without income head
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills and saves employment details as "<Employment_Type>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds other income details without income head
#    And user saves the other income detail
    Then other income detail should not be saved

    @AuthoredBy-ayush.garg
    @ImplementedBy-ayush.garg
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 3                                          |

    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
@Part-2
     # ${ ProductType : ["IHF","IAF"]}
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 171                      | employment_details.xlsx | home                   | 170                           | financial_details.xlsx | other_income_details                | 3                                          |


    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
    @FixedJsClick2
@Part-2
    # ${ ProductType : ["IPF"]}
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 171                      | employment_details.xlsx | home                   | 170                           | financial_details.xlsx | other_income_details                | 3                                          |

    @AuthoredBy-anshika.gupta
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   @NotImplemented
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 3                                          |


    #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-3961:  Save Applicants other income detail without income source
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills and saves employment details as "<Employment_Type>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds other income details without income source
#    And user saves the other income detail
    Then other income detail should not be saved

    @AuthoredBy-ayush.garg
    @ImplementedBy-ayush.garg
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 4                                          |

    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
@Part-2
     # ${ ProductType : ["IHF","IAF"]}
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 171                      | employment_details.xlsx | home                   | 170                           | financial_details.xlsx | other_income_details                | 4                                          |

    @FixedJsClick
    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
@Part-2
    @FixedJsClick2
    # ${ ProductType : ["IPF"]}
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 171                      | employment_details.xlsx | home                   | 170                           | financial_details.xlsx | other_income_details                | 4                                          |


    @AuthoredBy-anshika.gupta
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   @NotImplemented
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 4                                          |

  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-3962:  Save Applicants other income detail without income amount
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills and saves employment details as "<Employment_Type>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds other income details without income amount
#    And user saves the other income detail
    Then other income detail should not be saved

    @AuthoredBy-ayush.garg
    @ImplementedBy-ayush.garg
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 5                                          |


    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
@Part-2
     # ${ ProductType : ["IHF","IAF"]}
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 171                      | employment_details.xlsx | home                   | 170                           | financial_details.xlsx | other_income_details                | 5                                          |

    @FixedJsClick2
    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
@Part-2
    @FixedJsClick
    # ${ ProductType : ["IPF"]}
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 171                      | employment_details.xlsx | home                   | 170                           | financial_details.xlsx | other_income_details                | 5                                          |

    @AuthoredBy-anshika.gupta
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   @NotImplemented
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 5                                          |

  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-3963:  Save Applicants other income detail without share percentage of that income detail
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills and saves employment details as "<Employment_Type>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds other income details without share percentage of that income detail
#    And user saves the other income detail
    Then other income detail should not be saved

    @AuthoredBy-ayush.garg
    @ImplementedBy-ayush.garg
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 6                                          |

    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
@Part-2
     # ${ ProductType : ["IHF","IAF"]}
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 171                      | employment_details.xlsx | home                   | 170                           | financial_details.xlsx | other_income_details                | 6                                          |

    @FixedJsClick
    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
@Part-2
    @FixedJsClick2
    # ${ ProductType : ["IPF"]}
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 171                      | employment_details.xlsx | home                   | 170                           | financial_details.xlsx | other_income_details                | 6                                          |

    @AuthoredBy-anshika.gupta
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   @NotImplemented
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 6                                          |

  #FeatureID-ACAUTOCAS-160
  Scenario Outline: ACAUTOCAS-3964:  Save Applicants other income detail without frequency of earning the income amount
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills and saves employment details as "<Employment_Type>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_OtherIncomeDetails>" and row <FinancialDetails_OtherIncomeDetails_rowNum>
    When user adds other income details without frequency of earning the income amount
#    And user saves the other income detail
    Then other income detail should not be saved

    @AuthoredBy-ayush.garg
    @ImplementedBy-ayush.garg
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 7                                          |

    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
@Part-2
     # ${ ProductType : ["IHF","IAF"]}
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 171                      | employment_details.xlsx | home                   | 170                           | financial_details.xlsx | other_income_details                | 7                                          |

    @FixedJsClick
    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
@Part-2
    @FixedJsClick2
    # ${ ProductType : ["IPF"]}
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 171                      | employment_details.xlsx | home                   | 170                           | financial_details.xlsx | other_income_details                | 7                                          |

    @AuthoredBy-anshika.gupta
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   @NotImplemented
    Examples:
      | ProductType   | Employment_Type | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_OtherIncomeDetails | FinancialDetails_OtherIncomeDetails_rowNum |
      | <ProductType> | salaried        | personal_information.xlsx | home              | 1                        | employment_details.xlsx | home                   | 7                             | financial_details.xlsx | other_income_details                | 7                                          |
