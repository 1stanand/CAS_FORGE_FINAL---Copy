@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@Reconciled
@AppInfoAdoption

#FeatureID-ACAUTOCAS-158
# ${ApplicantType:["indiv"]}

Feature: Major Occupation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario Outline: ACAUTOCAS-3823:  Confirmation message pops up on changing Major Occupation
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with "<Mandatory_All>" fields <NumberOf> times
    When changes major occupation
    Then confirmation message pops up

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Mandatory_All | NumberOf | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Mandatory     | 2        | employment_details.xlsx | home                   | 18                            |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Mandatory_All | NumberOf | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Mandatory     | 2        | employment_details.xlsx | home                   | 18                            |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Mandatory_All | NumberOf | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Mandatory     | 2        | employment_details.xlsx | home                   | 18                            |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Mandatory_All | NumberOf | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Mandatory     | 2        | employment_details.xlsx | home                   | 18                            |


  Scenario Outline: ACAUTOCAS-3824:  Major Occupation can be changed
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row 69
    And user fill employment details with Occupation Type as "Others"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with "<Mandatory_All>" fields <NumberOf> times
    When change major occupation and confirm
    Then Major Occupation changes
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Mandatory_All | NumberOf | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Mandatory     | 1        | employment_details.xlsx | home                   | 18                            |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Mandatory_All | NumberOf | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Mandatory     | 1        | employment_details.xlsx | home                   | 18                            |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Mandatory_All | NumberOf | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Mandatory     | 1        | employment_details.xlsx | home                   | 18                            |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Mandatory_All | NumberOf | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Mandatory     | 1        | employment_details.xlsx | home                   | 18                            |


  Scenario Outline: ACAUTOCAS-3825:  Major Employer is marked Yes in Major Occupation
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    When click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with "<Mandatory_All>" fields <NumberOf> times
    When user saves major occupation
    Then Major Employer should be marked Yes
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Mandatory_All | NumberOf | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Mandatory     | 2        | employment_details.xlsx | home                   | 18                            |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Mandatory_All | NumberOf | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Mandatory     | 2        | employment_details.xlsx | home                   | 18                            |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Mandatory_All | NumberOf | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Mandatory     | 2        | employment_details.xlsx | home                   | 18                            |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Mandatory_All | NumberOf | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Mandatory     | 2        | employment_details.xlsx | home                   | 18                            |

  Scenario Outline: ACAUTOCAS-3826:  Only one Major Occupation can be saved
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with "<Mandatory_All>" fields <NumberOf> times
    When change major occupation and confirm
    Then Only One Major Occupation is selected
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | Mandatory_All | NumberOf | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | Mandatory     | 2        | employment_details.xlsx | home                   | 18                            |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Mandatory_All | NumberOf | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Mandatory     | 2        | employment_details.xlsx | home                   | 18                            |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-aman.nagarkoti
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Mandatory_All | NumberOf | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Mandatory     | 2        | employment_details.xlsx | home                   | 18                            |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key | Mandatory_All | NumberOf | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Mandatory     | 2        | employment_details.xlsx | home                   | 18                            |

  #New Approache
  #  =================== Major Occupation==========
#SquashID:04_CAS_64722

  #  CAS-110829
 #Below configuration should be configured in the system for Reconsideration stage
#1) Authority added for update details checkbox is 'UPDATE_DETAILS_CHECKBOX_AUTH'.
#2) Two new configuration columns are added in entity 'CAS_PROD_TYPE_CONFIG' namely 'IS_NEW_CUST_ALLOWED_RECON' and 'IS_EXIST_CUST_ALLOWED_RECON'.

    #FeatureID-ACAUTOCAS-158,CAS_64722


  Scenario Outline: ACAUTOCAS-12885: Single <Occupation> Occupation marked as Major Occupation automatically on clicking <Save_Next> button in Employment Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <rowNo>
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user deletes existing occupations
    When user add Single "<Occupation>" Occupation in Employment Details
    And user clicks on "<Save_Next>" button of employment details
    Then "<Occupation>" Occupation marked as Major Occupation automatically after "<Save_Next>"

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Occupation                     | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | rowNo | Category   | key |
      | Agriculture                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     | <Category> |     |
      | Agriculture                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     | <Category> |     |
      | Others                         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    | <Category> |     |
      | Others                         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    | <Category> |     |
      | Salaried                       | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 153   | <Category> |     |
      | Salaried                       | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 153   | <Category> |     |
      | Self Employed Non Professional | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 128   | <Category> |     |
      | Self Employed Non Professional | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 128   | <Category> |     |
      | Self Employed Professional     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 145   | <Category> |     |
      | Self Employed Professional     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 145   | <Category> |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Occupation                     | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | rowNo | Category | key |
      | Agriculture                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     |          |     |
      | Agriculture                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     |          |     |
      | Others                         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    |          |     |
      | Others                         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    |          |     |
      | Salaried                       | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 153   |          |     |
      | Salaried                       | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 153   |          |     |
      | Self Employed Non Professional | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 128   |          |     |
      | Self Employed Non Professional | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 128   |          |     |
      | Self Employed Professional     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 145   |          |     |
      | Self Employed Professional     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 145   |          |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Occupation                     | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | rowNo | Category | key |
      | Agriculture                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     |          |     |
      | Agriculture                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     |          |     |
      | Others                         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    |          |     |
      | Others                         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    |          |     |
      | Salaried                       | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 7     |          |     |
      | Salaried                       | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 7     |          |     |
      | Self Employed Non Professional | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 53    |          |     |
      | Self Employed Non Professional | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 53    |          |     |
      | Self Employed Professional     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 33    |          |     |
      | Self Employed Professional     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 33    |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Occupation                     | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | rowNo | Category | key |
      | Agriculture                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     |          |     |
      | Agriculture                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     |          |     |
      | Others                         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    |          |     |
      | Others                         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    |          |     |
      | Salaried                       | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 7     |          |     |
      | Salaried                       | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 7     |          |     |
      | Self Employed Non Professional | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 53    |          |     |
      | Self Employed Non Professional | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 53    |          |     |
      | Self Employed Professional     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 33    |          |     |
      | Self Employed Professional     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 33    |          |     |

  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12886: Automatic Major Occupation marking in case of multiple occupation added on clicking <Save_Next> button in Employment Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <row1>
    When user add Single "Agriculture" Occupation in Employment Details
    And user clicks on "<Save_Next>" button of employment details
    Then occupation should not be marked as Major Occupation automatically after "<Save_Next>"
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | row1 |
      | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | 3    |
      | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | 3    |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | Category | key | row1 |
      | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 3    |
      | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 3    |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | Category | key | row1 |
      | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 3    |
      | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 3    |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | Category | key | row1 |
      | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 3    |
      | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 3    |

  #FeatureID-ACAUTOCAS-158

  Scenario Outline: ACAUTOCAS-12887: If user deletes the marked Major occupation and after adding again "<Occupation>" occupation marked as Major occupation automatically on clicking <Save_Next> button in Employment Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <rowNo>
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user deletes existing occupations
    When user add Single "<Occupation>" Occupation in Employment Details
    And user changes major occupation to "<Occupation>"
    And user clicks on "Save" button of employment details
    And user deletes existing occupations
    When user add Single "<Occupation>" Occupation in Employment Details
    And user clicks on "<Save_Next>" button of employment details
    Then "<Occupation>" Occupation marked as Major Occupation automatically after "<Save_Next>"
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Occupation                     | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | rowNo | Category   | key |
      | Agriculture                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     | <Category> |     |
      | Agriculture                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     | <Category> |     |
      | Others                         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    | <Category> |     |
      | Others                         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    | <Category> |     |
      | Salaried                       | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 153   | <Category> |     |
      | Salaried                       | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 153   | <Category> |     |
      | Self Employed Non Professional | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 128   | <Category> |     |
      | Self Employed Non Professional | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 128   | <Category> |     |
      | Self Employed Professional     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 145   | <Category> |     |
      | Self Employed Professional     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 145   | <Category> |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Occupation                     | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | rowNo | Category | key |
      | Agriculture                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     |          |     |
      | Agriculture                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     |          |     |
      | Others                         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    |          |     |
      | Others                         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    |          |     |
      | Salaried                       | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 153   |          |     |
      | Salaried                       | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 153   |          |     |
      | Self Employed Non Professional | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 128   |          |     |
      | Self Employed Non Professional | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 128   |          |     |
      | Self Employed Professional     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 145   |          |     |
      | Self Employed Professional     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 145   |          |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Occupation                     | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | rowNo | Category | key |
      | Agriculture                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     |          |     |
      | Agriculture                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     |          |     |
      | Others                         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    |          |     |
      | Others                         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    |          |     |
      | Salaried                       | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 7     |          |     |
      | Salaried                       | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 7     |          |     |
      | Self Employed Non Professional | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 53    |          |     |
      | Self Employed Non Professional | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 53    |          |     |
      | Self Employed Professional     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 33    |          |     |
      | Self Employed Professional     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 33    |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Occupation                     | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | rowNo | Category | key |
      | Agriculture                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     |          |     |
      | Agriculture                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     |          |     |
      | Others                         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    |          |     |
      | Others                         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    |          |     |
      | Salaried                       | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 7     |          |     |
      | Salaried                       | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 7     |          |     |
      | Self Employed Non Professional | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 53    |          |     |
      | Self Employed Non Professional | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 53    |          |     |
      | Self Employed Professional     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | 33    |          |     |
      | Self Employed Professional     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | 33    |          |     |

  #FeatureID-ACAUTOCAS-158
  @FixedExp
  Scenario Outline: ACAUTOCAS-12888: Major occupation marking should remain intact after any modification in <Occupation> details in Employment Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <rowNo>
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user deletes existing occupations
    When user add Single "<Occupation>" Occupation in Employment Details
    And user changes major occupation to "<Occupation>"
    And user clicks on "Save" button of employment details
    And user modify "<Occupation>" Occupation details
    Then "<Occupation>" Occupation marked as Major Occupation automatically after "Save"

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Occupation                     | ApplicationStage   | ProductType   | ApplicantType   | rowNo | Category   | key |
      | Agriculture                    | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     | <Category> |     |
      | Others                         | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    | <Category> |     |
      | Salaried                       | <ApplicationStage> | <ProductType> | <ApplicantType> | 153   | <Category> |     |
      | Self Employed Non Professional | <ApplicationStage> | <ProductType> | <ApplicantType> | 130   | <Category> |     |
      | Self Employed Professional     | <ApplicationStage> | <ProductType> | <ApplicantType> | 145   | <Category> |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Occupation                     | ApplicationStage   | ProductType   | ApplicantType   | rowNo | Category | key |
      | Agriculture                    | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     |          |     |
      | Others                         | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    |          |     |
      | Salaried                       | <ApplicationStage> | <ProductType> | <ApplicantType> | 153   |          |     |
      | Self Employed Non Professional | <ApplicationStage> | <ProductType> | <ApplicantType> | 161   |          |     |
      | Self Employed Professional     | <ApplicationStage> | <ProductType> | <ApplicantType> | 145   |          |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Occupation                     | ApplicationStage   | ProductType   | ApplicantType   | rowNo | Category | key |
      | Agriculture                    | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     |          |     |
      | Others                         | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    |          |     |
      | Salaried                       | <ApplicationStage> | <ProductType> | <ApplicantType> | 7     |          |     |
      | Self Employed Non Professional | <ApplicationStage> | <ProductType> | <ApplicantType> | 53    |          |     |
      | Self Employed Professional     | <ApplicationStage> | <ProductType> | <ApplicantType> | 33    |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Occupation                     | ApplicationStage   | ProductType   | ApplicantType   | rowNo | Category | key |
      | Agriculture                    | <ApplicationStage> | <ProductType> | <ApplicantType> | 3     |          |     |
      | Others                         | <ApplicationStage> | <ProductType> | <ApplicantType> | 69    |          |     |
      | Salaried                       | <ApplicationStage> | <ProductType> | <ApplicantType> | 7     |          |     |
      | Self Employed Non Professional | <ApplicationStage> | <ProductType> | <ApplicantType> | 53    |          |     |
      | Self Employed Professional     | <ApplicationStage> | <ProductType> | <ApplicantType> | 33    |          |     |

    #FeatureID-ACAUTOCAS-158
  @FixedExp
  Scenario Outline: ACAUTOCAS-12889: Occupation marked as Major occupation automatically on clicking <Save_Next> button after deleting all occupation except <Occupation> in Employment Details
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user deletes existing occupations
    When user add multiple occupation in Employment Details
      | employment_details.xlsx | home | 3   | Agriculture                    |
      | employment_details.xlsx | home | 128 | Self Employed Non Professional |
      | employment_details.xlsx | home | 145 | Self Employed Professional     |
      | employment_details.xlsx | home | 153 | Salaried                       |
      | employment_details.xlsx | home | 69  | Others                         |
    And user changes major occupation to "<Occupation>"
    And user clicks on "<Save_Next>" button of employment details
    And user deletes all occupation except "<Occupation>" for "<Save_Next>"
    And user clicks on "<Save_Next>" button of employment details
    Then "<Occupation>" Occupation marked as Major Occupation automatically after "<Save_Next>"
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Occupation                     | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Agriculture                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Agriculture                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Self Employed Non Professional | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Self Employed Non Professional | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Self Employed Professional     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Self Employed Professional     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Salaried                       | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Salaried                       | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Others                         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Others                         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Occupation                     | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Agriculture                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Agriculture                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Self Employed Non Professional | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Self Employed Non Professional | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Self Employed Professional     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Self Employed Professional     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Salaried                       | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Salaried                       | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Others                         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Others                         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-tushar.chauhan
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Occupation                     | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Agriculture                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Agriculture                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Self Employed Non Professional | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Self Employed Non Professional | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Self Employed Professional     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Self Employed Professional     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Salaried                       | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Salaried                       | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Others                         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Others                         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Occupation                     | Save_Next   | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Agriculture                    | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Agriculture                    | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Self Employed Non Professional | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Self Employed Non Professional | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Self Employed Professional     | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Self Employed Professional     | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Salaried                       | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Salaried                       | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Others                         | Save        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Others                         | Save & Next | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

