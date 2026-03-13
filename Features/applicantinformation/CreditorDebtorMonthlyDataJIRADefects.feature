@Epic-Applicant_Information
@AuthoredBy-Anshu.bhaduri
@Part-3

Feature: Creditor Debtor Monthly Data JIRA Defects

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0



 # CAS-130378
 # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  Scenario Outline: ACAUTOCAS-12555:  Creditor Debtor full screen should be visible for <applicantType> customer post inactivating the Split Screen for <ProductType> application at <ApplicationStage>
    #Creditor/Debtor Screen Details does not gets expanded post inactivating the Split Screen option at the run time of the application
#    Split screen already configured in Workflow for specific Product at "<ApplicationStage>" Stage
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    When user deactivates the split screen in workflow
    Then User should be able to see full screen of Creditor Debtor screen
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
 # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
# ${ApplicantType:["Primary Applicant","Co-Applicant","Guarantor"]}
    @ImplementedBy-richa.singh
    @RunConfig-2 @Conventional @Release
    @Release3
    Examples:
      | ProductType   | ApplicationStage   | applicantType | Key             | Category |
      | <ProductType> | <ApplicationStage> | nonindiv      | <ApplicantType> |          |
# ${ ProductType : ["IHF","IAF"]}
 # ${ApplicationStage:["Sourcing","DDE","Recommendation", "Credit Approval"]}
# ${ApplicantType:["Primary Applicant","Co-Applicant","Guarantor"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | applicantType | Key             | Category |
      | <ProductType> | <ApplicationStage> | nonindiv      | <ApplicantType> |          |
# ${ ProductType : ["IPF"]}
 # ${ApplicationStage:["Sourcing","DDE","Recommendation", "Credit Approval"]}
# ${ApplicantType:["Primary Applicant","Co-Applicant","Guarantor"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | applicantType | Key             | Category   |
      | <ProductType> | <ApplicationStage> | nonindiv      | <ApplicantType> | <Category> |


 # CAS-124544
 # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  Scenario Outline: ACAUTOCAS-12556: User should be able to verify that address fields should get populated once full address is selected on Creditor Debtor Screen for <ProductType> application at <ApplicationStage> for applicant type as "<applicantType>"
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<Key>" applicant type
    When user navigate to "CreditorDebtor" tab in applicant information
    And user clicks on "Add New Creditor" in Creditor Debitor Details
    And user selects full address value from list
    Then address fields should get populated once full address is selected
    @ImplementedBy-utkarsh.tiwari
    @Conventional @Release @Part-3
    @Release3
        #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
     # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval"]}
 # ${ApplicantType:["Primary","CoApp","Guarantor"]}
    Examples:
      | ProductType   | ApplicationStage   | applicantType | Key             | Category |
      | <ProductType> | <ApplicationStage> | nonindiv      | <ApplicantType> |          |
# ${ ProductType : ["IHF","IAF"]}
 # ${ApplicationStage:["Sourcing","DDE","Recommendation", "Credit Approval"]}
 # ${ApplicantType:["Primary","CoApp","Guarantor"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | applicantType | Key             | Category |
      | <ProductType> | <ApplicationStage> | nonindiv      | <ApplicantType> |          |
# ${ ProductType : ["IPF"]}
 # ${ApplicationStage:["Sourcing","DDE","Recommendation", "Credit Approval"]}
 # ${ApplicantType:["Primary","CoApp","Guarantor"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | applicantType | Key             | Category   |
      | <ProductType> | <ApplicationStage> | nonindiv      | <ApplicantType> | <Category> |



 # CAS-133464
 # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  @Perishable
  Scenario Outline: ACAUTOCAS-12557: Address fields should be in disabled mode on Creditor Debtor Screen for <ProductType> at <ApplicationStage> for applicant type as "<applicantType>"
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    And user reads data from the excel file "creditor_debtor_details.xlsx" under sheet "<creditor_debtor_fields>" and row 25
    And user adds a new "<CreditorDebtor>" on creditor debtor screen under applicant details
    And user back to main page of "credit approval"
    And user reads data from the excel file "committee_approval_grid.xlsx" under sheet "committee_approval" and row 0
    And user selects a committee to take decision
    And user initiate committee approval
    And user close committee decision
    And user opens applicant information page of "<ApplicationStage>"
    And user views and edit applicant details for "<Key>" applicant type
    And user navigate to "CreditorDebtor" tab in applicant information
    When user view "<CreditorDebtor>" record available in grid
    And user expands the Address section for "<CreditorDebtor>"
    Then User should be able to view already entered address data in disabled mode
    @ImplementedBy-richa.singh
    @Conventional @Release @Part-3
    @Release3
     # ${ApplicationStage:["Credit Approval"]}
 #${Key:["Primary","Coapplicant","Guarantor"]}
    #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | Key   | Category | creditor_debtor_fields | applicantType |
      | <ProductType> | <ApplicationStage> | Creditor       | <Key> |          | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | <Key> |          | debtor_fields          | nonindiv      |
# ${ ProductType : ["IHF","IAF"]}
     # ${ApplicationStage:["Credit Approval"]}
 #${Key:["Primary","Coapplicant","Guarantor"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | Key   | Category | creditor_debtor_fields | applicantType |
      | <ProductType> | <ApplicationStage> | Creditor       | <Key> |          | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | <Key> |          | debtor_fields          | nonindiv      |
# ${ ProductType : ["IPF"]}
     # ${ApplicationStage:["Credit Approval"]}
 #${Key:["Primary","Coapplicant","Guarantor"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | CreditorDebtor | Key   | Category | creditor_debtor_fields | applicantType |
      | <ProductType> | <ApplicationStage> | Creditor       | <Key> |          | creditor_fields        | nonindiv      |
      | <ProductType> | <ApplicationStage> | Debtor         | <Key> |          | debtor_fields          | nonindiv      |



 # CAS-136742
 # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  Scenario Outline: ACAUTOCAS-12558: User should be able to search through CIF Number of existing Applicant while creating new application for <ProductType> at <ApplicationStage> for applicant type as "<applicantType>"
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user saves "<Key>" CIF Number in context
    When user create new application for "<ProductType>" for existing non individual customer
    And user search through CIF Number of existing Applicant on Lead Details Screen
    Then Existing Customer details should be populated
    @ImplementedBy-richa.singh
    @Conventional @Release @Part-3
    @Release3
 # ${ApplicationStage:["Lead Details"]}
 #${Key:["Primary","Coapplicant","Guarantor"]}
        #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | ApplicationStage   | applicantType | Key             | Category |
      | <ProductType> | <ApplicationStage> | nonindiv      | <ApplicantType> |          |
# ${ ProductType : ["IHF","IAF"]}
 # ${ApplicationStage:["Sourcing"]}
 #${Key:["Primary","Coapplicant","Guarantor"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | applicantType | Key             | Category |
      | <ProductType> | <ApplicationStage> | nonindiv      | <ApplicantType> |          |
# ${ ProductType : ["IPF"]}
 # ${ApplicationStage:["Sourcing"]}
 #${Key:["Primary","Coapplicant","Guarantor"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | applicantType | Key             | Category   |
      | <ProductType> | <ApplicationStage> | nonindiv      | <ApplicantType> | <Category> |


#
# "10.1.60.142 > Contact Person & Key Employee Details (Non-Individual) > Existing Customer not getting copied using NEO CIF Number
#  2. Copy CIF Number of any Non-individual Applicant
#  3. Now create New Application and on Lead Details screen, choose existing customer and search through CIF Number of existing Applicant
#  ER: Existing Customer details should be populated
#  AR: No details of Existing Customer is populating"



    ######################## Monthly Data ################
   # CAS-139731
  # FeatureID-CAS-120693,ACAUTOCAS-4,ACAUTOCAS-10504
  Scenario Outline: ACAUTOCAS-12559:  User should be able to see monthly data in <tab_expand> mode for an application of <ProductType> at <ApplicationStage> stage with applicant type as <applicantType>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    When user selects "<tab_expand>" button in right corner of Applicant details screen
    Then User should be able to see monthly data in "<tab_expand>" mode
    @Conventional @Release @Part-3
    @Release3
    @ImplementedBy-utkarsh.tiwari
 # ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval","Reconsideration"]}
  # ${ApplicantType:["Primary Applicant","Co-Applicant","Guarantor"]}
        #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | ApplicationStage   | applicantType | tab_expand | Key             | Category |
      | <ProductType> | <ApplicationStage> | nonindiv      | Tabs       | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | nonindiv      | Expanded   | <ApplicantType> |          |
# ${ ProductType : ["IHF","IAF"]}
 # ${ApplicationStage:["Sourcing"]}
 #${Key:["Primary","Coapplicant","Guarantor"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | applicantType | tab_expand | Key             | Category |
      | <ProductType> | <ApplicationStage> | nonindiv      | Tabs       | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | nonindiv      | Expanded   | <ApplicantType> |          |
# ${ ProductType : ["IPF"]}
 # ${ApplicationStage:["Sourcing"]}
 #${Key:["Primary","Coapplicant","Guarantor"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | applicantType | tab_expand | Key             | Category   |
      | <ProductType> | <ApplicationStage> | nonindiv      | Tabs       | <ApplicantType> | <Category> |
      | <ProductType> | <ApplicationStage> | nonindiv      | Expanded   | <ApplicantType> | <Category> |



    # ICICIPSCAS-133
  # FeatureID-CAS-120530,ACAUTOCAS-4,ACAUTOCAS-8673
  Scenario Outline: ACAUTOCAS-12560:  User should be able to see Creditor Debtor page details in <tab_expand> mode for an application of <ProductType> at <ApplicationStage> stage with applicant type as <applicantType>
    And user opens an application of "<ProductType>" product type as "<applicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user opens Applicant information page of "<ApplicationStage>" with view and edit mode
    When user selects "<tab_expand>" button in right corner of Applicant details screen
    Then User should be able to see Creditor Debtor page details in "<tab_expand>" mode
    @Conventional @Release @Part-3
    @Release3
    @ImplementedBy-utkarsh.tiwari
# ${ApplicationStage:["Lead Details","DDE","Recommendation", "Credit Approval","Reconsideration"]}
  # ${ApplicantType:["Primary Applicant","Co-Applicant","Guarantor"]}
        #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | ApplicationStage   | applicantType | tab_expand | Key             | Category |
      | <ProductType> | <ApplicationStage> | nonindiv      | Tabs       | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | nonindiv      | Expanded   | <ApplicantType> |          |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","DDE","Recommendation", "Credit Approval","Reconsideration"]}
 #${Key:["Primary","Coapplicant","Guarantor"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | applicantType | tab_expand | Key             | Category |
      | <ProductType> | <ApplicationStage> | nonindiv      | Tabs       | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | nonindiv      | Expanded   | <ApplicantType> |          |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","DDE","Recommendation", "Credit Approval","Reconsideration"]}
 #${Key:["Primary","Coapplicant","Guarantor"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | applicantType | tab_expand | Key             | Category |
      | <ProductType> | <ApplicationStage> | nonindiv      | Tabs       | <ApplicantType> |          |
      | <ProductType> | <ApplicationStage> | nonindiv      | Expanded   | <ApplicantType> |          |
