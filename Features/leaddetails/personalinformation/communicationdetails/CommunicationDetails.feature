@Epic-Applicant_Information
@AppInfoAdoption
@AuthoredBy-vipin.kishor
#${ApplicantType:["indiv","nonindiv"]}

Feature:Communication Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-155
  Scenario Outline: ACAUTOCAS-13441: Visibility validation of <Field> field in Communication Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    When user open Communication Details accordion
    Then "<Field>" field should be present in Communication Details

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release3
    @Release @Part-2
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field                                        | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Phone                                |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Mobile Number                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Other Phones                                 |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Consent To Call checkbox                     |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Other Mobile Numbers                         |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Email ID                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Official Email ID                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FAX Number                                   |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Preferred Language                           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Preferred Mode of Communication as mandatory |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Allow Promotional Calls checkbox             |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field                                        | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Phone                                |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Mobile Number                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Other Phones                                 |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Consent To Call checkbox                     |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Other Mobile Numbers                         |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Email ID                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Official Email ID                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FAX Number                                   |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Preferred Language                           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Preferred Mode of Communication as mandatory |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Allow Promotional Calls checkbox             |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field                                        | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Phone                                | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Mobile Number                        | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Other Phones                                 | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Consent To Call checkbox                     | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Other Mobile Numbers                         | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Email ID                             | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Official Email ID                            | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FAX Number                                   | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Preferred Language                           | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Preferred Mode of Communication as mandatory | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Allow Promotional Calls checkbox             | <Category> |     |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field                                        | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Phone                                |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Mobile Number                        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Other Phones                                 |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Consent To Call checkbox                     |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Other Mobile Numbers                         |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Email ID                             |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Official Email ID                            |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | FAX Number                                   |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Preferred Language                           |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Preferred Mode of Communication as mandatory |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Allow Promotional Calls checkbox             |          |     |

  #FeatureID-ACAUTOCAS-155
  Scenario Outline: ACAUTOCAS-13442: <Prepaid_Postpaid> marking in <Mobile_Number> in Communication Details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open Communication Details accordion
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_communication_details>" and row <PersonalInfo_communication_details_rowNum>
    When user selects "<Mobile_Number>" as "<Prepaid_Postpaid>" in Communication Details
    Then "<Mobile_Number>" as "<Prepaid_Postpaid>" marked successfully

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release3
    @Release @Part-2
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Mobile_Number         | Prepaid_Postpaid | PersonalInfoWB            | PersonalInfo_communication_details | PersonalInfo_communication_details_rowNum | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Primary Mobile Number | Postpaid         | personal_information.xlsx | communication_details              | 0                                         |          |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Primary Mobile Number | Prepaid          | personal_information.xlsx | communication_details              | 28                                        |          |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Other Mobile Numbers  | Postpaid         | personal_information.xlsx | communication_details              | 0                                         |          |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Other Mobile Numbers  | Prepaid          | personal_information.xlsx | communication_details              | 28                                        |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Mobile_Number         | Prepaid_Postpaid | PersonalInfoWB            | PersonalInfo_communication_details | PersonalInfo_communication_details_rowNum | Category   | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Primary Mobile Number | Postpaid         | personal_information.xlsx | communication_details              | 0                                         | <Category> |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Primary Mobile Number | Prepaid          | personal_information.xlsx | communication_details              | 28                                        | <Category> |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Other Mobile Numbers  | Postpaid         | personal_information.xlsx | communication_details              | 0                                         | <Category> |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Other Mobile Numbers  | Prepaid          | personal_information.xlsx | communication_details              | 28                                        | <Category> |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
    @Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Mobile_Number         | Prepaid_Postpaid | PersonalInfoWB            | PersonalInfo_communication_details | PersonalInfo_communication_details_rowNum | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Primary Mobile Number | Postpaid         | personal_information.xlsx | communication_details              | 0                                         |          |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Primary Mobile Number | Prepaid          | personal_information.xlsx | communication_details              | 28                                        |          |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Other Mobile Numbers  | Postpaid         | personal_information.xlsx | communication_details              | 0                                         |          |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Other Mobile Numbers  | Prepaid          | personal_information.xlsx | communication_details              | 28                                        |          |     |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Mobile_Number         | Prepaid_Postpaid | PersonalInfoWB            | PersonalInfo_communication_details | PersonalInfo_communication_details_rowNum | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Primary Mobile Number | Postpaid         | personal_information.xlsx | communication_details              | 0                                         |          |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Primary Mobile Number | Prepaid          | personal_information.xlsx | communication_details              | 0                                         |          |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Other Mobile Numbers  | Postpaid         | personal_information.xlsx | communication_details              | 0                                         |          |     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Other Mobile Numbers  | Prepaid          | personal_information.xlsx | communication_details              | 0                                         |          |     |

  #12-CAS-59474
  #FeatureID-ACAUTOCAS-155,CAS-59474
  Scenario Outline: ACAUTOCAS-13443: <Field> field validation in Preferred Mode of Communication field at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open Communication Details accordion
    When user clicks on Preferred Mode of Communication field
    Then "<Field>" should be present in Preferred Mode of Communication field

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release3
    @Release @Part-2
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field         | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Email Address |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Phone Call    |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | SMS           |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field         | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Email Address |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Phone Call    |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | SMS           |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field         | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Email Address | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Phone Call    | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | SMS           | <Category> |     |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Field         | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Email Address |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Phone Call    |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | SMS           |          |     |

   #SquashID:19_CAS-59474
   #FeatureID-ACAUTOCAS-155,CAS-59474
  @AppInfoFixed5
  Scenario Outline: ACAUTOCAS-13444: Save communication details without filling <Primary_Official_EmailID> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_communication_details>" and row <PersonalInfo_communication_details_rowNum>
    And user open Communication Details accordion
    When user fills all filled except "<Primary_Official_EmailID>"
    Then communication details should not be saved with an error message

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release3
    @Release @Part-2
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Primary_Official_EmailID | PersonalInfoWB            | PersonalInfo_communication_details | PersonalInfo_communication_details_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Email ID         | personal_information.xlsx | communication_details              | 5                                         |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Primary_Official_EmailID | PersonalInfoWB            | PersonalInfo_communication_details | PersonalInfo_communication_details_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Email ID         | personal_information.xlsx | communication_details              | 5                                         |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Primary_Official_EmailID | PersonalInfoWB            | PersonalInfo_communication_details | PersonalInfo_communication_details_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Email ID         | personal_information.xlsx | communication_details              | 5                                         | <Category> |     |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Primary_Official_EmailID | PersonalInfoWB            | PersonalInfo_communication_details | PersonalInfo_communication_details_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Email ID         | personal_information.xlsx | communication_details              | 5                                         |          |     |

   #FeatureID-ACAUTOCAS-155,CAS-59474
  Scenario Outline: ACAUTOCAS-13445: Verification message should be display under  <EmailID> at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open Communication Details accordion
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_communication_details>" and row <PersonalInfo_communication_details_rowNum>
    And user fills "<EmailID>" in communication details
    When user clicks to verify the "<EmailID>"
    Then a message should be display under "<EmailID>" field that verification email is being sent to your filled email id

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release3
    @Release @Part-2
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | EmailID           | PersonalInfoWB            | PersonalInfo_communication_details | PersonalInfo_communication_details_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Email ID  | personal_information.xlsx | communication_details              | 1                                         |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Official Email ID | personal_information.xlsx | communication_details              | 1                                         |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | EmailID           | PersonalInfoWB            | PersonalInfo_communication_details | PersonalInfo_communication_details_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Email ID  | personal_information.xlsx | communication_details              | 1                                         |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Official Email ID | personal_information.xlsx | communication_details              | 1                                         |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | EmailID           | PersonalInfoWB            | PersonalInfo_communication_details | PersonalInfo_communication_details_rowNum | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Email ID  | personal_information.xlsx | communication_details              | 1                                         | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Official Email ID | personal_information.xlsx | communication_details              | 1                                         | <Category> |     |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | EmailID           | PersonalInfoWB            | PersonalInfo_communication_details | PersonalInfo_communication_details_rowNum | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Primary Email ID  | personal_information.xlsx | communication_details              | 1                                         |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Official Email ID | personal_information.xlsx | communication_details              | 1                                         |          |     |

  #FeatureID-ACAUTOCAS-155
  Scenario Outline: ACAUTOCAS-13446: <Save_Next> communication details at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to personal information page of "<ApplicationStage>"
    And user open Communication Details accordion
    And user checks for duplicates
    When user clicks on "<Save_Next>" button in personal information page
    Then communication details should be "<Save_Next>"

    # ${ProductType:["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL","FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Conventional
    @Release3
    @Release @Part-2
    @ImplementedBy-priyanshu.kashyap
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Save_Next   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Save        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Save & Next |          |     |

    # ${ProductType:["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Save_Next   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Save        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Save & Next |          |     |

    # ${ProductType:["IPF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration"]}
    # ${Category:["bonds"]}
    @FixedJsClick
    @Islamic
    @Release
@Part-2
    @ImplementedBy-tanya
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Save_Next   | Category   | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Save        | <Category> |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Save & Next | <Category> |     |

    # ${ProductType:["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
    # ${ApplicationStage:["DDE","Recommendation","Credit Approval","Reconsideration"]}
   @NotImplemented
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Save_Next   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Save        |          |     |
      | <ProductType> | <ApplicantType> | <ApplicationStage> | Save & Next |          |     |
