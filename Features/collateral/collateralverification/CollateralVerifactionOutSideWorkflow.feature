@Epic-Collateral_Investigation
@Feature-CollateralInvestigationVerification
@AuthoredBy-vipin.kishor
  @new
Feature:Collateral investigation verification

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    @ImplementedBy-tushar.chauhan
      @Release3
      #FeatureID-ACAUTOCAS-368
  Scenario Outline:Collateral investigation verification screen validation for <VerificationType>
    And user open collateral investigation verification page
    When user open an application which verification type is "<VerificationType>"
    Then following below fields should be present with correct data
      | Application ID     |
      | Product            |
      | Scheme             |
      | Customer Name      |
      | Collateral Number  |
      | Collateral Type    |
      | Collateral SubType |
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

  @ImplementedBy-tushar.chauhan
    @Release3
       #FeatureID-ACAUTOCAS-368
  Scenario Outline:Property Address details validation for <VerificationType> in collateral investigation verification
    And user open collateral investigation verification page
    When user open an application which verification type is "<VerificationType>"
    Then property address details should be present in collateral investigation verification
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

  @ImplementedBy-tushar.chauhan
    @Release3
      #FeatureID-ACAUTOCAS-368
  Scenario Outline:Contact Number validation for <VerificationType> in collateral investigation verification
    And user open collateral investigation verification page
    When user open an application which verification type is "<VerificationType>"
    Then Contact Number should be present in collateral investigation verification
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

  @ImplementedBy-tushar.chauhan
    @Release3
  # Prerequisites: Verification Type should be Legal Verification --> this is a seeded dynamic form for Legal/Technical Verification type.Same can be change as per customer maintenance
    #FeatureID-ACAUTOCAS-368
  Scenario Outline:Fields validation of <VerificationType> in collateral investigation verification
    And user open collateral investigation verification page
    When user open an application which verification type is "<VerificationType>"
    Then the following fields with their nature should be present on Legal Verification
      | Field                        | Nature        |
      | Search Done                  | mandatory     |
      | EC Search Done               | mandatory     |
      | Remarks                      | non mandatory |
      | Status                       | mandatory     |
      | Received Date                | mandatory     |
      | Search EC Check Findings     | non mandatory |
      | Document Received            | mandatory     |
      | Document Received Date       | non mandatory |
      | Initial Status Query Stage   | mandatory     |
      | Remarks                      | mandatory     |
      | Type Of Property             | mandatory     |
      | Plan Type                    | mandatory     |
      | Final Status                 | mandatory     |
      | Final Document Received Date | non mandatory |
    Examples:
      | VerificationType   |
      | Legal Verification |

  @ImplementedBy-tushar.chauhan
    @Release3
  #FeatureID-ACAUTOCAS-368
  Scenario Outline:Fields validation of <VerificationType> in collateral investigation valuation
    And user open collateral investigation verification page
    When user open an application which verification type is "<VerificationType>"
    Then the following fields with their nature should be present on Valuation
      | Field                                | Nature        |
      | Document Received                    | mandatory     |
      | Document Received Date               | mandatory     |
      | Initial Status Query Stage           | mandatory     |
      | Final Document Received Date         | mandatory     |
      | Base Document For Area               | mandatory     |
      | Usage Type                           | mandatory     |
      | Approved Usage As Per Authority      | mandatory     |
      | Approved Usage Others                | non mandatory |
      | Type Of Property                     | mandatory     |
      | Total                                | non mandatory |
      | Distress Value                       | mandatory     |
      | Age of Property                      | mandatory     |
      | Status                               | mandatory     |
      | Residual Age of Property             | mandatory     |
      | Remarks                              | non mandatory |
      | Percentage Completion Of Property(%) | mandatory     |
    Examples:
      | VerificationType |
      | Valuation        |

    #FeatureID-ACAUTOCAS-368
  Scenario Outline:Field type validation of Legal Verification fields in collateral investigation verification
    And user open collateral investigation verification page
    When user open an application which verification type is "<VerificationType>"
    Then the following fields with their type should be present on Legal Verification
      | Field                        | Type      |
      | Search Done                  | drop down |
      | EC Search Done               | drop down |
      | Remarks                      | textarea  |
      | Status                       | drop down |
      | Received Date                | input     |
      | Search EC Check Findings     | drop down |
      | Document Received            | drop down |
      | Document Received Date       | input     |
      | Initial Status Query Stage   | drop down |
      | Remarks                      | textarea  |
      | Type Of Property             | drop down |
      | Plan Type                    | drop down |
      | Final Status                 | drop down |
      | Final Document Received Date | input     |
    Examples:
      | VerificationType   |
      | Legal Verification |

        #FeatureID-ACAUTOCAS-368
  Scenario Outline:Field type validation of Legal Verification fields in collateral investigation valuation
    And user open collateral investigation verification page
    When user open an application which verification type is "<VerificationType>"
    Then the following fields with their type should be present on Valuation
      | Field                                | Type      |
      | Document Received                    | drop down |
      | Document Received Date               | input     |
      | Initial Status Query Stage           | drop down |
      | Final Document Received Date         | input     |
      | Base Document For Area               | drop down |
      | Usage Type                           | drop down |
      | Approved Usage As Per Authority      | drop down |
      | Approved Usage Others                | input     |
      | Type Of Property                     | drop down |
      | Total                                | input     |
      | Distress Value                       | input     |
      | Age of Property                      | input     |
      | Status                               | drop down |
      | Residual Age of Property             | input     |
      | Remarks                              | input     |
      | Percentage Completion Of Property(%) | input     |
    Examples:
      | VerificationType |
      | Valuation        |

  @ImplementedBy-tushar.chauhan
    @Release3
  #FeatureID-ACAUTOCAS-368
  Scenario Outline:<Field_Name> field validation of legal verification in collateral investigation verification with "<Validity>" "<InputType>"
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user fill "<Validity>" "<Field_Name>" with "<InputType>" of legal verification in collateral investigation verification
    Then "<Field_Name>" field "<Throws_notThrows>" error
    Examples:
      | VerificationType   | Field_Name                   | Validity | InputType              | Throws_notThrows |
      | Legal Verification | Received Date                | valid    | current date           | not throw any    |
      | Legal Verification | Received Date                | valid    | less than current date | not throw any    |
      | Legal Verification | Received Date                | valid    | more than current date | not throw any    |
      | Legal Verification | Received Date                | invalid  | incorrect date format  | throw an         |
      | Legal Verification | Received Date                | valid    | correct date format    | not throw any    |
      | Legal Verification | Received Date                | invalid  | before 1942            | throw an         |
      | Legal Verification | Document Received Date       | valid    | current date           | not throw any    |
      | Legal Verification | Document Received Date       | valid    | less than current date | not throw any    |
      | Legal Verification | Document Received Date       | valid    | more than current date | not throw any    |
      | Legal Verification | Document Received Date       | invalid  | incorrect date format  | throw an         |
      | Legal Verification | Document Received Date       | valid    | correct date format    | not throw any    |
      | Legal Verification | Document Received Date       | invalid  | before 1942            | throw an         |
      | Legal Verification | Final Document Received Date | valid    | current date           | not throw any    |
      | Legal Verification | Final Document Received Date | valid    | less than current date | not throw any    |
      | Legal Verification | Final Document Received Date | valid    | more than current date | not throw any    |
      | Legal Verification | Final Document Received Date | invalid  | incorrect date format  | throw an         |
      | Legal Verification | Final Document Received Date | valid    | correct date format    | not throw any    |
      | Legal Verification | Final Document Received Date | invalid  | before 1942            | throw an         |

   #FeatureID-ACAUTOCAS-368
  Scenario Outline:<Field_Name> field validation in legal verification under collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user fills "<Field_Name>" field with "<Characters>" in legal verification
    Then "<Left_Characters>" should be remaining to fill in "<Field_Name>" field of legal verification
    Examples:
      | VerificationType   | Field_Name | Characters | Left_Characters |
      | Legal Verification | Remarks    | 100        | 150             |
      | Legal Verification | Remarks    | 50         | 200             |
      | Legal Verification | Remarks    | 250        | 0               |

  #Static fields

     #FeatureID-ACAUTOCAS-368
  Scenario Outline:Fields validation of <VerificationType> in collateral investigation verification
    And user open collateral investigation verification page
    When user open an application which verification type is "<VerificationType>"
    Then the following fields with their nature should be present on Legal Verification
      | Fields              | Nature        |
      | Verification Agency | mandatory     |
      | Verification Agent  | mandatory     |
      | Verification Date   | mandatory     |
      | Result              | mandatory     |
      | Remarks             | non mandatory |
      | No. Of Attempts     | mandatory     |
    Examples:
      | VerificationType   |
      | Legal Verification |

  #FeatureID-ACAUTOCAS-368
  Scenario Outline:Field validation of <VerificationType> in collateral investigation valuation
    And user open collateral investigation verification page
    When user open an application which verification type is "<VerificationType>"
    Then the following fields with their nature should be present on Valuation
      | Fields            | Nature    |
      | Valuation Agency  | mandatory |
      | Evaluated By      | mandatory |
      | Evaluation Method | mandatory |
      | Valued Amount     | mandatory |
      | Valuation Date    | mandatory |
    Examples:
      | VerificationType |
      | Valuation        |

     #FeatureID-ACAUTOCAS-368
  Scenario Outline:Field type validation of <VerificationType> fields in collateral investigation verification
    And user open collateral investigation verification page
    When user open an application which verification type is "<VerificationType>"
    Then the following fields with their type should be present on Legal Verification
      | Field               | Type              |
      | Verification Agency | Disable drop down |
      | Verification Agent  | drop down         |
      | Verification Date   | input             |
      | Result              | drop down         |
      | Remarks             | textarea          |
      | No. Of Attempts     | input             |
    Examples:
      | VerificationType   |
      | Legal Verification |

  #FeatureID-ACAUTOCAS-368
  Scenario Outline:Field type validation of <VerificationType> fields in collateral investigation valuation
    And user open collateral investigation verification page
    When user open an application which verification type is "<VerificationType>"
    Then the following fields with their type should be present on Valuation
      | Field             | Type              |
      | Valuation Agency  | Disable drop down |
      | Evaluated By      | drop down         |
      | Evaluation Method | drop down         |
      | Valued Amount     | input             |
      | Valuation Date    | input             |
      | Valuation Time    | input             |
    Examples:
      | VerificationType |
      | Valuation        |

#FeatureID-ACAUTOCAS-368
  Scenario Outline:"<Field_Name>" field validation of <VerificationType> with "<Validity>" "<InputType>" in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user fill "<Validity>" "<Field_Name>" with "<InputType>" in collateral investigation verification
    Then "<Field_Name>" field "<Throws_notThrows>" error
    Examples:
      | VerificationType   | Field_Name        | Validity | InputType                          | Throws_notThrows         |
      | Legal Verification | Verification Date | valid    | current date                       | not throw any            |
      | Legal Verification | Verification Date | valid    | less than current date             | not throw any            |
      | Legal Verification | Verification Date | valid    | more than current date             | not throw any            |
      | Legal Verification | Verification Date | invalid  | incorrect date format              | throw an                 |
      | Legal Verification | Verification Date | valid    | correct date format                | not throw any            |
      | Legal Verification | Verification Date | invalid  | before 1942                        | throw an                 |
      | Legal Verification | No. Of Attempts   | valid    | digits                             | not throw any            |
      | Legal Verification | No. Of Attempts   | invalid  | characters                         | throw an                 |
      | Legal Verification | No. Of Attempts   | invalid  | zero                               | throw an                 |
      | Legal Verification | No. Of Attempts   | invalid  | digits with space                  | throw an                 |
      | Valuation          | Valuation Date    | valid    | current date                       | not throw any            |
      | Valuation          | Valuation Date    | valid    | less than current date             | not throw any            |
      | Valuation          | Valuation Date    | valid    | more than current date             | not throw any            |
      | Valuation          | Valuation Date    | invalid  | incorrect date format              | throw an                 |
      | Valuation          | Valuation Date    | valid    | correct date format                | not throw any            |
      | Valuation          | Valuation Date    | invalid  | before 1942                        | throw an                 |
      | Valuation          | Valued Amount     | invalid  | more than 18 digits                | throw an                 |
      | Valuation          | Valued Amount     | valid    | less than 18 digits                | does not throw any error |
      | Valuation          | Valued Amount     | invalid  | character                          | throw an                 |
      | Valuation          | Valued Amount     | invalid  | special character                  | throw an                 |
      | Valuation          | Valued Amount     | invalid  | negative values                    | throw an                 |
      | Valuation          | Valued Amount     | valid    | positive values and Upto 18 digits | does not throw any error |
      | Valuation          | Valued Amount     | invalid  | character with space               | throw an                 |
      | Valuation          | Valued Amount     | invalid  | digits with space                  | throw an                 |
      | Valuation          | Valuation Time    | valid    | HH:MM:SS format                    | not throw any            |



   #FeatureID-ACAUTOCAS-368
  Scenario Outline:<Field_Name> field validation in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user fills "<Field_Name>" field with "<Characters>" in collateral investigation verification
    Then "<Left_Characters>" should be remaining to fill in "<Field_Name>" field of collateral investigation verification
    Examples:
      | VerificationType   | Field_Name | Characters | Left_Characters |
      | Legal Verification | Remarks    | 100        | 155             |
      | Legal Verification | Remarks    | 55         | 200             |
      | Legal Verification | Remarks    | 255        | 0               |

  #Attachment
   #FeatureID-ACAUTOCAS-368
  Scenario Outline:Add <NoOfAttachments> attachments for <VerificationType> in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user add <NoOfAttachments> attachments in collateral investigation verification
    Then <NoOfAttachments> attachments should be attached successfully
    Examples:
      | VerificationType   | NoOfAttachments |
      | Legal Verification | Single          |
      | Legal Verification | Multiple        |
      | Valuation          | Single          |
      | Valuation          | Multiple        |

   #FeatureID-ACAUTOCAS-368
  Scenario Outline:Add duplicate attachments for <VerificationType> in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user add duplicate attachments in collateral investigation verification
    Then duplicate attachments should be attached successfully
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

   #FeatureID-ACAUTOCAS-368
  Scenario Outline:Add attachments with "<Attachment_Size>" size for <VerificationType> in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user add attachments with "<Attachment_Size>" size in collateral investigation verification
    Then attachments with "<Attachment_Size>" size should "<Attached>" successfully
    Examples:
      | VerificationType   | Attachment_Size | Attached        |
      | Legal Verification | 10MB            | be attached     |
      | Legal Verification | less than 10MB  | be attached     |
      | Legal Verification | more than 10MB  | not be attached |
      | Valuation          | 10MB            | be attached     |
      | Valuation          | less than 10MB  | be attached     |
      | Valuation          | more than 10MB  | not be attached |


   #FeatureID-ACAUTOCAS-368
  Scenario Outline:Add "<Attachment_Type>" attachments for <VerificationType> in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user add "<Attachment_Type>" attachments in collateral investigation verification
    Then "<Attachment_Type>" attachments should be attached successfully
    Examples:
      | VerificationType   | Attachment_Type |
      | Legal Verification | .xlsx           |
      | Legal Verification | .xls            |
      | Legal Verification | .csv            |
      | Legal Verification | .pdf            |
      | Legal Verification | .txt            |
      | Legal Verification | .bmp            |
      | Legal Verification | .jpg            |
      | Legal Verification | .gif            |
      | Legal Verification | .png            |
      | Legal Verification | .doc            |
      | Legal Verification | .docx           |
      | Legal Verification | .ods            |
      | Legal Verification | .odt            |
      | Legal Verification | .zip            |
      | Legal Verification | .rar            |
      | Valuation          | .xlsx           |
      | Valuation          | .xls            |
      | Valuation          | .csv            |
      | Valuation          | .pdf            |
      | Valuation          | .txt            |
      | Valuation          | .bmp            |
      | Valuation          | .jpg            |
      | Valuation          | .gif            |
      | Valuation          | .png            |
      | Valuation          | .doc            |
      | Valuation          | .docx           |
      | Valuation          | .ods            |
      | Valuation          | .odt            |
      | Valuation          | .zip            |
      | Valuation          | .rar            |

   #FeatureID-ACAUTOCAS-368
  Scenario Outline:Add invalid attachments for <VerificationType> in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user add invalid attachments in collateral investigation verification
    Then invalid attachments should not be attached with an error message
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

   #FeatureID-ACAUTOCAS-368
  Scenario Outline:Remove the added attachments for <VerificationType> in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user remove the added attachments in collateral investigation verification
    Then added attachments should be removed successfully
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

     #FeatureID-ACAUTOCAS-368
  @Sanity
  Scenario Outline:"<Save>" the "<VerificationType>" details in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user fills all required fields of "<VerificationType>"
    And user "<Save>" the "<VerificationType>" details
    Then "<VerificationType>" details should be "<Save>"
    Examples:
      | VerificationType   | Save |
      | Legal Verification | Save |
      | Valuation          | Save |

   #FeatureID-ACAUTOCAS-368
  @Sanity
  Scenario Outline:"<Save>" the <VerificationType> in collateral investigation verification with <Result> result
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user fills all required fields of "<VerificationType>" except result field
    And user fills verification result as "<Result>"
    And user "<Save>" the "<VerificationType>" details
    Then "<VerificationType>" details should be "<Save>"
    Examples:
      | VerificationType   | Save | Result   |
      | Legal Verification | Save | Positive |
      | Legal Verification | Save | Negative |
      | Legal Verification | Save | Neutral  |


 #FeatureID-ACAUTOCAS-368
  @Sanity
  Scenario Outline:"<Save>" the <VerificationType> in collateral investigation verification with <EvaluationMethod> method
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user fills all required fields of "<VerificationType>" except result field
    And user fills verification evaluation method as "<EvaluationMethod>"
    And user "<Save>" the "<VerificationType>" details
    Then "<VerificationType>" details should be "<Save>"
    Examples:
      | VerificationType | Save | EvaluationMethod |
      | Valuation        | Save | Circle rate      |
      | Valuation        | Save | Depreciation     |
      | Valuation        | Save | Invoice          |
      | Valuation        | Save | Market Rate      |


  @Sanity
    #FeatureID-ACAUTOCAS-368,CAS-87532
    # Squash:06_CAS-87532
  Scenario Outline:"<VerificationType>" details validation after <Save> in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user fills all required fields of "<VerificationType>"
    When user "<Save>" the "<VerificationType>" details
    And user open collateral investigation completion page
    And user search the application which "<Save>" with "<VerificationType>" details
    Then application should be present in collateral investigation completion grid
    Examples:
      | VerificationType   | Save         |
      | Valuation          | Save&Proceed |
      | Legal Verification | Save&Proceed |

   #FeatureID-ACAUTOCAS-368
  Scenario Outline:"<Save>" the <VerificationType> without filling <Field> field in CIV with <EvaluationMethod> method
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user fills all required fields of "<VerificationType>" except "<Field>" field
    And user "<Save>" the "<VerificationType>" details
    Then "<VerificationType>" details should not be "<Save>" with an error message
    Examples:
      | VerificationType   | Field              | Save         |
      | Legal Verification | Verification Agent | Save         |
      | Legal Verification | Verification Agent | Save&Proceed |
      | Legal Verification | Verification Date  | Save         |
      | Legal Verification | Verification Date  | Save&Proceed |
      | Legal Verification | Result             | Save         |
      | Legal Verification | Result             | Save&Proceed |
      | Legal Verification | No. Of Attempts    | Save         |
      | Legal Verification | No. Of Attempts    | Save&Proceed |
      | Valuation          | Evaluated By       | Save         |
      | Valuation          | Evaluated By       | Save&Proceed |
      | Valuation          | Evaluation Method  | Save         |
      | Valuation          | Evaluation Method  | Save&Proceed |
      | Valuation          | Valued Amount      | Save         |
      | Valuation          | Valued Amount      | Save&Proceed |
      | Valuation          | Valuation Date     | Save         |
      | Valuation          | Valuation Date     | Save&Proceed |

   #FeatureID-ACAUTOCAS-368
  Scenario Outline:Cancel the "<VerificationType>" details filling process in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user fills some fields of "<VerificationType>"
    And user cancel the "<VerificationType>" details filling process
    Then filling process should be cancel
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

   #FeatureID-ACAUTOCAS-368
  Scenario Outline:Minimize the Cancel CIV pop up screen of "<VerificationType>"
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Cancel CIV button
    When user minimize the Cancel CIV pop up screen
    Then Cancel CIV pop up screen should be minimized
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

   #FeatureID-ACAUTOCAS-368
  Scenario Outline:Maximize the minimize the Cancel CIV pop up screen of "<VerificationType>"
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Cancel CIV button
    And user minimize the Cancel CIV pop up screen
    When user maximize the minimized Cancel CIV pop up screen
    Then Cancel CIV pop up screen should be maximized
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

   #FeatureID-ACAUTOCAS-368
  Scenario Outline:Add <NoOfReasons> reason to Cancel CIV for "<VerificationType>"
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Cancel CIV button
    When user add "<NoOfReasons>" reason to Cancel CIV
    Then "<NoOfReasons>" reason should be added
    Examples:
      | VerificationType   | NoOfReasons |
      | Legal Verification | single      |
      | Valuation          | single      |
      | Legal Verification | multiple    |
      | Valuation          | multiple    |

#FeatureID-ACAUTOCAS-368
  Scenario Outline:Delete the <NoOfReasons> added reasons to Cancel CIV for "<VerificationType>"
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Cancel CIV button
    When user add "<NoOfReasons>" reason to Cancel CIV
    And user delete the "<NoOfReasons>" added reasons
    Then "<NoOfReasons>" added reasons should be delete
    Examples:
      | VerificationType   | NoOfReasons |
      | Legal Verification | multiple    |
      | Valuation          | multiple    |

   #FeatureID-ACAUTOCAS-368
  Scenario Outline:<Field_Name> field validation while cancelling CIV
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Cancel CIV button
    When user fills "<Field_Name>" field with "<Characters>" while cancelling CIV
    Then "<Left_Characters>" should be remaining to fill in "<Field_Name>" field of while cancelling CIV
    Examples:
      | VerificationType   | Field_Name | Characters | Left_Characters |
      | Legal Verification | Comments   | 1000       | 3000            |
      | Legal Verification | Comments   | 2000       | 2000            |
      | Legal Verification | Comments   | 4000       | 0               |
      | Valuation          | Comments   | 1000       | 3000            |
      | Valuation          | Comments   | 2000       | 2000            |
      | Valuation          | Comments   | 4000       | 0               |

  #FeatureID-ACAUTOCAS-368
  Scenario Outline:Cancel the filling process of Cancel CIV for "<VerificationType>" details
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Cancel CIV button
    When user fills some fields of Cancel CIV
    And user cancel the filling process of Cancel CIV
    Then filling process of Cancel CIV should be cancel
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |

   #Sqush:05_CAS-106867
  #FeatureID-ACAUTOCAS-368,CAS-106867
  Scenario Outline:On cancelling the any created <VerificationType> task the application shall not move to CIC stage
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user cancel the by providing reason to cancel it
    Then CIV should be cancelled,not moved to CIC stage
    Examples:
      | VerificationType   |
      | Valuation          |
      | Legal Verification |


  #FeatureID-ACAUTOCAS-368,CAS-106867
  Scenario Outline:"<Save>" the "<VerificationType>" details without capturing any data in collateral investigation verification
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    When user "<Save>" the "<VerificationType>" details
    Then "<VerificationType>" details should not be "<Save>" with an error message
    Examples:
      | VerificationType   | Save         |
      | Legal Verification | Save         |
      | Valuation          | Save&Proceed |
      | Legal Verification | Save&Proceed |
      | Valuation          | Save         |

    #FeatureID-ACAUTOCAS-368,CAS-106867
  Scenario Outline:Re initiate the cancelled <VerificationType> CIV task from CII stage
    And user open collateral investigation verification page
    And user open an application which verification type is "<VerificationType>"
    And user cancel the CIV by providing reason to cancel it
    And now user open collateral investigation initiation page
    And user open cancelled CIV application
    And user clicks on initiate valuation verification button
    And user selects verification type as "<VerificationType>"
    And user selects verification agency
    When user initiate verification for collateral investigation
    Then cancelled CIV task should be re initiated successfully
    Examples:
      | VerificationType   |
      | Legal Verification |
      | Valuation          |
