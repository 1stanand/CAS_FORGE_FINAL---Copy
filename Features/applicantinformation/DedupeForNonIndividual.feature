@AuthoredBy-harshita.nayak
@Epic-Applicant_Information
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@Part-3

Feature: Dedupe For Non Individual Customer

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
@Sanity
#FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12561: On <Field_Name> No of Dedupe Match hyperlink Dedupe Match Screen should display for non individual applicant at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on check for Duplicates
    When user click "<Field_Name>" field No of Dedupe Match hyperlink of non individual customer
    Then Dedupe Match Screen should be displayed for non individual applicant
    @ImplementedBy-richa.singh
    @Release3
    @Release 
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
# ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field_Name        |
      | <ApplicationStage> | <ProductType> |          |     | Application Match |
      | <ApplicationStage> | <ProductType> |          |     | Customer Match    |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
  @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field_Name        |
      | <ApplicationStage> | <ProductType> |          |     | Application Match |
      | <ApplicationStage> | <ProductType> |          |     | Customer Match    |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
  @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Field_Name        |
      | <ApplicationStage> | <ProductType> | <Category> |     | Application Match |
      | <ApplicationStage> | <ProductType> | <Category> |     | Customer Match    |

  @Sanity
  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12562: On Dedupe Match Screen application Id hyperlink <Screen> must be displayed for non individual applicant at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on check for Duplicates
    When user click "<Field_Name>" field No of Dedupe Match hyperlink of non individual customer
    And user click on Application Id hyperlink in Dedupe Match Screen
    Then "<Screen>" must be displayed for non individual
    @ImplementedBy-richa.singh
    @Release3
    @Release 
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
# ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field_Name        | Screen                      |
      | <ApplicationStage> | <ProductType> |          |     | Application Match | Matched Application Details |
      | <ApplicationStage> | <ProductType> |          |     | Customer Match    | Matched Application Details |

    # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
  @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key | Field_Name        | Screen                      |
      | <ApplicationStage> | <ProductType> |          |     | Application Match | Matched Application Details |
      | <ApplicationStage> | <ProductType> |          |     | Customer Match    | Matched Application Details |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
  @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key | Field_Name        | Screen                      |
      | <ApplicationStage> | <ProductType> | <Category> |     | Application Match | Matched Application Details |
      | <ApplicationStage> | <ProductType> | <Category> |     | Customer Match    | Matched Application Details |


  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12563: Validating the <Field_Name_screen> present in Matched Application Details on <Field_Name> for non individual applicant at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on check for Duplicates
    And user click "<Field_Name>" field No of Dedupe Match hyperlink of non individual customer
    When user click on Application Id hyperlink in Dedupe Match Screen
    Then "<Field_Name_screen>" of non individual customer present in Matched Application Details
    @ImplementedBy-richa.singh
    @Release3
    @Release 
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
# ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | Field_Name_screen          |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Matched Application ID     |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Stage of application       |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Application Status         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Sourcing branch            |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Application present in CAS |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Matched Application ID     |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Stage of application       |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Application Status         |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Sourcing branch            |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Application present in CAS |
    # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | Field_Name_screen          |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Matched Application ID     |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Stage of application       |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Application Status         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Sourcing branch            |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Application present in CAS |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Matched Application ID     |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Stage of application       |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Application Status         |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Sourcing branch            |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Application present in CAS |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | Field_Name        | Field_Name_screen          |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Matched Application ID     |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Stage of application       |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Application Status         |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Sourcing branch            |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Application present in CAS |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Matched Application ID     |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Stage of application       |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Application Status         |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Sourcing branch            |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Application present in CAS |
#FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12564: Show the <NumberOfRows> rows in Dedupe Match Screen for <Field_Name> for non individual applicant at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on check for Duplicates
    And user click "<Field_Name>" field No of Dedupe Match hyperlink of non individual customer
    When user selects "<NumberOfRows>" number of rows to show for Dedupe Match Screen for non individual applicant
    Then user should be able to select "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number
    @ImplementedBy-richa.singh
    @Release3
    @Release 
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
# ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | NumberOfRows | Display                                 | More_Less |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | 10           | display                                 | more      |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | 25           | display                                 | more      |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | 10           | not display only available rows display | less      |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | 25           | not display only available rows display | less      |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | 10           | display                                 | more      |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | 25           | display                                 | more      |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | 10           | not display only available rows display | less      |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | 25           | not display only available rows display | less      |
  # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | NumberOfRows | Display                                 | More_Less |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | 10           | display                                 | more      |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | 25           | display                                 | more      |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | 10           | not display only available rows display | less      |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | 25           | not display only available rows display | less      |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | 10           | display                                 | more      |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | 25           | display                                 | more      |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | 10           | not display only available rows display | less      |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | 25           | not display only available rows display | less      |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | Field_Name        | NumberOfRows | Display                                 | More_Less |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | 10           | display                                 | more      |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | 25           | display                                 | more      |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | 10           | not display only available rows display | less      |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | 25           | not display only available rows display | less      |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | 10           | display                                 | more      |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | 25           | display                                 | more      |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | 10           | not display only available rows display | less      |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | 25           | not display only available rows display | less      |

#FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12565: On <Field_Name> sorting of <sorting_field> column in Dedupe Match Screen in ascending order for non individual applicant at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on check for Duplicates
    And user click "<Field_Name>" field No of Dedupe Match hyperlink of non individual customer
    When user click on "<sorting_field>" No of Dedupe Match hyperlink to sort field in "ascending" order
    Then user should be able to sort the "<sorting_field>" column in Dedupe Match Screen in "ascending" order
    @ImplementedBy-richa.singh
    @Release3
    @Release 
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | sorting_field         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Application ID        |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Strength Of Match     |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Neo CustID/CIF Number |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Institution Name      |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Host ID               |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Dedupe Source         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Unique ID             |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Applicant Type        |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Channel, Channel Name |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Dealer/DSA/RM Name    |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Application ID        |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Strength Of Match     |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Neo CustID/CIF Number |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Institution Name      |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Host ID               |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Dedupe Source         |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Unique ID             |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Applicant Type        |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Channel, Channel Name |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Dealer/DSA/RM Name    |
 # ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | sorting_field         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Application ID        |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Strength Of Match     |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Neo CustID/CIF Number |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Institution Name      |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Host ID               |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Dedupe Source         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Unique ID             |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Applicant Type        |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Channel, Channel Name |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Dealer/DSA/RM Name    |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Application ID        |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Strength Of Match     |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Neo CustID/CIF Number |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Institution Name      |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Host ID               |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Dedupe Source         |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Unique ID             |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Applicant Type        |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Channel, Channel Name |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Dealer/DSA/RM Name    |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | Field_Name        | sorting_field         |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Application ID        |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Strength Of Match     |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Neo CustID/CIF Number |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Institution Name      |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Host ID               |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Dedupe Source         |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Unique ID             |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Applicant Type        |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Channel, Channel Name |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Dealer/DSA/RM Name    |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Application ID        |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Strength Of Match     |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Neo CustID/CIF Number |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Institution Name      |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Host ID               |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Dedupe Source         |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Unique ID             |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Applicant Type        |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Channel, Channel Name |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Dealer/DSA/RM Name    |

    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12566: On <Field_Name> sorting of <sorting_field> column in Dedupe Match Screen in descending order for non individual applicant at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on check for Duplicates
    And user click "<Field_Name>" field No of Dedupe Match hyperlink of non individual customer
    When user click on "<sorting_field>" No of Dedupe Match hyperlink to sort field in "descending" order
    Then user should be able to sort the "<sorting_field>" column in Dedupe Match Screen in "descending" order
    @ImplementedBy-richa.singh
    @Release3
    @Release 
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | sorting_field         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Application ID        |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Strength Of Match     |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Neo CustID/CIF Number |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Institution Name      |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Host ID               |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Dedupe Source         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Unique ID             |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Applicant Type        |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Channel, Channel Name |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Dealer/DSA/RM Name    |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Application ID        |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Strength Of Match     |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Neo CustID/CIF Number |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Institution Name      |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Host ID               |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Dedupe Source         |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Unique ID             |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Applicant Type        |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Channel, Channel Name |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Dealer/DSA/RM Name    |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | sorting_field         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Application ID        |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Strength Of Match     |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Neo CustID/CIF Number |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Institution Name      |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Host ID               |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Dedupe Source         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Unique ID             |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Applicant Type        |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Channel, Channel Name |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Dealer/DSA/RM Name    |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Application ID        |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Strength Of Match     |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Neo CustID/CIF Number |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Institution Name      |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Host ID               |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Dedupe Source         |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Unique ID             |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Applicant Type        |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Channel, Channel Name |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Dealer/DSA/RM Name    |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | Field_Name        | sorting_field         |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Application ID        |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Strength Of Match     |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Neo CustID/CIF Number |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Institution Name      |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Host ID               |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Dedupe Source         |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Unique ID             |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Applicant Type        |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Channel, Channel Name |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Dealer/DSA/RM Name    |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Application ID        |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Strength Of Match     |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Neo CustID/CIF Number |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Institution Name      |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Host ID               |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Dedupe Source         |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Unique ID             |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Applicant Type        |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Channel, Channel Name |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Dealer/DSA/RM Name    |

   #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12567: Pagination of "<Field_Name>" in which "<Paginate_Btn>" should be "<Disable_Enable>" in Dedupe Match Screen for non individual applicant at "<ApplicationStage>" stage for "<ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on check for Duplicates
    And user click "<Field_Name>" field No of Dedupe Match hyperlink of non individual customer
    When user select "<Page>" page in Dedupe Match Screen for non individual applicant
    Then "<Paginate_Btn>" should be "<Disable_Enable>" for "<Page>" in Dedupe Match Screen for non individual applicant
    @ImplementedBy-richa.singh
    @Release3
    @Release 
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | Page  | Paginate_Btn             | Disable_Enable |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | first | paginate_button previous | disable        |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | first | paginate_button next     | enable         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | next  | paginate_button previous | enable         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | last  | paginate_button first    | enable         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | last  | paginate_button previous | enable         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | last  | paginate_button next     | disable        |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | first | paginate_button previous | disable        |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | first | paginate_button next     | enable         |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | next  | paginate_button previous | enable         |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | last  | paginate_button first    | enable         |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | last  | paginate_button previous | enable         |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | last  | paginate_button next     | disable        |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | Page  | Paginate_Btn             | Disable_Enable |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | first | paginate_button previous | disable        |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | first | paginate_button next     | enable         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | next  | paginate_button previous | enable         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | last  | paginate_button first    | enable         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | last  | paginate_button previous | enable         |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | last  | paginate_button next     | disable        |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | first | paginate_button previous | disable        |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | first | paginate_button next     | enable         |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | next  | paginate_button previous | enable         |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | last  | paginate_button first    | enable         |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | last  | paginate_button previous | enable         |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | last  | paginate_button next     | disable        |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | Field_Name        | Page  | Paginate_Btn             | Disable_Enable |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | first | paginate_button previous | disable        |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | first | paginate_button next     | enable         |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | next  | paginate_button previous | enable         |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | last  | paginate_button first    | enable         |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | last  | paginate_button previous | enable         |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | last  | paginate_button next     | disable        |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | first | paginate_button previous | disable        |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | first | paginate_button next     | enable         |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | next  | paginate_button previous | enable         |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | last  | paginate_button first    | enable         |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | last  | paginate_button previous | enable         |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | last  | paginate_button next     | disable        |

  #Support - 16_CAS-1108869
  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12568: On linking existing applicant with different applicant the message "<message>" is displayed for non individual applicant at "<ApplicationStage>" stage for "<ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on check for Duplicates
    And user reads data from the excel file "customer_details.xlsx" under sheet "identification" and row 158
    And user change some data in the customer details
    And user reinitiate the dedupe of "<Field_Name>" for non individual customer
    And user click "<Field_Name>" field No of Dedupe Match hyperlink of non individual customer
    And user link the existing application with different application for non individual customer
    When user reads data from the excel file "customer_details.xlsx" under sheet "home" and row 113
    Then user validate that the message "<message>" should be displayed successfully for non individual customer
    @ImplementedBy-richa.singh
    @Release3
    @Release 
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | message                                  |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Application successfully linked with CIF |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Application successfully linked with CIF |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | message                                  |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Application successfully linked with CIF |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Application successfully linked with CIF |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | Field_Name        | message                                  |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Application successfully linked with CIF |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Application successfully linked with CIF |


@Sanity
#FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12569:  On <Field_Name> Dedupe Match Screen with <Action> should work properly for non individual applicant at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on check for Duplicates
    And user click "<Field_Name>" field No of Dedupe Match hyperlink of non individual customer
    When user take "<Action>" in Dedupe Match Screen of non individual customer
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_home>" and row <CustomerDetails_home_rowNum>
    Then "<Action>" should work properly for non individual customer
    @ImplementedBy-richa.singh
    @Release3
    @Release 
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | Action        | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Maximize      | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Minimize      | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Cross         | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Expand All    | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Collapse All  | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Ignore & Save | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Cancel        | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Done          | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Maximize      | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Minimize      | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Cross         | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Expand All    | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Collapse All  | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Ignore & Save | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Cancel        | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Done          | customer_details.xlsx | home                 | 1                           |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | Action        | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Maximize      | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Minimize      | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Cross         | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Expand All    | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Collapse All  | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Ignore & Save | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Cancel        | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Done          | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Maximize      | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Minimize      | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Cross         | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Expand All    | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Collapse All  | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Ignore & Save | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Cancel        | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Done          | customer_details.xlsx | home                 | 1                           |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | Field_Name        | Action        | CustomerDetailsWB     | CustomerDetails_home | CustomerDetails_home_rowNum |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Maximize      | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Minimize      | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Cross         | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Expand All    | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Collapse All  | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Ignore & Save | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Cancel        | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Done          | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Maximize      | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Minimize      | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Cross         | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Expand All    | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Collapse All  | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Ignore & Save | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Cancel        | customer_details.xlsx | home                 | 1                           |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Done          | customer_details.xlsx | home                 | 1                           |

 #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12570:  On <Field_Name> Matched Application Details Screen with <Action> should work properly for non individual applicant at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on check for Duplicates
    And user click "<Field_Name>" field No of Dedupe Match hyperlink of non individual customer
    And user click on Application Id hyperlink in Dedupe Match Screen
    When user take "<Action>" in Matched Application Details Screen
    Then "<Action>" in matched screen should work properly
    @ImplementedBy-richa.singh
    @Release3
    @Release 
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | Action       |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Maximize     |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Minimize     |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Cross        |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Expand All   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Collapse All |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Cancel       |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Maximize     |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Minimize     |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Cross        |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Expand All   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Collapse All |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Cancel       |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | Action       |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Maximize     |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Minimize     |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Cross        |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Expand All   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Collapse All |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Cancel       |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Maximize     |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Minimize     |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Cross        |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Expand All   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Collapse All |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Cancel       |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | Field_Name        | Action       |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Maximize     |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Minimize     |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Cross        |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Expand All   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Collapse All |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Cancel       |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Maximize     |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Minimize     |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Cross        |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Expand All   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Collapse All |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Cancel       |

     #CAS-169406
  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12571:  In Dedupe Match Screen Personal Details field should be available in view mode for non individual applicant at "<ApplicationStage>" stage for "<ProductType>"
    And user creates an dedupe application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user reads data from the excel file "customer_details.xlsx" under sheet "home" and row 114
    And user fill customer details with "mandatory" fields
    And user clicks on check for Duplicates
    And user clicks "Save" button
    When user click "<Field_Name>" field No of Dedupe Match hyperlink of non individual customer
    And user view details in dedupe match screen of non individual customer
    Then personal details field should be available in view mode for non individual applicant
    @ImplementedBy-richa.singh
    @Release3
    @Release 
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        |
      | <ProductType> | <ApplicationStage> |          |     | Application Match |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        |
      | <ProductType> | <ApplicationStage> |          |     | Application Match |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | Field_Name        |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    |

#03_CAS-51940,Support_13_CAS-51940
  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12572: While adding multiple "<identification_type>" with click on "<Field_Name>" view details hyperlink Dedupe Match Screen get displayed for non individual applicant at "<ApplicationStage>" stage for "<ProductType>"
    And user creates an dedupe application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user reads data from the excel file "customer_details.xlsx" under sheet "home" and row 114
    And user fill customer details with "mandatory" fields
    And user reads data from the excel file "<CustomerDetailsWB>" under sheet "<CustomerDetails_identification>" and row <CustomerDetails_identification_rowNum>
    And user open identification accordion
    When user add "multiple" identification details in customer details
    And user reads data from the excel file "customer_details.xlsx" under sheet "organization_address" and row 1
    And user fills organization address
    And user clicks on check for Duplicates
    And user click "<Field_Name>" field No of Dedupe Match hyperlink of non individual customer
    Then Dedupe Match Screen should be displayed for non individual applicant
    @ImplementedBy-richa.singh
    @Release3
    @Release 
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | identification_type          | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | ABN                          | customer_details.xlsx | identification                 | 152                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | ACN                          | customer_details.xlsx | identification                 | 153                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | ARBN                         | customer_details.xlsx | identification                 | 154                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | ARSN                         | customer_details.xlsx | identification                 | 155                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | CIN NO                       | customer_details.xlsx | identification                 | 156                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | CKYC                         | customer_details.xlsx | identification                 | 165                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | FORM 49A                     | customer_details.xlsx | identification                 | 166                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | KYC Identification Number    | customer_details.xlsx | identification                 | 157                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | PAN                          | customer_details.xlsx | identification                 | 158                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Service Tax No               | customer_details.xlsx | identification                 | 159                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | TIN No                       | customer_details.xlsx | identification                 | 160                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Unique Identification Number | customer_details.xlsx | identification                 | 161                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | ABN                          | customer_details.xlsx | identification                 | 152                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | ACN                          | customer_details.xlsx | identification                 | 153                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | ARBN                         | customer_details.xlsx | identification                 | 154                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | ARSN                         | customer_details.xlsx | identification                 | 155                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | CIN NO                       | customer_details.xlsx | identification                 | 156                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | CKYC                         | customer_details.xlsx | identification                 | 165                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | FORM 49A                     | customer_details.xlsx | identification                 | 166                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | KYC Identification Number    | customer_details.xlsx | identification                 | 157                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | PAN                          | customer_details.xlsx | identification                 | 158                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Service Tax No               | customer_details.xlsx | identification                 | 159                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | TIN No                       | customer_details.xlsx | identification                 | 160                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Unique Identification Number | customer_details.xlsx | identification                 | 161                                   |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        | identification_type          | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | ABN                          | customer_details.xlsx | identification                 | 152                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | ACN                          | customer_details.xlsx | identification                 | 153                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | ARBN                         | customer_details.xlsx | identification                 | 154                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | ARSN                         | customer_details.xlsx | identification                 | 155                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | CIN NO                       | customer_details.xlsx | identification                 | 156                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | CKYC                         | customer_details.xlsx | identification                 | 165                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | FORM 49A                     | customer_details.xlsx | identification                 | 166                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | KYC Identification Number    | customer_details.xlsx | identification                 | 157                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | PAN                          | customer_details.xlsx | identification                 | 158                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Service Tax No               | customer_details.xlsx | identification                 | 159                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | TIN No                       | customer_details.xlsx | identification                 | 160                                   |
      | <ProductType> | <ApplicationStage> |          |     | Application Match | Unique Identification Number | customer_details.xlsx | identification                 | 161                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | ABN                          | customer_details.xlsx | identification                 | 152                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | ACN                          | customer_details.xlsx | identification                 | 153                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | ARBN                         | customer_details.xlsx | identification                 | 154                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | ARSN                         | customer_details.xlsx | identification                 | 155                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | CIN NO                       | customer_details.xlsx | identification                 | 156                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | CKYC                         | customer_details.xlsx | identification                 | 165                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | FORM 49A                     | customer_details.xlsx | identification                 | 166                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | KYC Identification Number    | customer_details.xlsx | identification                 | 157                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | PAN                          | customer_details.xlsx | identification                 | 158                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Service Tax No               | customer_details.xlsx | identification                 | 159                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | TIN No                       | customer_details.xlsx | identification                 | 160                                   |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    | Unique Identification Number | customer_details.xlsx | identification                 | 161                                   |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | Field_Name        | identification_type          | CustomerDetailsWB     | CustomerDetails_identification | CustomerDetails_identification_rowNum |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | ABN                          | customer_details.xlsx | identification                 | 152                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | ACN                          | customer_details.xlsx | identification                 | 153                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | ARBN                         | customer_details.xlsx | identification                 | 154                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | ARSN                         | customer_details.xlsx | identification                 | 155                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | CIN NO                       | customer_details.xlsx | identification                 | 156                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | CKYC                         | customer_details.xlsx | identification                 | 165                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | FORM 49A                     | customer_details.xlsx | identification                 | 166                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | KYC Identification Number    | customer_details.xlsx | identification                 | 157                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | PAN                          | customer_details.xlsx | identification                 | 158                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Service Tax No               | customer_details.xlsx | identification                 | 159                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | TIN No                       | customer_details.xlsx | identification                 | 160                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match | Unique Identification Number | customer_details.xlsx | identification                 | 161                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | ABN                          | customer_details.xlsx | identification                 | 152                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | ACN                          | customer_details.xlsx | identification                 | 153                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | ARBN                         | customer_details.xlsx | identification                 | 154                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | ARSN                         | customer_details.xlsx | identification                 | 155                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | CIN NO                       | customer_details.xlsx | identification                 | 156                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | CKYC                         | customer_details.xlsx | identification                 | 165                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | FORM 49A                     | customer_details.xlsx | identification                 | 166                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | KYC Identification Number    | customer_details.xlsx | identification                 | 157                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | PAN                          | customer_details.xlsx | identification                 | 158                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Service Tax No               | customer_details.xlsx | identification                 | 159                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | TIN No                       | customer_details.xlsx | identification                 | 160                                   |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    | Unique Identification Number | customer_details.xlsx | identification                 | 161                                   |



  @Sanity
    #Prerequisite-Change the email,mobile number,Address detail
    #Support - 16_CAS-1108869
  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12573: Validate the "<Field_Name>" dedupe is successfully reinitiated after changing some data for non individual applicant at "<ApplicationStage>" stage for "<ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user clicks on check for Duplicates
    And user set dedupe in context
    And user reads data from the excel file "customer_details.xlsx" under sheet "home" and row 114
    And user fill customer details with "mandatory" fields
    And user reads data from the excel file "customer_details.xlsx" under sheet "identification" and row 164
    And user open identification accordion
    And user fill identification details for non individual customer
    And user reads data from the excel file "customer_details.xlsx" under sheet "organization_address" and row 1
    And user change organization address
    And user reads data from the excel file "customer_details.xlsx" under sheet "home" and row 0
    And user fills email id in communication details
    And user clicks on customer details
    When user clicks on check for Duplicates
    Then user should be able to validate "<Field_Name>" dedupe get initiated successfully for non individual applicant with the changed data
    @ImplementedBy-richa.singh
    @Release3
    @Release 
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["DDE","Credit Approval"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        |
      | <ProductType> | <ApplicationStage> |          |     | Application Match |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name        |
      | <ProductType> | <ApplicationStage> |          |     | Application Match |
      | <ProductType> | <ApplicationStage> |          |     | Customer Match    |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | Field_Name        |
      | <ProductType> | <ApplicationStage> | <Category> |     | Application Match |
      | <ProductType> | <ApplicationStage> | <Category> |     | Customer Match    |
@Sanity
#FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  Scenario Outline: ACAUTOCAS-12574: On Negative Checklist No of Dedupe Match hyperlink Negative Checklist Matches displayed for non individual applicant at <ApplicationStage> stage for <ProductType>
    And user creates an dedupe application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user opens an application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" from application grid
    And user navigate to customer details screen on "<ApplicationStage>"
    And user reads data from the excel file "customer_details.xlsx" under sheet "identification" and row 171
    And user open identification accordion
    And user fill identification details for non individual customer
    And user clicks on check for Duplicates
    When user click "<Field_Name>" field No of Dedupe Match hyperlink of non individual customer
    Then Negative Checklist Matches Screen should be displayed for non individual
    @ImplementedBy-richa.singh
    @Release3
    @Release 
    @Conventional
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name         |
      | <ProductType> | <ApplicationStage> |          |     | Negative Checklist |
# ${ ProductType : ["IHF","IAF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | Field_Name         |
      | <ProductType> | <ApplicationStage> |          |     | Negative Checklist |
# ${ ProductType : ["IPF"]}
# ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Credit Approval"]}
 # ${ Category : ["bonds","shares","metals"]}
    @Islamic
  @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | Category   | Key | Field_Name         |
      | <ProductType> | <ApplicationStage> | <Category> |     | Negative Checklist |











