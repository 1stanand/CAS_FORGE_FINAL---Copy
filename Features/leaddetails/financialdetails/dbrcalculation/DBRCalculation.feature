@Epic-Applicant_Information
@TechReviewedBy-
@ReviewedByDEV
@AppInfoAdoption
@FixedTest

   # ${ApplicantType:["indiv","nonindiv"]}
Feature:DBR calculation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-5972
  @Sanity
  Scenario Outline: ACAUTOCAS-5775: DBR calculation for Agriculture employee at <ApplicationStage> of <ProductType>
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    When user fill employment details with Occupation Type as "<OccupationType>"
    And user reads data from the excel file "<Financial_Details_WB>" under sheet "<Agriculture_income>" and row <Row_no>
    And user fill income details for Agriculture
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill expense details
    And user fill liability details
    And user Save&Compute the financial details
    Then DBR should get calculated as per the formula mentioned in the master
    @Release @Part-2
    @AuthoredBy-vipin.kishor
    @ImplementedBy-yash.sharma
    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Financial_Details_WB   | Agriculture_income | Row_no |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Agriculture    | employment_details.xlsx | home                   | 89                            | financial_details.xlsx | agriculture_income | 0      |

    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
    @Part-2
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Financial_Details_WB   | Agriculture_income | Row_no |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Agriculture    | employment_details.xlsx | home                   | 89                            | financial_details.xlsx | agriculture_income | 0      |

    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
    @Part-2
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${category : ["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category   | key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Financial_Details_WB   | Agriculture_income | Row_no |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Agriculture    | employment_details.xlsx | home                   | 89                            | financial_details.xlsx | agriculture_income | 0      |

    @AuthoredBy-anshika.gupta
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | Financial_Details_WB   | Agriculture_income | Row_no |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Agriculture    | employment_details.xlsx | home                   | 89                            | financial_details.xlsx | agriculture_income | 0      |

#FeatureID-ACAUTOCAS-5972
  Scenario Outline: ACAUTOCAS-5776: DBR calculation for salaried employee at <ApplicationStage> of <ProductType>
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    When user fill employment details with Occupation Type as "<OccupationType>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_IncomeDetails>" and row <FinancialDetails_IncomeDetails_rowNum>
    And user fill income details for salaried
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill expense details
    And user fill liability details
    And user Save&Compute the financial details
    Then DBR should get calculated as per the formula mentioned in the master

    @AuthoredBy-vipin.kishor
    @ImplementedBy-yash.sharma
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salaried       | employment_details.xlsx | home                   | 153                           | financial_details.xlsx | income_details                 | 56                                    |

    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
    @Part-2
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salaried       | employment_details.xlsx | home                   | 171                           | financial_details.xlsx | income_details                 | 56                                    |

    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
    @Part-2
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${category : ["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category   | key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Salaried       | employment_details.xlsx | home                   | 171                           | financial_details.xlsx | income_details                 | 56                                    |

    @AuthoredBy-anshika.gupta
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Salaried       | employment_details.xlsx | home                   | 153                           | financial_details.xlsx | income_details                 | 56                                    |

  #FeatureID-ACAUTOCAS-5972
  Scenario Outline: ACAUTOCAS-5779: DBR calculation for employee with Occupation Type as Others at <ApplicationStage> of <ProductType>
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    When user fill employment details with Occupation Type as "<OccupationType>"
    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_IncomeDetails>" and row <FinancialDetails_IncomeDetails_rowNum>
    And user fill income details for others
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fill expense details
    And user fill liability details
    And user Save&Compute the financial details
    Then DBR should get calculated as per the formula mentioned in the master

    @AuthoredBy-vipin.kishor
    @ImplementedBy-yash.sharma
    @Release @Part-2
    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Others         | employment_details.xlsx | home                   | 69                            | financial_details.xlsx | income_details                 | 56                                    |


    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
    @Part-2
     # ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Others         | employment_details.xlsx | home                   | 69                            | financial_details.xlsx | income_details                 | 56                                    |

    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
    @Part-2
    # ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${category : ["bonds"]}
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category   | key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Others         | employment_details.xlsx | home                   | 69                            | financial_details.xlsx | income_details                 | 56                                    |

    @AuthoredBy-anshika.gupta
    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | category | key | OccupationType | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Others         | employment_details.xlsx | home                   | 69                            | financial_details.xlsx | income_details                 | 56                                    |

    # #FeatureID-ACAUTOCAS-5972
#  @LoggedBug-CAS-225713
#  Scenario Outline: ACAUTOCAS-5777: DBR calculation for SEP employee at <ApplicationStage> of <ProductType>
#    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
#    And user opens personal information tab
#    When user fill employment details with Occupation Type as "<OccupationType>"
#    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_IncomeDetails>" and row <FinancialDetails_IncomeDetails_rowNum>
#    And user fill income details for Self Employed Professional with "<NumberofIncomeHead>"
#    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
#    And user fill expense details
#    And user fill liability details
#    And user Save&Compute the financial details
#    Then DBR should get calculated as per the formula mentioned in the master
#
#
#    @AuthoredBy-vipin.kishor
#    @ImplementedBy-yash.sharma
#    @Release @Part-2
#    @Conventional
#    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
#    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | category | key | OccupationType             | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum | NumberofIncomeHead |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Self Employed Professional | employment_details.xlsx | home                   | 33                            | financial_details.xlsx | income_details                 | 56                                    | single             |
#
#    @AuthoredBy-anshika.gupta
#    @ImplementedBy-anshika.gupta
#    @Islamic
#    @Release
#@Part-2
#     # ${ ProductType : ["IHF","IAF"]}
#    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | category | key | OccupationType             | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum | NumberofIncomeHead |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Self Employed Professional | employment_details.xlsx | home                   | 33                            | financial_details.xlsx | income_details                 | 56                                    | single             |
#
#    @AuthoredBy-anshika.gupta
#    @ImplementedBy-anshika.gupta
#    @Islamic
#    @Release
#@Part-2
#    # ${ ProductType : ["IPF"]}
#    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#    #${category : ["bonds"]}
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | category   | key | OccupationType             | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum | NumberofIncomeHead |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Self Employed Professional | employment_details.xlsx | home                   | 33                            | financial_details.xlsx | income_details                 | 56                                    | single             |
#
#    @AuthoredBy-anshika.gupta
#    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | category | key | OccupationType             | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum | NumberofIncomeHead |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Self Employed Professional | employment_details.xlsx | home                   | 33                            | financial_details.xlsx | income_details                 | 56                                    | single             |
#
# #FeatureID-ACAUTOCAS-5972
#  @LoggedBug-CAS-225713
#  Scenario Outline: ACAUTOCAS-5778: DBR calculation for SENP employee at <ApplicationStage> of <ProductType>
#    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
#    And user opens personal information tab
#    When user fill employment details with Occupation Type as "<OccupationType>"
#    And user reads data from the excel file "<FinancialDetailsWB>" under sheet "<FinancialDetails_IncomeDetails>" and row <FinancialDetails_IncomeDetails_rowNum>
#    And user fill income details for Self Employed Non Professional
#    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
#    And user fill expense details
#    And user fill liability details
#    And user Save&Compute the financial details
#    Then DBR should get calculated as per the formula mentioned in the master
#
#    @AuthoredBy-vipin.kishor
#    @ImplementedBy-yash.sharma
#    @Release @Part-2
#    @Conventional
#    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
#    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | category | key | OccupationType                 | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Self Employed Non Professional | employment_details.xlsx | home                   | 152                           | financial_details.xlsx | income_details                 | 56                                    |
#
#    @AuthoredBy-anshika.gupta
#    @ImplementedBy-anshika.gupta
#    @Islamic
#    @Release
#@Part-2
#     # ${ ProductType : ["IHF","IAF"]}
#    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval","Reconsideration"]}
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | category | key | OccupationType                 | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Self Employed Non Professional | employment_details.xlsx | home                   | 152                           | financial_details.xlsx | income_details                 | 56                                    |
#
#    @AuthoredBy-anshika.gupta
#    @ImplementedBy-anshika.gupta
#    @Islamic
#    @Release
#@Part-2
#    # ${ ProductType : ["IPF"]}
#    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
#    #${category : ["bonds"]}
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | category   | key | OccupationType                 | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> | <category> |     | Self Employed Non Professional | employment_details.xlsx | home                   | 152                           | financial_details.xlsx | income_details                 | 56                                    |
#
#    @AuthoredBy-anshika.gupta
#    #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
#   #${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
#    Examples:
#      | ProductType   | ApplicationStage   | ApplicantType   | category | key | OccupationType                 | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | FinancialDetailsWB     | FinancialDetails_IncomeDetails | FinancialDetails_IncomeDetails_rowNum |
#      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Self Employed Non Professional | employment_details.xlsx | home                   | 152                           | financial_details.xlsx | income_details                 | 56                                    |
