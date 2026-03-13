@Epic-Applicant_Information
@ReviewedBy-pushp.bhandari
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Reconciled
#FeatureID-ACAUTOCAS-142,ACAUTOCAS-143
# ${ApplicantType:["nonindiv"]}
Feature:Add Another Existing Non Individual Applicant

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7


  Scenario Outline: ACAUTOCAS-871: Add another existing non individual applicant in new application with applicant type as <Add_ApplicantType> in <Loan_Type>
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user creates new application for "<ProductType>"
    And user fills home page of personal information
    And user saves application number
    And user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user picks and set application of "<Context_ProductType>" product type as "<ApplicantType>" applicant at "<Context_ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    When user adds another existing non individual applicant with applicant type as "<Add_ApplicantType>" and application id at "<ApplicationStage>"
    Then additional existing non individual applicant with applicant type as "<Add_ApplicantType>" should be displayed in applicant information page

      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    # ${ Context_ProductType : ["PF"]}
    #${Context_ApplicationStage:["Lead Details"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | Add_ApplicantType | ProductType   | ApplicationStage   | PersonalInfoWB            | Context_ProductType   | Context_ApplicationStage   | ApplicantType   | Category | key | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant      | <ProductType> | <ApplicationStage> | personal_information.xlsx | <Context_ProductType> | <Context_ApplicationStage> | <ApplicantType> |          |     | home              | 0                        |
      | Guarantor         | <ProductType> | <ApplicationStage> | personal_information.xlsx | <Context_ProductType> | <Context_ApplicationStage> | <ApplicantType> |          |     | home              | 0                        |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    # ${ Context_ProductType : ["IAF"]}
    #${Context_ApplicationStage:["Sourcing"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Add_ApplicantType | ProductType   | ApplicationStage   | PersonalInfoWB            | Context_ProductType   | Context_ApplicationStage   | ApplicantType   | Category | key | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant      | <ProductType> | <ApplicationStage> | personal_information.xlsx | <Context_ProductType> | <Context_ApplicationStage> | <ApplicantType> |          |     | home              | 0                        |
      | Guarantor         | <ProductType> | <ApplicationStage> | personal_information.xlsx | <Context_ProductType> | <Context_ApplicationStage> | <ApplicantType> |          |     | home              | 0                        |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
     # ${ Context_ProductType : ["IPF"]}
    #${Context_ApplicationStage:["Sourcing"]}
   # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Add_ApplicantType | ProductType   | ApplicationStage   | PersonalInfoWB            | Context_ProductType   | Context_ApplicationStage   | ApplicantType   | Category   | key | PersonalInfo_home | PersonalInfo_home_rowNum |
      | Co-applicant      | <ProductType> | <ApplicationStage> | personal_information.xlsx | <Context_ProductType> | <Context_ApplicationStage> | <ApplicantType> | <Category> |     | home              | 0                        |
      | Guarantor         | <ProductType> | <ApplicationStage> | personal_information.xlsx | <Context_ProductType> | <Context_ApplicationStage> | <ApplicantType> | <Category> |     | home              | 0                        |


  Scenario Outline: ACAUTOCAS-872: Add another existing non individual applicant in existing application which is at <ApplicationStage> stage with applicant type as <ApplicantType>
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user picks and set application of "<Context_ProductType>" product type as "<ApplicantType>" applicant at "<Context_ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    And user adds another existing non individual applicant with applicant type as "<Add_ApplicantType>" and application id
    Then additional existing non individual applicant with applicant type as "<Add_ApplicantType>" should be displayed in applicant information page
      # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    # ${ Context_ProductType : ["PF"]}
    #${Context_ApplicationStage:["Lead Details"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ApplicationStage   | Add_ApplicantType | Context_ProductType   | ApplicantType   | Context_ApplicationStage   | Category | key |
      | <ApplicationStage> | Co-applicant      | <Context_ProductType> | <ApplicantType> | <Context_ApplicationStage> |          |     |
      | <ApplicationStage> | Guarantor         | <Context_ProductType> | <ApplicantType> | <Context_ApplicationStage> |          |     |


      #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    # ${ Context_ProductType : ["IAF"]}
    #${Context_ApplicationStage:["Sourcing"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | Add_ApplicantType | Context_ProductType   | ApplicantType   | Context_ApplicationStage   | Category | key |
      | <ApplicationStage> | Co-applicant      | <Context_ProductType> | <ApplicantType> | <Context_ApplicationStage> |          |     |
      | <ApplicationStage> | Guarantor         | <Context_ProductType> | <ApplicantType> | <Context_ApplicationStage> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
     # ${ Context_ProductType : ["IPF"]}
    #${Context_ApplicationStage:["Sourcing"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | Add_ApplicantType | Context_ProductType   | ApplicantType   | Context_ApplicationStage   | Category   | key |
      | <ApplicationStage> | Co-applicant      | <Context_ProductType> | <ApplicantType> | <Context_ApplicationStage> | <Category> |     |
      | <ApplicationStage> | Guarantor         | <Context_ProductType> | <ApplicantType> | <Context_ApplicationStage> | <Category> |     |


  Scenario Outline: ACAUTOCAS-13649:  Add another existing non individual applicant in existing application which is at credit approval stage with applicant type as <ApplicantType> in <Var_Stage>
    When user opens an application at "<ApplicationStage>" stage from application grid
    And user opens applicant information page
    And user picks and set application of "<Context_ProductType>" product type as "<ApplicantType>" applicant at "<Context_ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    And user adds another existing non individual applicant with applicant type as "<Add_ApplicantType>" and application id
    Then additional existing individual applicant with applicant type as "<Add_ApplicantType>" should be displayed in applicant information page
     # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     #${ApplicationStage:["Lead Details","DDE","Recommendation","Credit Approval"]}
    # ${ Context_ProductType : ["HL"]}
    #${Context_ApplicationStage:["Lead Details"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | ApplicationStage   | Add_ApplicantType | Context_ProductType   | ApplicantType   | Context_ApplicationStage   | Category | key |
      | <ApplicationStage> | Co-applicant      | <Context_ProductType> | <ApplicantType> | <Context_ApplicationStage> |          |     |
      | <ApplicationStage> | Guarantor         | <Context_ProductType> | <ApplicantType> | <Context_ApplicationStage> |          |     |

    #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    #${ProductType:["IAF","IHF"]}
    # ${ Context_ProductType : ["IHF"]}
    #${Context_ApplicationStage:["Sourcing"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | Add_ApplicantType | Context_ProductType   | ApplicantType   | Context_ApplicationStage   | Category | key |
      | <ApplicationStage> | Co-applicant      | <Context_ProductType> | <ApplicantType> | <Context_ApplicationStage> |          |     |
      | <ApplicationStage> | Guarantor         | <Context_ProductType> | <ApplicantType> | <Context_ApplicationStage> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
     # ${ Context_ProductType : ["IHF"]}
    #${Context_ApplicationStage:["Sourcing"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | Add_ApplicantType | Context_ProductType   | ApplicantType   | Context_ApplicationStage   | Category   | key |
      | <ApplicationStage> | Co-applicant      | <Context_ProductType> | <ApplicantType> | <Context_ApplicationStage> | <Category> |     |
      | <ApplicationStage> | Guarantor         | <Context_ProductType> | <ApplicantType> | <Context_ApplicationStage> | <Category> |     |

  @Sanity
  @Perishable
  Scenario Outline: ACAUTOCAS-11537: Add existing non individual <CustomerType> with relationship type as <RelationshipType> in <ProductType> application at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<Add_ApplicantType>" applicant at "<ApplicationStage>" for "" with "<key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user picks and set application of "<Context_ProductType>" product type as "<ApplicantType>" applicant at "<Context_ApplicationStage>" for "<Category>" with "<key>" in context from perishable pool
    When user adds existing "<ApplicantType>" "<CustomerType>" with relationship type as "<RelationshipType>"
    Then "<ApplicantType>" "<CustomerType>" with relationship type as "<RelationshipType>" added successfully
# ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
# ${ ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Recommendation"]}
# ${ CustomerType:["Co-applicant","Guarantor"]}
# ${RelationshipType:["Blood relative","Business Associate","Chair person","Co-parceners","Director ","Karta","Member of Society","Partner","Proprietor","Shareholder","Stakeholder's Brother","Stakeholder's Brother's wife","Stakeholder's Daughter-in-law","Stakeholder's Father","Stakeholder's Mother","Stakeholder's Son","Stakeholder's Spouse","Trustee"]}
# ${ Context_ProductType : ["HL"]}
    #${Context_ApplicationStage:["Lead Details"]}
    @Conventional
    @Release
    @Part-3
    @ImplementedBy-tushar.chauhan
    Examples:
      | Add_ApplicantType | CustomerType   | ProductType   | RelationshipType   | ApplicationStage   | Context_ProductType   | ApplicantType   | Context_ApplicationStage   | Category | key |
      | indiv             | <CustomerType> | <ProductType> | <RelationshipType> | <ApplicationStage> | <Context_ProductType> | <ApplicantType> | <Context_ApplicationStage> |          |     |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ProductType:["IAF","IHF"]}
     # ${ CustomerType:["Co-applicant","Guarantor"]}
     # ${RelationshipType:["Blood relative","Business Associate","Chair person","Co-parceners","Director ","Karta","Member of Society","Partner","Proprietor","Shareholder","Stakeholder's Brother","Stakeholder's Brother's wife","Stakeholder's Daughter-in-law","Stakeholder's Father","Stakeholder's Mother","Stakeholder's Son","Stakeholder's Spouse","Trustee"]}
     # ${ Context_ProductType : ["IHF"]}
    #${Context_ApplicationStage:["Lead Details"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Add_ApplicantType | CustomerType   | ProductType   | RelationshipType   | ApplicationStage   | Context_ProductType   | ApplicantType   | Context_ApplicationStage   | Category | key |
      | indiv             | <CustomerType> | <ProductType> | <RelationshipType> | <ApplicationStage> | <Context_ProductType> | <ApplicantType> | <Context_ApplicationStage> |          |     |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
    # ${ CustomerType:["Co-applicant","Guarantor"]}
    # ${RelationshipType:["Blood relative","Business Associate","Chair person","Co-parceners","Director ","Karta","Member of Society","Partner","Proprietor","Shareholder","Stakeholder's Brother","Stakeholder's Brother's wife","Stakeholder's Daughter-in-law","Stakeholder's Father","Stakeholder's Mother","Stakeholder's Son","Stakeholder's Spouse","Trustee"]}
     # ${ Context_ProductType : ["IPF"]}
    #${Context_ApplicationStage:["Lead Details"]}
    # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | Add_ApplicantType | CustomerType   | ProductType   | RelationshipType   | ApplicationStage   | Context_ProductType   | ApplicantType   | Context_ApplicationStage   | Category   | key |
      | indiv             | <CustomerType> | <ProductType> | <RelationshipType> | <ApplicationStage> | <Context_ProductType> | <ApplicantType> | <Context_ApplicationStage> | <Category> |     |

  @Perishable
  Scenario Outline: ACAUTOCAS-11538: Edit another existing non individual applicant in existing application which is at <ApplicationStage> stage with applicant type as <ApplicantType> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" from application grid
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<ApplicantType>" "<key>" applicant type
    And user edits another existing non individual applicant
    Then additional existing non individual applicant edited successfully
        # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ", "KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
       # ${ ApplicationStage:["Lead Details","Login Acceptance","DDE","Credit Approval","Recommendation"]}
    Examples:
      | ApplicationStage   | ApplicantType   | key         | ProductType   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category |
      | <ApplicationStage> | <ApplicantType> | coapplicant | <ProductType> | customer_details.xlsx | home                 | 117                         |          |
      | <ApplicationStage> | <ApplicantType> | guarantor   | <ProductType> | customer_details.xlsx | home                 | 117                         |          |

     #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
      #${ProductType:["IAF","IHF"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ApplicantType   | key         | ProductType   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category |
      | <ApplicationStage> | <ApplicantType> | coapplicant | <ProductType> | customer_details.xlsx | home                 | 117                         |          |
      | <ApplicationStage> | <ApplicantType> | guarantor   | <ProductType> | customer_details.xlsx | home                 | 117                         |          |

	 #${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
     #${ProductType:["IPF"]}
      # ${Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    @Part-3
    Examples:
      | ApplicationStage   | ApplicantType   | key         | ProductType   | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum | Category   |
      | <ApplicationStage> | <ApplicantType> | coapplicant | <ProductType> | customer_details.xlsx | home                 | 117                         | <Category> |
      | <ApplicationStage> | <ApplicantType> | guarantor   | <ProductType> | customer_details.xlsx | home                 | 117                         | <Category> |
