@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@Reconciled
@AppInfoAdoption
    # ${ApplicantType:["indiv"]}
Feature:Employment Details for Self Employed Non Professional

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#  CAS-110829
#  Below configuration should be configured in the system for Reconsideration stage
#1) Authority added for update details checkbox is 'UPDATE_DETAILS_CHECKBOX_AUTH'.
#2) Two new configuration columns are added in entity 'CAS_PROD_TYPE_CONFIG' namely 'IS_NEW_CUST_ALLOWED_RECON' and 'IS_EXIST_CUST_ALLOWED_RECON'.

  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12955: Required <Field> field validation for Self Employed Non Professional in Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Occupation Type as "Self Employed Non Professional" in employment details
    When user click on Required to check required fields of occupation type
    Then "<Field>" field should be present for Self Employed Non Professional in Employment Details as required field
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field               | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Add Occupation Type | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Business  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industry            | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Business   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field               | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Business  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field               | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Business  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field               | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Business  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12956: <Field> field validation in All Fields for Self Employed Non Professional in Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Occupation Type as "Self Employed Non Professional" in employment details
    When user click on All Fields to check all fields of occupation
    Then "<Field>" field should be present for SENP occupation in Employment Details
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field                     | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Add Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Company Type              | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Business        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industry                  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Sub-Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Year Of Incorporation     | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Length of Business        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Start Date                | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | End Date                  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Remarks                   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Business         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer Address Checkbox | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Company Type              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Business        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Length of Business        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address Checkbox | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Company Type              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Business        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Length of Business        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address Checkbox | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | Field                     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Company Type              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Business        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Length of Business        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address Checkbox | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-158
  @Sanity
  Scenario Outline: ACAUTOCAS-12957: <Save_Next> Employment Details for Self Employed Non Professional occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <row>
    When user fills employment details without save and next for "Self Employed Non Professional"
    And user clicks on "<Save_Next>" button of employment details
    Then Employment Details should be "<Save_Next>"
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category   | key | row |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> | <Category> |     | 139 |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> | <Category> |     | 139 |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     | 55  |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     | 55  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     | 139 |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     | 139 |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Save_Next   | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | Save        | <ApplicantType> |          |     | 55  |
      | <ApplicationStage> | <ProductType> | Save & Next | <ApplicantType> |          |     | 55  |

#FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12958: Field type validation of <Field> field in Employment Details for Self Employed Non Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user open Employment Details
    And user selects Occupation Type as "Self Employed Non Professional" in employment details
    When user click on All Fields to check all fields of Occupation Type
    Then field type of "<Field>" field should "<Field_Type>" field in Employment Details for occupation type
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field                       | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Add Occupation Type(Select) | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Company Type(SENP)          | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Business(SENP)    | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industry(SENP)              | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Sub-Industry(SENP)          | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Year Of Incorporation       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Length of Business          | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Start Date                  | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | End Date                    | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Remarks                     | textarea       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Business           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer Address(SENP)      | checkbox       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                       | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type(Select) | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Company Type(SENP)          | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Business(SENP)    | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry(SENP)              | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry(SENP)          | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Length of Business          | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date                  | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date                    | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks                     | textarea       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address(SENP)      | checkbox       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                       | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type(Select) | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Company Type(SENP)          | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Business(SENP)    | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry(SENP)              | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry(SENP)          | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Length of Business          | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date                  | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date                    | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks                     | textarea       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address(SENP)      | checkbox       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field                       | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type(Select) | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Company Type(SENP)          | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Business(SENP)    | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry(SENP)              | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry(SENP)          | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Length of Business          | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date                  | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date                    | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks                     | textarea       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address(SENP)      | checkbox       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

 #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12959: Warning pop up validation while cancelling the Employment Details filling process for Self Employed Non Professional occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Occupation Type as "Self Employed Non Professional" in employment details
    When user clicks on Cancel button in employment details
    Then warning pop up should be populated with a message in employment details
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

       #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12960: Cancel the Employment Details filling process for Self Employed Non Professional occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Occupation Type as "Self Employed Non Professional" in employment details
    When user clicks on Cancel button in employment details
    And user clicks on "<Button>" of warning pop up
    Then filled data should be "<Clear_Remains>" in employment details
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | Button | Clear_Remains  | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | Close  | remains intact | <ApplicantType> | <Category> |     |
      | <ApplicationStage> | <ProductType> | Ok     | Clear          | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Button | Clear_Remains  | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | Close  | remains intact | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Ok     | Clear          | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | Button | Clear_Remains  | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | Close  | remains intact | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Ok     | Clear          | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Button | Clear_Remains  | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | Close  | remains intact | <ApplicantType> |          |     |
      | <ApplicationStage> | <ProductType> | Ok     | Clear          | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12961: Close the warning pop up with help of <Button_Icon> in Employment Details for Self Employed Non Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Occupation Type as "Self Employed Non Professional" in employment details
    When user clicks on Cancel button in employment details
    And user close the warning pop up with help of "<Button_Icon>" in Employment Details
    Then warning pop up should be closed in employment details
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Button_Icon  | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | close icon   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | close button | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Button_Icon  | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | close icon   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | close button | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Button_Icon  | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | close icon   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | close button | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Button_Icon  | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | close icon   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | close button | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12962: Minimize the warning pop up in Employment Details for Self Employed Non Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Occupation Type as "Self Employed Non Professional" in employment details
    When user clicks on Cancel button in employment details
    And user minimize the warning pop up in Employment Details
    Then warning pop up should be minimized in employment details
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12963: Maximize the minimized warning pop up in Employment Details for Self Employed Non Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Occupation Type as "Self Employed Non Professional" in employment details
    When user clicks on Cancel button in employment details
    And user maximize the minimized warning pop up in Employment Details
    Then warning pop up should be maximized in employment details
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-158
  @longRun
  Scenario Outline: ACAUTOCAS-12964: Validate Employment Details grid <Columns> column in Employment Details for Self Employed Non Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row <row>
    When user fills employment details without save and next for "Self Employed Non Professional"
    Then Employment Details should be display with "<Columns>" Employment Details grid
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Columns                   | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | row |
      | ID                        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | 139 |
      | Major Employer?           | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | 139 |
      | Occupation Type           | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | 139 |
      | Employer/Organization     | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | 139 |
      | Industries                | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | 139 |
      | Is this Major Occupation? | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | 139 |
      | Actions                   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | 139 |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Columns                   | ApplicationStage   | ProductType   | ApplicantType   | Category | key | row |
      | ID                        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 55  |
      | Major Employer?           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 55  |
      | Occupation Type           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 55  |
      | Employer/Organization     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 55  |
      | Industries                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 55  |
      | Is this Major Occupation? | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 55  |
      | Actions                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 55  |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Columns                   | ApplicationStage   | ProductType   | ApplicantType   | Category | key | row |
      | ID                        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 139 |
      | Major Employer?           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 139 |
      | Occupation Type           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 139 |
      | Employer/Organization     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 139 |
      | Industries                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 139 |
      | Is this Major Occupation? | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 139 |
      | Actions                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 139 |

    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Columns                   | ApplicationStage   | ProductType   | ApplicantType   | Category | key | row |
      | ID                        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 55  |
      | Major Employer?           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 55  |
      | Occupation Type           | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 55  |
      | Employer/Organization     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 55  |
      | Industries                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 55  |
      | Is this Major Occupation? | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 55  |
      | Actions                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | 55  |

      #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12965: Validate Employment Details grid <Columns> column data in Employment Details for Self Employed Non Professional occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user deletes existing occupations
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    When fills Employment Details for Self Employed Non Professional
    And saves the employment details
    Then Employment Details grid should be displayed with filled "<Columns>"
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Columns               | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | key |
      | Occupation Type       | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> | <Category> |     |
      | Employer/Organization | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> | <Category> |     |
      | Industries            | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Columns               | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | Occupation Type       | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |
      | Employer/Organization | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |
      | Industries            | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Columns               | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | Occupation Type       | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> |          |     |
      | Employer/Organization | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> |          |     |
      | Industries            | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Columns               | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | Occupation Type       | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |
      | Employer/Organization | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |
      | Industries            | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |


  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12966: Occupation Id generation on adding occupation details in Employment Details grid for Self Employed Non Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user deletes existing occupations
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    When fills Employment Details for Self Employed Non Professional
    And saves the employment details
    Then Occupation Id should get generated in employment details
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 161                           | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 161                           | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12967: Conformation pop up validation while changing the Major Occupation in Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And fills Employment Details for Self Employed Non Professional
    And saves the employment details
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
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-158
  @FixedExp
  Scenario Outline: ACAUTOCAS-12968: Change the Major Occupation in Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details without save and next for "Self Employed Non Professional"
    When user changes major occupation to "Self Employed Non Professional"
    Then Major Occupation changes
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12969: <Close_Cancel> the conformation pop up in Employment Details for Self Employed Non Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And fills Employment Details for Self Employed Non Professional
    And saves the employment details
    And changes major occupation
    When user close the Confirmation pop up of major occupation change with help of "<Close_Cancel>" in Employment Details
    Then confirmation pop up should be closed
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Close_Cancel | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | key |
      | Close        | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> | <Category> |     |
      | Cancel       | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Close_Cancel | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | Close        | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |
      | Cancel       | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Close_Cancel | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | Close        | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> |          |     |
      | Cancel       | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Close_Cancel | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | Close        | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |
      | Cancel       | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12970: Minimize the conformation pop up in Employment Details for Self Employed Non Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row 69
    And user fill employment details with Occupation Type as "Others"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And fills Employment Details for Self Employed Non Professional
    And saves the employment details
    And changes major occupation
    When user minimize the confirmation pop up of major occupation change in Employment Details
    Then confirmation pop up should be minimized
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-158
  @FixedExp
    @Perishable
  Scenario Outline: ACAUTOCAS-12971: Maximize the minimized conformation pop up in Employment Details for Self Employed Non Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details without save and next for "Self Employed Non Professional"
    And user changes major occupation to "Self Employed Non Professional"
    And user fills employment details without save and next for "Self Employed Professional"
    And user changes major occupation to "Self Employed Professional"
    And user changes major occupation without done to "Self Employed Non Professional"
    When user maximize the minimized confirmation pop up in Employment Details
    Then confirmation pop up should be maximized
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 139                           | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | employment_details.xlsx | home                   | 53                            | <ApplicantType> |          |     |

    #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12972: Required <Field> field validation for Self Employed Non Professional in Expanded Mode of Employment Details at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Expanded Mode in applicant information
    And user opens employment detail accordion in expanded mode
    And user selects Occupation Type as "Self Employed Non Professional" in employment details
    When user click on Required to check required fields of occupation type
    Then "<Field>" field should be present for Self Employed Non Professional in Employment Details as required field
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field               | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Add Occupation Type | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Business  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industry            | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Business   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field               | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Business  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field               | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Business  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field               | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Business  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12973: <Field> field validation in All Fields for Self Employed Non Professional in Expanded Mode of Employment Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Expanded Mode in applicant information
    And user opens employment detail accordion in expanded mode
    And user selects Occupation Type as "Self Employed Non Professional" in employment details
    When user click on All Fields to check all fields of occupation
    Then "<Field>" field should be present for SENP occupation in Employment Details
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field                     | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Add Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Company Type              | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Business        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industry                  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Sub-Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Year Of Incorporation     | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Length of Business        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Start Date                | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | End Date                  | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Remarks                   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Business         | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer Address Checkbox | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Company Type              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Business        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Length of Business        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address Checkbox | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Company Type              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Business        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Length of Business        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address Checkbox | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field                     | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Add Occupation Type       | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Organization Name         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Company Type              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Nature of Business        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Industry                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Sub-Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Year Of Incorporation     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Length of Business        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Start Date                | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | End Date                  | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Remarks                   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business         | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Employer Address Checkbox | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    #FeatureID-ACAUTOCAS-158
  @Sanity
  Scenario Outline: ACAUTOCAS-12974: Save Employment Details for Self Employed Non Professional occupation in Expanded mode at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Occupation Type as "Self Employed Non Professional" in employment details
    When user clicks on "Save" button in employment details
    Then Employment Details should be saved successfully
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

  #FeatureID-ACAUTOCAS-158
  Scenario Outline: ACAUTOCAS-12975: Field type validation of <Field> field in Expanded Mode of Employment Details for Self Employed Non Professional at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user selects Expanded Mode in applicant information
    And user opens employment detail accordion in expanded mode
    When user selects Occupation Type as "Self Employed Non Professional" in employment details
    Then field type of "<Field>" field should "<Field_Type>" field in Employment Details for occupation type
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field                       | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Add Occupation Type(Select) | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Company Type(SENP)          | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Business(SENP)    | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industry(SENP)              | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Sub-Industry(SENP)          | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Year Of Incorporation       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Length of Business          | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Start Date                  | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | End Date                    | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Remarks                     | textarea       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Business           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer Address(SENP)      | checkbox       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                       | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Add Occupation Type(Select) | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Company Type(SENP)          | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Business(SENP)    | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industry(SENP)              | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Sub-Industry(SENP)          | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Year Of Incorporation       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Length of Business          | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Start Date                  | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | End Date                    | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Remarks                     | textarea       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Business           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer Address(SENP)      | checkbox       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field                       | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Add Occupation Type(Select) | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Company Type(SENP)          | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Business(SENP)    | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industry(SENP)              | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Sub-Industry(SENP)          | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Year Of Incorporation       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Length of Business          | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Start Date                  | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | End Date                    | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Remarks                     | textarea       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Business           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer Address(SENP)      | checkbox       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field                       | Field_Type     | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Add Occupation Type(Select) | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Organization Name           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Company Type(SENP)          | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Nature of Business(SENP)    | dropdown       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Industry(SENP)              | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Sub-Industry(SENP)          | list of values | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Year Of Incorporation       | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Length of Business          | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Start Date                  | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | End Date                    | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Remarks                     | textarea       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Business           | input          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Employer Address(SENP)      | checkbox       | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

  #Bug:CAS-169117
    #FeatureID-ACAUTOCAS-158,CAS-169117
  Scenario Outline: ACAUTOCAS-12976: Years in business validation in Employment Details at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 55
    And user selects Occupation Type as "Self Employed Non Professional" in employment details
    When user fills Start and End Date of employment details for self employed non professional
    Then Years in business should be auto filled successfully for self employed non professional
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

#Bug:CAS-169117
    #FeatureID-ACAUTOCAS-158,CAS-169117
  Scenario Outline: ACAUTOCAS-12977: <Field> validation in Employment Details at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 55
    And user selects Occupation Type as "Self Employed Non Professional" in employment details
    When user fills Start along with End Date of self employed non professional employment details
    And user fills year of incorporation
    Then "<Field>" should show "<Expected_Behaviour>" for self employed non professional
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | Field              | Expected_Behaviour | ApplicationStage   | ProductType   | ApplicantType   | Category   | key |
      | Length of Business | auto filled        | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |
      | Years in Business  | updated            | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field              | Expected_Behaviour | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Length of Business | auto filled        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business  | updated            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | Field              | Expected_Behaviour | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Length of Business | auto filled        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business  | updated            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field              | Expected_Behaviour | ApplicationStage   | ProductType   | ApplicantType   | Category | key |
      | Length of Business | auto filled        | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |
      | Years in Business  | updated            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |




#  Bug:CAS-143435
#  CAS-143435
   #FeatureID-ACAUTOCAS-158,CAS-143435
  @FixedExp
  @Perishable
  Scenario Outline: ACAUTOCAS-13847: <FieldName> validation in Self Employed Non Professional occupation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user reads data from the excel file "<EmploymentDetailsWB>" under sheet "<EmploymentDetails_home>" and row <EmploymentDetails_home_rowNum>
    And user fills employment details with "all" fields for self employed non professional
    And user click on done button on employment details
    And user edits occupation details under employment Details Tab for "Self Employed Non Professional"
    And user reads "<FieldName>" for Occupation Type as "Self Employed Non Professional" under employment Details Tab
    And  user clicks on "Save" button of employment details
    When user refresh the Employment Details Screen
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    And user open Employment Details page on the basis of "<ApplicationStage>"
    And user edits occupation details under employment Details Tab for "Self Employed Non Professional"
    Then "<FieldName>" field should be intact for occupation type "Self Employed Non Professional" under Employment Details Tab
    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${Category:["bonds"]}
    Examples:
      | FieldName             | ApplicationStage   | ProductType   | ApplicantType   | Category   | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Add Occupation Type   | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 139                           |
      | Organization Name     | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 139                           |
      | Company Type          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 139                           |
      | Nature of Business    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 139                           |
      | Sub-Industry          | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 139                           |
      | Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 139                           |
      | Year Of Incorporation | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 139                           |
      | Length of Business    | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 139                           |
      | Start Date            | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 139                           |
      | End Date              | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 139                           |
      | Remarks               | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 139                           |
      | Years in Business     | <ApplicationStage> | <ProductType> | <ApplicantType> | <Category> |     | employment_details.xlsx | home                   | 139                           |

    @Release3
    @Conventional
    @Release @Part-1
    @ImplementedBy-kanika.mahal
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | FieldName             | ApplicationStage   | ProductType   | ApplicantType   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Add Occupation Type   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Organization Name     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Company Type          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Nature of Business    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Sub-Industry          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Year Of Incorporation | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Length of Business    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Start Date            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | End Date              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Remarks               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Years in Business     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |

    @Islamic
    @Release
    @Part-1
    @ImplementedBy-utkarsh.tiwari
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    Examples:
      | FieldName             | ApplicationStage   | ProductType   | ApplicantType   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Add Occupation Type   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 139                           |
      | Organization Name     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 139                           |
      | Company Type          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 139                           |
      | Nature of Business    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 139                           |
      | Sub-Industry          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 139                           |
      | Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 139                           |
      | Year Of Incorporation | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 139                           |
      | Length of Business    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 139                           |
      | Start Date            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 139                           |
      | End Date              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 139                           |
      | Remarks               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 139                           |
      | Years in Business     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 139                           |
    @NotImplemented
     # ${ProductType:["FAS","GL","JLG","SHG"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    Examples:
      | FieldName             | ApplicationStage   | ProductType   | ApplicantType   | Category | key | EmploymentDetailsWB     | EmploymentDetails_home | EmploymentDetails_home_rowNum |
      | Add Occupation Type   | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Organization Name     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Company Type          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Nature of Business    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Sub-Industry          | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Industry              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Year Of Incorporation | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Length of Business    | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Start Date            | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | End Date              | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Remarks               | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |
      | Years in Business     | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | employment_details.xlsx | home                   | 53                            |