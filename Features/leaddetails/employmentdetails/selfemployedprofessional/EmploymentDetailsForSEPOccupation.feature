@Epic-Applicant_Information
@AuthoredBy-utkarsh.tiwari
@Reconciled
@AppInfoAdoption
@Experiment
  # ${ApplicantType:["indiv"]}
Feature:Employment Details for Self Employed Professional

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #  CAS-110829
#Below configuration should be configured in the system for Reconsideration stage
#1) Authority added for update details checkbox is 'UPDATE_DETAILS_CHECKBOX_AUTH'.
#2) Two new configuration columns are added in entity 'CAS_PROD_TYPE_CONFIG' namely 'IS_NEW_CUST_ALLOWED_RECON' and 'IS_EXIST_CUST_ALLOWED_RECON'.

  @ImplementedBy-utkarsh.tiwari
  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12978: Required <Field> field validation for Self Employed Professional in Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 0
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user open Employment Details from selected application
    And user selects Occupation Type as "Self Employed Professional" in employment details
    When user click on Required to check required fields of occupation type
    Then "<Field>" field should be present for "Self Employed Professional" in Employment Details

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field                | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Profession | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industry             | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Registration Number  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Work Experience      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | Field                | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12979: <Field> field validation in All Fields for Self Employed Professional in Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 0
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user open Employment Details from selected application
    And user selects Occupation Type as "Self Employed Professional" in employment details
    When user click on All Fields to check all fields of Occupation Type
    Then "<Field>" field should be present for "Self Employed Professional" in Employment Details
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Profession       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type of Ownership         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address Checkbox | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field                     | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Add Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Profession      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industry                  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Sub-Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Year Of Incorporation     | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Profession       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Type of Ownership         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Start Date                | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | End Date                  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Remarks                   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Registration Number       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Work Experience           | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer Address Checkbox | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Profession       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type of Ownership         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address Checkbox | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | Field                     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Profession       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type of Ownership         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address Checkbox | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
#FeatureID-ACAUTOCAS-158
    @Sanity
  Scenario Outline: ACAUTOCAS-12980: <Save_Next> Employment Details for Self Employed Professional occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 0
    And user fills employment details with "mandatory" fields for self employed professional
    And user clicks on Done of employment details for self employed professional
    When user clicks on "<Save_Next>" button of employment details
    Then Employment Details should be "<Save_Next>"
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     |


  @ImplementedBy-utkarsh.tiwari
    @TestGrid
  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12981: Field type validation of <Field> field in Employment Details for Self Employed Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 0
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user open Employment Details from selected application
    And user selects Occupation Type as "Self Employed Professional" in employment details
    When user click on All Fields to check all fields of Occupation Type
    Then field type of "<Field>" field should "<Field_Type>" field in Employment Details for Self Employed Professional
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                 | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type   | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name     | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession  | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry              | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry          | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Profession   | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type of Ownership     | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date            | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date              | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks               | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number   | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address      | checkbox       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field                 | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Add Occupation Type   | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name     | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Profession  | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industry              | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Sub-Industry          | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Year Of Incorporation | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Profession   | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Type of Ownership     | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Start Date            | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | End Date              | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Remarks               | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Registration Number   | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Work Experience       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer Address      | checkbox       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                 | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type   | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name     | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession  | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry              | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry          | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Profession   | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type of Ownership     | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date            | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date              | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks               | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number   | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address      | checkbox       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | Field                 | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type   | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name     | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession  | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry              | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry          | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Profession   | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type of Ownership     | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date            | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date              | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks               | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number   | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address      | checkbox       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12982: :Warning pop up validation while cancelling the Employment Details filling process for Self Employed Professional occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 0
    And user fills employment details with "mandatory" fields for self employed professional
    When user clicks on Cancel button of employment details page
    Then warning pop up should be populated with a message
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
       #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12983: Cancel the Employment Details filling process for Self Employed Professional occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 0
    And user fills employment details with "mandatory" fields for self employed professional
    When user clicks on Cancel button of employment details page
    And user clicks on "<Button>" of warning pop up
    Then filled data should be "<Clear_Remains>" in employment details
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Button | Clear_Remains  | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | Close  | remains intact | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Ok     | Clear          | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | Button | Clear_Remains  | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | Close  | remains intact | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | <ProductType> | Ok     | Clear          | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Button | Clear_Remains  | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | Close  | remains intact | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Ok     | Clear          | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | Button | Clear_Remains  | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | Close  | remains intact | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Ok     | Clear          | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12984: Close the warning pop up with help of <Button_Icon> in Employment Details for Self Employed Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 0
    And user fills employment details with "mandatory" fields for self employed professional
    When user clicks on Cancel button of employment details page
    And user close the warning pop up with help of "<Button_Icon>" in Employment Details
    Then warning pop up should be closed in employment details
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Button_Icon  | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | close icon   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | close button | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Button_Icon  | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | close icon   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | close button | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Button_Icon  | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | close icon   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | close button | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | Button_Icon  | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | close icon   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | close button | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12985: Minimize the warning pop up in Employment Details for Self Employed Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 0
    And user fills employment details with "mandatory" fields for self employed professional
    When user clicks on Cancel button of employment details page
    And user minimize the warning pop up in Employment Details
    Then warning pop up should be minimized in employment details
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12986: Maximize the minimized warning pop up in Employment Details for Self Employed Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 0
    And user fills employment details with "mandatory" fields for self employed professional
    When user clicks on Cancel button of employment details page
    And user maximize the minimized warning pop up in Employment Details
    Then warning pop up should be maximized in employment details
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12987: Validate Employment Details grid <Columns> column in Employment Details for Self Employed Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 0
    And user deletes existing occupations
    When user fills employment details with "mandatory" fields for self employed professional
    Then Employment Details should be display with "<Columns>" Employment Details grid
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Columns                   | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | ID                        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Major Employer?           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Type           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer/Organization     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industries                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Is this Major Occupation? | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Actions                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Columns                   | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | ID                        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Major Employer?           | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Occupation Type           | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer/Organization     | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industries                | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Is this Major Occupation? | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Actions                   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Columns                   | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | ID                        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Major Employer?           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Type           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer/Organization     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industries                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Is this Major Occupation? | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Actions                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | Columns                   | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | ID                        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Major Employer?           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Occupation Type           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer/Organization     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industries                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Is this Major Occupation? | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Actions                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  @ImplementedBy-utkarsh.tiwari
  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12988: Validate Employment Details grid <Columns> column data in Employment Details for Self Employed Professional occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 0
    And user deletes existing occupations
    And user fills employment details with "mandatory" fields for self employed professional
    When user clicks on Done of employment details for self employed professional
    Then Employment Details grid should be display with filled "<Columns>"
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Columns               | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer/Organization | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industries            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Columns               | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer/Organization | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industries            | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Columns               | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer/Organization | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industries            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | Columns               | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer/Organization | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industries            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  @ImplementedBy-utkarsh.tiwari
  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12989: Occupation Id generation on adding occupation details in Employment Details grid for Self Employed Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 0
    And user deletes existing occupations
    And user fills employment details with "mandatory" fields for self employed professional
    When user clicks on Done of employment details for self employed professional
    Then Occupation Id should get generated
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12990: Conformation pop up validation while changing the Major Occupation in Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 0
    And user fills employment details with "all" fields for self employed professional
    And saves the employment details
    When changes major occupation
    Then confirmation message pops up
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
  #FeatureID-ACAUTOCAS-158
    @FixedExp
  Scenario Outline: ACAUTOCAS-12991: Change the Major Occupation in Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 0
    And user fills employment details with "all" fields for self employed professional
    And saves the employment details
    When change major occupation and confirm
    Then Major Occupation changes
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12992: <Close_Cancel> the conformation pop up in Employment Details for Self Employed Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 0
    And user fills employment details with "all" fields for self employed professional
    And saves the employment details
    And user changes major occupation without done to "Self Employed Professional"
    When user close the Confirmation pop up of major occupation change with help of "<Close_Cancel>" in Employment Details
    Then confirmation pop up should be closed
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Close_Cancel | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Close        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Cancel       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Close_Cancel | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Close        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Cancel       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Close_Cancel | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Close        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Cancel       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | Close_Cancel | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Close        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Cancel       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12993: Minimize the conformation pop up in Employment Details for Self Employed Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 0
    And user fills employment details with "all" fields for self employed professional
    And saves the employment details
    And changes major occupation
    When user minimize the confirmation pop up of major occupation change in Employment Details
    Then confirmation pop up should be minimized
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12994: Maximize the minimized conformation pop up in Employment Details for Self Employed Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 0
    And user fills employment details with "all" fields for self employed professional
    And saves the employment details
    And changes major occupation
    When user maximize the minimized confirmation pop up in Employment Details
    Then confirmation pop up should be maximized
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
#    Expanded Mode
    #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12995: Required <Field> field validation for Self Employed Professional in Expanded Mode of Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 0
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user open Employment Details from selected application
    And user selects Occupation Type as "Self Employed Professional" in employment details
    When user click on Required to check required fields of occupation type
    Then "<Field>" field should be present for Self Employed Professional in Expanded Mode of Employment Details as required field
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field                | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Profession | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industry             | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Registration Number  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Work Experience      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | Field                | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry             | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
    @TestGrid
  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12996: <Field> field validation in All Fields for Self Employed Professional in Expanded Mode of Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Expanded Mode in applicant information
    And user opens employment detail accordion in expanded mode
    And user selects Occupation Type as "Self Employed Professional" in employment details
    When user click on All Fields to check all fields of occupation
    Then "<Field>" field should be present for Self Employed Professional occupation in Employment Details
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Profession       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type of Ownership         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address Checkbox | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field                     | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Add Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Profession      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industry                  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Sub-Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Year Of Incorporation     | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Profession       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Type of Ownership         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Start Date                | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | End Date                  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Remarks                   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Registration Number       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Work Experience           | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer Address Checkbox | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Profession       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type of Ownership         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address Checkbox | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | Field                     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Profession       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type of Ownership         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address Checkbox | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  @ImplementedBy-utkarsh.tiwari
  #FeatureID-ACAUTOCAS-158
    @Sanity
  Scenario Outline: ACAUTOCAS-12997: Save Employment Details for Self Employed Professional occupation in Expanded mode at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user deletes existing occupations
    And user selects Expanded Mode in applicant information
    And user opens employment detail accordion in expanded mode
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 0
    And user fills employment details with "mandatory" fields for self employed professional in Expanded Mode
    And saves the employment details
    Then Employment Details should be saved successfully in Expanded Mode
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
    @TestGrid
  #FeatureID-ACAUTOCAS-158
    @longRun
  Scenario Outline: ACAUTOCAS-12998: Field type validation of <Field> field in Expanded Mode of Employment Details for Self Employed Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Expanded Mode in applicant information
    And user opens employment detail accordion in expanded mode
    And user selects Occupation Type as "Self Employed Professional" in employment details
    Then field type of "<Field>" field should "<Field_Type>" field in Employment Details for Self Employed Professional
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                 | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type   | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name     | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession  | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry              | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry          | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Profession   | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type of Ownership     | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date            | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date              | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks               | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number   | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address      | checkbox       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field                 | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Add Occupation Type   | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name     | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Profession  | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industry              | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Sub-Industry          | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Year Of Incorporation | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Profession   | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Type of Ownership     | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Start Date            | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | End Date              | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Remarks               | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Registration Number   | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Work Experience       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer Address      | checkbox       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                 | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type   | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name     | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession  | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry              | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry          | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Profession   | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type of Ownership     | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date            | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date              | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks               | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number   | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address      | checkbox       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

      # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | Field                 | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type   | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name     | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession  | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry              | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry          | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Profession   | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type of Ownership     | drop down      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date            | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date              | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks               | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number   | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address      | checkbox       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
#22/04/2024
  #Bug:CAS-169117
    #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12999: Years in business validation in Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 0
    And user selects Occupation Type as "Self Employed Professional" in employment details
    When user fills Start along with End Date of employment details
    Then Work Experience should be auto filled successfully
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  @ImplementedBy-utkarsh.tiwari
#Bug:CAS-169117
    #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-13000: <Field> validation in Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 40
    And user selects Occupation Type as "Self Employed Professional" in employment details
    When user fills Start along with End Date of employment details
    And user fills Year of Incorporation for self employed professional in employment details
    Then Year in Profession should be auto filled successfully
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

   #FeatureID-ACAUTOCAS-158,CAS-143435
  @ImplementedBy-utkarsh.tiwari
    @FixedExp
  Scenario Outline: ACAUTOCAS-13848: <FieldName> validation in Self Employed Professional occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 33
    And user deletes existing occupations
    And user fill employment details with Occupation Type as "Self Employed Professional"
    And user edits occupation details under employment Details Tab for "Self Employed Professional"
    And user reads "<FieldName>" for Occupation Type as "Self Employed Professional" under employment Details Tab
    And  user clicks on "Save" button of employment details
    When user refresh the Employment Details Screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user edits occupation details under employment Details Tab for "Self Employed Professional"
    Then "<FieldName>" field should be intact for occupation type "Self Employed Professional" under Employment Details Tab
    @Release3
    @Conventional
    @Release @Part-1
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | FieldName             | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Profession   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type of Ownership     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | FieldName             | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Add Occupation Type   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name     | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Profession  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Sub-Industry          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Year Of Incorporation | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Profession   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Type of Ownership     | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Start Date            | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | End Date              | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Remarks               | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Registration Number   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Work Experience       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | FieldName             | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Profession   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type of Ownership     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | FieldName             | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Profession  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Profession   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Type of Ownership     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Registration Number   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Work Experience       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
