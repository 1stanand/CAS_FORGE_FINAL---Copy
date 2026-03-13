@Epic-Applicant_Information
@AuthoredBy-vipin.kishor
@ImplementedBy-utkarsh.tiwari
@AppInfoAdoption
@Perishable
@tempTest

  #${ApplicantType:["indiv","nonindiv"]}
Feature:Swap Applicants

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-146
  Scenario Outline: ACAUTOCAS-12763: Swap applicant without any changes in applicants swap at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user clicks on swap button to swap applicant
    When user clicks on swap confirmation button without any changes in applicants swap
    Then primary applicant is not swap with proper error message
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 168 |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor        | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

   @Sanity
  #FeatureID-ACAUTOCAS-146
  Scenario Outline: ACAUTOCAS-12764: Swap primary applicant into <AnotherApplicant> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user saves the customer detail in context
    When user swaps the primary applicant with "<AnotherApplicant>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    Then primary applicant should be swapped successfully
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 168 |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor        | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

  #FeatureID-ACAUTOCAS-146
  Scenario Outline: ACAUTOCAS-12765: Swapping applicants without any primary applicants at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
#    And user clicks on swap button to swap applicant
    When user swaps applicant into "<AnotherApplicant>" without changing primary applicant
    Then primary applicant is not swap with proper error message
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 168 |

    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor        | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

  #FeatureID-ACAUTOCAS-146
  @Sanity
  Scenario Outline: ACAUTOCAS-12766: <Field> validation after swapping applicants at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user saves the customer detail in context
    When user swaps the primary applicant with "<AnotherApplicant>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    Then "<Field>" field should be swapped between both applicants
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field                  | ApplicationStage   | ProductType   | AnotherApplicant | ApplicantType   | Category | key | row |
      | Customer Name          | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 24  |
      | Neo Cust ID            | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 24  |
      | Date of Birth          | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 24  |
      | phone number(Mobile)   | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 24  |
      | phone number(Landline) | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 24  |
      | Photo                  | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 24  |
      | Customer Name          | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 24  |
      | Neo Cust ID            | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 24  |
      | Date of Birth          | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 24  |
      | phone number(Mobile)   | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 24  |
      | phone number(Landline) | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 24  |
      | Photo                  | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field                  | ApplicationStage   | ProductType   | AnotherApplicant | ApplicantType   | Category | key | row |
      | Customer Name          | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 168 |
      | Neo Cust ID            | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 168 |
      | Date of Birth          | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 168 |
      | phone number(Mobile)   | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 168 |
      | phone number(Landline) | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 168 |
      | Photo                  | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 168 |
      | Customer Name          | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 168 |
      | Neo Cust ID            | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 168 |
      | Date of Birth          | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 168 |
      | phone number(Mobile)   | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 168 |
      | phone number(Landline) | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 168 |
      | Photo                  | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 168 |

    @Islamic
    @Release
    @Part-2
    @FixedJsClick2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | Field                  | ApplicationStage   | ProductType   | AnotherApplicant | ApplicantType   | Category   | key | row |
      | Customer Name          | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> | <Category> |     | 168 |
      | Neo Cust ID            | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> | <Category> |     | 168 |
      | Date of Birth          | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> | <Category> |     | 168 |
      | phone number(Mobile)   | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> | <Category> |     | 168 |
      | phone number(Landline) | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> | <Category> |     | 168 |
      | Photo                  | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> | <Category> |     | 168 |
      | Customer Name          | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | <Category> |     | 168 |
      | Neo Cust ID            | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | <Category> |     | 168 |
      | Date of Birth          | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | <Category> |     | 168 |
      | phone number(Mobile)   | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | <Category> |     | 168 |
      | phone number(Landline) | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | <Category> |     | 168 |
      | Photo                  | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | <Category> |     | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | Field                  | ApplicationStage   | ProductType   | AnotherApplicant | ApplicantType   | Category | key | row |
      | Customer Name          | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 24  |
      | Neo Cust ID            | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 24  |
      | Date of Birth          | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 24  |
      | phone number(Mobile)   | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 24  |
      | phone number(Landline) | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 24  |
      | Photo                  | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> |          |     | 24  |
      | Customer Name          | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 24  |
      | Neo Cust ID            | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 24  |
      | Date of Birth          | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 24  |
      | phone number(Mobile)   | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 24  |
      | phone number(Landline) | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 24  |
      | Photo                  | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> |          |     | 24  |

#StoryID:CAS-74877,75807,77284,77956,79155
    #FeatureID-ACAUTOCAS-146,CAS-74877,75807,77284,77956,79155
  Scenario Outline: ACAUTOCAS-12767: Relationship field should be hide if applicant type selected as primary applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user clicks on swap button to swap applicant
    Then Relationship field should be hidden
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 168 |

    @Islamic
    @Release
    @Part-2
    @FixedJsClick2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor        | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

#StoryID:CAS-74877,75807,77284,77956,79155
        #FeatureID-ACAUTOCAS-146,CAS-74877,75807,77284,77956,79155
  Scenario Outline: ACAUTOCAS-12768: <Field> field validation in information ribbon at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user saves the customer detail in context
    When user swaps the primary applicant with "<AnotherApplicant>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    Then "<Field>" field should be display as per current primary applicant which is swapped
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field             | ProductType   | ApplicationStage   | AnotherApplicant | ApplicantType   | Category | key | row |
      | Primary Applicant | <ProductType> | <ApplicationStage> | Co-applicant     | <ApplicantType> |          |     | 24  |
      | Neo Cust ID       | <ProductType> | <ApplicationStage> | Co-applicant     | <ApplicantType> |          |     | 24  |
      | Primary Applicant | <ProductType> | <ApplicationStage> | Guarantor        | <ApplicantType> |          |     | 24  |
      | Neo Cust ID       | <ProductType> | <ApplicationStage> | Guarantor        | <ApplicantType> |          |     | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | Field             | ProductType   | ApplicationStage   | AnotherApplicant | ApplicantType   | Category | key | row |
      | Primary Applicant | <ProductType> | <ApplicationStage> | Co-applicant     | <ApplicantType> |          |     | 168 |
      | Neo Cust ID       | <ProductType> | <ApplicationStage> | Co-applicant     | <ApplicantType> |          |     | 168 |
      | Primary Applicant | <ProductType> | <ApplicationStage> | Guarantor        | <ApplicantType> |          |     | 168 |
      | Neo Cust ID       | <ProductType> | <ApplicationStage> | Guarantor        | <ApplicantType> |          |     | 168 |

    @Islamic
    @Release
    @Part-2
    @FixedJsClick2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | Field             | ProductType   | ApplicationStage   | AnotherApplicant | ApplicantType   | Category   | key | row |
      | Primary Applicant | <ProductType> | <ApplicationStage> | Co-applicant     | <ApplicantType> | <Category> |     | 168 |
      | Neo Cust ID       | <ProductType> | <ApplicationStage> | Co-applicant     | <ApplicantType> | <Category> |     | 168 |
      | Primary Applicant | <ProductType> | <ApplicationStage> | Guarantor        | <ApplicantType> | <Category> |     | 168 |
      | Neo Cust ID       | <ProductType> | <ApplicationStage> | Guarantor        | <ApplicantType> | <Category> |     | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | Field             | ProductType   | ApplicationStage   | AnotherApplicant | ApplicantType   | Category | key | row |
      | Primary Applicant | <ProductType> | <ApplicationStage> | Co-applicant     | <ApplicantType> |          |     | 24  |
      | Neo Cust ID       | <ProductType> | <ApplicationStage> | Co-applicant     | <ApplicantType> |          |     | 24  |
      | Primary Applicant | <ProductType> | <ApplicationStage> | Guarantor        | <ApplicantType> |          |     | 24  |
      | Neo Cust ID       | <ProductType> | <ApplicationStage> | Guarantor        | <ApplicantType> |          |     | 24  |

  #FeatureID-ACAUTOCAS-146
  Scenario Outline: ACAUTOCAS-12769: All fields verification of swap applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user clicks on swap button to swap applicant
    When user clicks on "all" Fields to check all fields of Swap Applicant Page
    Then "<Fields>" fields should be present in Swap Applicant Page
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | Fields             | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | Guarantor        | Customer Name      | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Customer ID        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Applicant Type     | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Relationship       | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Reason Code        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Reason Description | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Remarks            | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Customer Name      | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Customer ID        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Applicant Type     | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Relationship       | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Reason Code        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Reason Description | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Remarks            | <ApplicantType> |          |     | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | Fields             | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | Guarantor        | Customer Name      | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Customer ID        | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Applicant Type     | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Relationship       | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Reason Code        | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Reason Description | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Remarks            | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Customer Name      | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Customer ID        | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Applicant Type     | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Relationship       | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Reason Code        | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Reason Description | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Remarks            | <ApplicantType> |          |     | 168 |

    @Islamic
    @Release
    @Part-2
    @FixedJsClick2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | Fields             | ApplicantType   | Category   | key | row |
      | <ApplicationStage> | <ProductType> | Guarantor        | Customer Name      | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Customer ID        | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Applicant Type     | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Relationship       | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Reason Code        | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Reason Description | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Remarks            | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Customer Name      | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Customer ID        | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Applicant Type     | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Relationship       | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Reason Code        | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Reason Description | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Remarks            | <ApplicantType> | <Category> |     | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | Fields             | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | Guarantor        | Customer Name      | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Customer ID        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Applicant Type     | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Relationship       | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Reason Code        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Reason Description | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Remarks            | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Customer Name      | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Customer ID        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Applicant Type     | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Relationship       | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Reason Code        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Reason Description | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Remarks            | <ApplicantType> |          |     | 24  |


  #FeatureID-ACAUTOCAS-146
  Scenario Outline: ACAUTOCAS-12770: Required fields verification of swap applicant <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user clicks on swap button to swap applicant
    When user clicks on "required" Fields to check all fields of Swap Applicant Page
    Then "<Fields>" fields should be present in Swap Applicant Page
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | Fields             | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | Guarantor        | Customer Name      | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Customer ID        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Applicant Type     | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Relationship       | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Reason Code        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Reason Description | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Customer Name      | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Customer ID        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Applicant Type     | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Relationship       | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Reason Code        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Reason Description | <ApplicantType> |          |     | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | Fields             | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | Guarantor        | Customer Name      | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Customer ID        | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Applicant Type     | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Relationship       | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Reason Code        | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Reason Description | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Customer Name      | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Customer ID        | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Applicant Type     | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Relationship       | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Reason Code        | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Reason Description | <ApplicantType> |          |     | 168 |

    @FixedJsClick2
    @Islamic
    @Release
    @Part-2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | Fields             | ApplicantType   | Category   | key | row |
      | <ApplicationStage> | <ProductType> | Guarantor        | Customer Name      | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Customer ID        | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Applicant Type     | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Relationship       | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Reason Code        | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | Reason Description | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Customer Name      | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Customer ID        | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Applicant Type     | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Relationship       | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Reason Code        | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Reason Description | <ApplicantType> | <Category> |     | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | Fields             | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | Guarantor        | Customer Name      | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Customer ID        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Applicant Type     | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Relationship       | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Reason Code        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | Reason Description | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Customer Name      | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Customer ID        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Applicant Type     | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Relationship       | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Reason Code        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | Reason Description | <ApplicantType> |          |     | 24  |

  #FeatureID-ACAUTOCAS-146
  Scenario Outline: ACAUTOCAS-12771: Minimize of swap applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user clicks on swap button to swap applicant
    When user minimize swap screen
    Then swap screen should be minimized
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 168 |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor        | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

  #FeatureID-ACAUTOCAS-146
  Scenario Outline: ACAUTOCAS-12772: Maximize the minimize swap screen at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user clicks on swap button to swap applicant
    When user minimize swap screen
    And user maximize the minimize swap screen
    Then swap screen should be maximized
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 168 |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor        | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

  #FeatureID-ACAUTOCAS-146
  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-12773: Close the swap screen with help of <Icon_Button> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user clicks on swap button to swap applicant
    When user close the swap screen with the help of "<Icon_Button>"
    Then swap screen should be closed
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | Icon_Button  | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | Guarantor        | close button | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | close button | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | close icon   | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | close icon   | <ApplicantType> |          |     | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | Icon_Button  | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | Guarantor        | close button | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | close button | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | close icon   | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | close icon   | <ApplicantType> |          |     | 168 |

    @Islamic
    @Release
    @Part-2
    @FixedJsClick2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | Icon_Button  | ApplicantType   | Category   | key | row |
      | <ApplicationStage> | <ProductType> | Guarantor        | close button | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | close button | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | close icon   | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Co-applicant     | close icon   | <ApplicantType> | <Category> |     | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | Icon_Button  | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | Guarantor        | close button | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | close button | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | close icon   | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Co-applicant     | close icon   | <ApplicantType> |          |     | 24  |

  #FeatureID-ACAUTOCAS-146
  Scenario Outline: ACAUTOCAS-12774: Swapping applicants without filling <Field> field <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user clicks on swap button to swap applicant
    When user fill all fields except "<Field>" to swap applicants
    Then primary applicant is not swap with proper error message
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Field        | AnotherApplicant | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | relationship | Co-applicant     | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | reason       | Co-applicant     | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | relationship | Guarantor        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | reason       | Guarantor        | <ApplicantType> |          |     | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Field        | AnotherApplicant | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | relationship | Co-applicant     | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | reason       | Co-applicant     | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | relationship | Guarantor        | <ApplicantType> |          |     | 168 |
      | <ApplicationStage> | <ProductType> | reason       | Guarantor        | <ApplicantType> |          |     | 168 |

    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | Field        | AnotherApplicant | ApplicantType   | Category   | key | row |
      | <ApplicationStage> | <ProductType> | relationship | Co-applicant     | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | reason       | Co-applicant     | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | relationship | Guarantor        | <ApplicantType> | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | reason       | Guarantor        | <ApplicantType> | <Category> |     | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | Field        | AnotherApplicant | ApplicantType   | Category | key | row |
      | <ApplicationStage> | <ProductType> | relationship | Co-applicant     | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | reason       | Co-applicant     | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | relationship | Guarantor        | <ApplicantType> |          |     | 24  |
      | <ApplicationStage> | <ProductType> | reason       | Guarantor        | <ApplicantType> |          |     | 24  |

   #StoryID:CAS-74877,75807,77284,77956,79155
    #FeatureID-ACAUTOCAS-146,CAS-74877,75807,77284,77956,79155
  Scenario Outline: ACAUTOCAS-12775: Search application from applicant grid after swapping applicants at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user saves the customer detail in context
    When user swaps the primary applicant with "<AnotherApplicant>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user clicks on applicant information tab
    Then "Customer Name" field should be swapped between both applicants
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 168 |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor        | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

#StoryID:CAS-74877,75807,77284,77956,79155
       #FeatureID-ACAUTOCAS-146,CAS-74877,75807,77284,77956,79155
  @Sanity
  Scenario Outline: ACAUTOCAS-12776: Swap individual primary applicant with non individual applicant at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home_non_individual" and row 0
    And user adds non individual applicant with applicant type as "<AnotherApplicant>"
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user saves the customer detail in context
    When user swaps the primary applicant with "<AnotherApplicant>" for non individual applicant
    And user navigates to applicant details page of "<ApplicationStage>"
    Then individual primary applicant should be swapped with non individual applicant
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        |

#StoryID:CAS-74877,75807,77284,77956,79155
    #FeatureID-ACAUTOCAS-146,CAS-74877,75807,77284,77956,79155
  Scenario Outline: ACAUTOCAS-12777: Applicant information page validation After Swapping non individual applicant <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home_non_individual" and row 0
    And user adds non individual applicant with applicant type as "<AnotherApplicant>"
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user saves the customer detail in context
    When user swaps the primary applicant with "<AnotherApplicant>" for non individual applicant
    And user navigates to applicant details page of "<ApplicationStage>"
    Then New Primary Applicant come on first index after swapping
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        |

#StoryID:CAS-74877,75807,77284,77956,79155
  #FeatureID-ACAUTOCAS-146,CAS-74877,75807,77284,77956,79155
  Scenario Outline: ACAUTOCAS-12778: Add multiple swapping reasons to swap applicants at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user saves the customer detail in context
    When user swaps the primary applicant with "<AnotherApplicant>" with multiple reasons
    Then multiple reason should be added
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 168 |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor        | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

    #StoryID:CAS-74877,75807,77284,77956,79155
  #FeatureID-ACAUTOCAS-146,CAS-74877,75807,77284,77956,79155
  Scenario Outline: ACAUTOCAS-12779: Add swapping reasons with duplicate reason code at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user saves the customer detail in context
    When user swaps the primary applicant with "<AnotherApplicant>" with multiple reasons
    And user clicks on confirm button of Swap Applicant Page
    Then swapping reason should not be added due to duplicate reason code
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 168 |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor        | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |


  #FeatureID-ACAUTOCAS-146
  Scenario Outline: ACAUTOCAS-12780: Delete the added swapping applicant reason field at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user saves the customer detail in context
    When user swaps the primary applicant with "<AnotherApplicant>" with multiple reasons
    When user deletes added swapping reasons
    Then added swapping reasons should be deleted
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 168 |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor        | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |


      #FeatureID-ACAUTOCAS-146,CAS-74877,75807,77284,77956,79155
  @FixedTest28
    @Sanity
  Scenario Outline: ACAUTOCAS-12781: Swapped data validation between two applicants at "<ApplicationStage>" in "<ProductType>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 265
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user adds "<AnotherApplicant>" applicant
    And user reads data from the excel file "personal_information_end_flow.xlsx" under sheet "home" and row 0
    And user enters personal information details
    And user clicks on proceed
    And user fills identification details on personal information
      | personal_information_end_flow.xlsx | identification_details | 7 |
    And user enters address details on personal information
      | personal_information_end_flow.xlsx | address_details | 0 |
    And user checks for duplicates
    And user saves the applicant information details
    And user clicks on save and next
    And user navigates to Employment Details tab
    And user reads data from the excel file "employment_details.xlsx" under sheet "home" and row 69
    And user enters employment details for "Others" type on personal information
    And user navigates to Financial Details tab
    And user reads data from the excel file "financial_details_end_flow.xlsx" under sheet "income_details" and row 0
    And user enters income details on Financial Details Screen
    And user reads data from the excel file "financial_details_end_flow.xlsx" under sheet "expense_details" and row 1
    And user enters expense details on Financial Details Screen
    And user reads data from the excel file "financial_details_end_flow.xlsx" under sheet "asset_details" and row 0
    And user enters asset details on Financial Details Screen
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user clicks on applicant information tab
#    And user clicks on swap button to swap applicant
    When user swapped primary applicant with "<AnotherApplicant>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user navigates to applicant details page of "<ApplicationStage>"
    And click on view edit detailed info
    And user navigates to accordian of "<Tabs>"
    Then captured data in "<Tabs>" of "<AnotherApplicant>" should be swapped with primary applicant
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | Tabs                 | ApplicantType   | Category | key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | Co-applicant     | personal information | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 268                         |
      | <ApplicationStage> | <ProductType> | Guarantor        | personal information | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 264                         |
      | <ApplicationStage> | <ProductType> | Co-applicant     | employment details   | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 268                         |
      | <ApplicationStage> | <ProductType> | Guarantor        | employment details   | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 264                         |
      | <ApplicationStage> | <ProductType> | Co-applicant     | financial details    | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 268                         |
      | <ApplicationStage> | <ProductType> | Guarantor        | financial details    | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 264                         |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | Tabs                 | ApplicantType   | Category | key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | Co-applicant     | personal information | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 268                         |
      | <ApplicationStage> | <ProductType> | Guarantor        | personal information | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 264                         |
      | <ApplicationStage> | <ProductType> | Co-applicant     | employment details   | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 268                         |
      | <ApplicationStage> | <ProductType> | Guarantor        | employment details   | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 264                         |
      | <ApplicationStage> | <ProductType> | Co-applicant     | financial details    | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 268                         |
      | <ApplicationStage> | <ProductType> | Guarantor        | financial details    | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 264                         |
    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | Tabs                 | ApplicantType   | Category   | key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | Co-applicant     | personal information | <ApplicantType> | <Category> |     | sourcing_details.xlsx | home                 | 268                         |
      | <ApplicationStage> | <ProductType> | Guarantor        | personal information | <ApplicantType> | <Category> |     | sourcing_details.xlsx | home                 | 264                         |
      | <ApplicationStage> | <ProductType> | Co-applicant     | employment details   | <ApplicantType> | <Category> |     | sourcing_details.xlsx | home                 | 268                         |
      | <ApplicationStage> | <ProductType> | Guarantor        | employment details   | <ApplicantType> | <Category> |     | sourcing_details.xlsx | home                 | 264                         |
      | <ApplicationStage> | <ProductType> | Co-applicant     | financial details    | <ApplicantType> | <Category> |     | sourcing_details.xlsx | home                 | 268                         |
      | <ApplicationStage> | <ProductType> | Guarantor        | financial details    | <ApplicantType> | <Category> |     | sourcing_details.xlsx | home                 | 264                         |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | Tabs                 | ApplicantType   | Category | key | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | Co-applicant     | personal information | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 268                         |
      | <ApplicationStage> | <ProductType> | Guarantor        | personal information | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 264                         |
      | <ApplicationStage> | <ProductType> | Co-applicant     | employment details   | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 268                         |
      | <ApplicationStage> | <ProductType> | Guarantor        | employment details   | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 264                         |
      | <ApplicationStage> | <ProductType> | Co-applicant     | financial details    | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 268                         |
      | <ApplicationStage> | <ProductType> | Guarantor        | financial details    | <ApplicantType> |          |     | sourcing_details.xlsx | home                 | 264                         |

#StoryID:CAS-74877,75807,77284,77956,79155
        #FeatureID-ACAUTOCAS-146,CAS-74877,75807,77284,77956,79155
  Scenario Outline: ACAUTOCAS-12782: Swap history validation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user saves the customer detail in context
    And user swaps the primary applicant with "<AnotherApplicant>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    When user open swap history to check
    Then "<Fields>" field should be present with correct data
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | ApplicantType   | Fields           | Category | key | row |
      | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> | Operation        |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Primary Customer |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Reason           |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Remark           |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Changed By       |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Date and Time    |          |     | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | ApplicantType   | Fields        | Category | key | row |
      | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> | Operation     |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Customer      |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Reason        |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Remark        |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Changed By    |          |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Date and Time |          |     | 168 |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | ApplicantType   | Fields        | Category   | key | row |
      | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> | Operation     | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Customer      | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Reason        | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Remark        | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Changed By    | <Category> |     | 168 |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Date and Time | <Category> |     | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ApplicationStage   | ProductType   | AnotherApplicant | ApplicantType   | Fields           | Category | key | row |
      | <ApplicationStage> | <ProductType> | Co-applicant     | <ApplicantType> | Operation        |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Primary Customer |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Reason           |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Remark           |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Changed By       |          |     | 24  |
      | <ApplicationStage> | <ProductType> | Guarantor        | <ApplicantType> | Date and Time    |          |     | 24  |

    #StoryID:CAS-74877,75807,77284,77956,79155
     #FeatureID-ACAUTOCAS-146,CAS-74877,75807,77284,77956,79155
  Scenario Outline: ACAUTOCAS-12783: Operation validation in swap history at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user saves the customer detail in context
    And user swaps the primary applicant with "<AnotherApplicant>"
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
#    When user open swap history to check
    Then operation should be Swap in swap history
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 168 |

    @FixedJsClick
    @Islamic
    @Release
    @Part-2
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor        | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |


#StoryID:CAS-74877,75807,77284,77956,79155
    #FeatureID-ACAUTOCAS-146,CAS-74877,75807,77284,77956,79155
  Scenario Outline: ACAUTOCAS-12784: Swap button validation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    When user clicks on applicant information tab
    Then swap button should be present after adding more than one applicant
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 168 |

    @Islamic
    @Release
    @Part-2
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor        | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

#StoryID:CAS-74877,75807,77284,77956,79155
       #FeatureID-ACAUTOCAS-146,CAS-74877,75807,77284,77956,79155
  Scenario Outline: ACAUTOCAS-12785: Swap Remove history button validation at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    Then Swap Remove history button should be present at bottom of applicant information
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 168 |

    @Islamic
    @Release
    @Part-2
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor        | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

    #FeatureID-ACAUTOCAS-146,CAS-74877,75807,77284,77956,79155
  Scenario Outline: ACAUTOCAS-12786: Making two primary applicant while swapping applicants at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row <row>
    And user adds another individual applicant with applicant type as "<AnotherApplicant>" with deletion other applicant
    And user saves application number
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
#    And user clicks on swap button to swap applicant
    When user swaps applicant without changing another applicant
    Then primary applicant is not swap with proper error message
    @Conventional
    @Release @Part-2
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |

    @Islamic
    @Release
    @Part-2
    #${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 168 |

    @Islamic
    @Release
    @Part-2
    @FixedJsClick
    #${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval"]}
    # ${Category:["bonds"]}
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category   | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Co-applicant     | 168 |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | <Category> |     | Guarantor        | 168 |

    # ${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval"]}
    @Deferred
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | key | AnotherApplicant | row |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Co-applicant     | 24  |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     | Guarantor        | 24  |
