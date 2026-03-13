Feature: Guarantor details capturing for Credit Card application

  Scenario Outline: User should be able to add guarantor details for a credit card application
      Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
      When user add Guarantor in that Application
      Then guarantor should be added successfully in the application
      And sourcing details of the credit card application should be saved successfully
      And user should be able to sort all applications on "<CreditApproval_Grid>"

      @CreditApproval @Guarantor
      Examples:
        | col1 |
        | val1 |

  Scenario Outline: The Applicant Information screen should display the guarantor section when 'Guarantor' is selected as the applicant type
      Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
      When user opens detailed information of "guarantor" in applicant information
      Then guarantor should be added successfully in the application
      And additional existing individual applicant with applicant type as "<Applicant_Type>" should be displayed in applicant information page

      @CreditApproval @Guarantor
      Examples:
        | col1 |
        | val1 |

  Scenario Outline: System should validate mandatory guarantor fields before allowing save
      Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
      When user fills all mandatory fields required for security conditions on credit approval stage
      Then user validate that the message "Check for dedupe is Mandatory before save" should be displayed successfully

      @CreditApproval @Guarantor
      Examples:
        | col1 |
        | val1 |

  Scenario Outline: The relationship field should be displayed as mandatory when 'Guarantor' is selected as the applicant type
      Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
      When user fill Personal information with selecting relationship with existing applicant for "<NewApplicant>" applicant
      Then "<ApplicantType>" "<CustomerType>" with relationship type as "<RelationshipType>" added successfully

      @CreditApproval @Guarantor
      Examples:
        | col1 |
        | val1 |

  Scenario Outline: User should be able to remove a guarantor applicant
      Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
      When user removes "Guarantor" customer
      Then guarantor should be added successfully in the application
      And Application should be move to "Credit Approval" stage
      And user should be able to sort all applications on "<CreditApproval_Grid>"

      @CreditApproval @Guarantor
      Examples:
        | col1 |
        | val1 |

  Scenario Outline: The guarantor details piano bar should display all existing fields, buttons, and accordions to capture guarantor details
      Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
      When the Cash Credit Accordion is expanded
      Then on add view bank details following "<field_accordions>" should be present in bank details

      @CreditApproval @Guarantor
      Examples:
        | col1 |
        | val1 |
