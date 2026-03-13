Feature: Committee Decision Logic Change

  Scenario Outline: The system should store documents of account aggregator in a single document code
      Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
      When the system should create a history log entry for each document
      And user saves document
      Then in "Consolidated Average Balance" data should be automatically populated in Bank Details

      @DDE @AppInfo @Guarantor
      Examples:
        | col1 |
        | val1 |

  Scenario Outline: The system should ensure 100% member participation for final verdict
      Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
      When committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"
      And user fills collateral investigation decision verification
      Then percentage should get "<Validity>"

      @DDE @AppInfo @Guarantor
      Examples:
        | col1 |
        | val1 |

  Scenario Outline: The system should not finalize or block a verdict prematurely or indefinitely
      Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
      When committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"
      And subsequent disbursal should be done successfully
      Then System should not allow the user to save the collateral details

      @DDE @AppInfo @Guarantor
      Examples:
        | col1 |
        | val1 |

  Scenario Outline: The system should use the decision maker's vote to determine the committee verdict
      Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
      When committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"
      And user selects committee decision as "<UserDecision>"
      Then committee decision should be saved successfully

      @DDE @AppInfo @Guarantor
      Examples:
        | col1 |
        | val1 |

  Scenario Outline: The system should store other members' votes for audit and committee history
      Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
      When the system should create a history log entry for each document
      And user expands the Decision/Forward History at committee approval
      Then History should be maintain in audit trail and in activies

      @DDE @AppInfo @Guarantor
      Examples:
        | col1 |
        | val1 |

  Scenario Outline: The system should display committee members' tasks until all member decisions are captured
      Given all prerequisite are performed in previous scenario of "" logical id "<LogicalID>"
      When user selects a committee to take decision
      And user view the Decision at Decision Details in committee approval screen
      Then committee decision status display pending for all the committee members

      @DDE @AppInfo @Guarantor
      Examples:
        | col1 |
        | val1 |
