// XP

CREATE (XP:Method {name: 'Extreme Programming'})

CREATE (TestDrivenDevelopment:Practice {name: 'Test-Driven Development'})-[:PRACTICE_OF]->(XP)
CREATE (PairProgramming:Practice {name: 'Pair Programming'})-[:PRACTICE_OF]->(XP)
CREATE (ContinuousIntegration:Practice {name: 'Continuous Integration'})-[:PRACTICE_OF]->(XP)
CREATE (CodingStandards:Practice {name: 'Coding Standards'})-[:PRACTICE_OF]->(XP)
CREATE (CollectiveCodeOwnership:Practice {name: 'Collective Code Ownership'})-[:PRACTICE_OF]->(XP)
CREATE (OnsiteCustomer:Practice {name: 'Onsite Customer'})-[:PRACTICE_OF]->(XP)
CREATE (IterationPlanning:Practice {name: 'Iteration Planning'})-[:PRACTICE_OF]->(XP)
CREATE (UserStories:Practice {name: 'User Stories'})-[:PRACTICE_OF]->(XP)

// Kanban

CREATE (Kanban:Method {name: 'Kanban'})

// Kanban Core Practices

CREATE (Visualization:Practice { name: 'Visualization', code: 'VZ' })-[:PRACTICE_OF]->(Kanban)
CREATE (LimitWIP:Practice {name: 'Limit Work-in-Progress', code: 'LW'})-[:PRACTICE_OF]->(Kanban)
CREATE (ManageFlow:Practice {name: 'Manage Flow', code: 'MF'})-[:PRACTICE_OF]->(Kanban)
CREATE (ExplicitPolicies:Practice {name: 'Explicit Policies', code: 'XP'})-[:PRACTICE_OF]->(Kanban)
CREATE (FeedbackLoops:Practice {name: 'Implement Feedback Loops', code: 'FL'})-[:PRACTICE_OF]->(Kanban)
CREATE (ImproveCollaboratively:Practice {name: 'Improve Collaboratively, Evolve Experimentally', code: 'IE'})-[:PRACTICE_OF]->(Kanban)

// Kanban Cadences

CREATE (StrategyReview:Practice {name: 'Strategy Review'})-[:MEETING_OF]->(Kanban)
CREATE (OperationsReview:Practice {name: 'Operations Review'})-[:MEETING_OF]->(Kanban)
CREATE (RiskReview:Practice {name: 'Risk Review'})-[:MEETING_OF]->(Kanban)
CREATE (ServiceDeliveryReview:Practice {name: 'Service Delivery Review'})-[:MEETING_OF]->(Kanban)
CREATE (ReplenishmentMeeting:Practice {name: 'Replenishment/Commitment Meeting'})-[:MEETING_OF]->(Kanban)
CREATE (DailyStandup:Practice {name: 'Daily Standup'})-[:MEETING_OF]->(Kanban)
CREATE (DeliveryPlanning:Practice {name: 'Delivery Planning Meeting'})-[:MEETING_OF]->(Kanban)

// Kanban Maturity Model

CREATE (KMM:MaturityModel {name: 'Kanban Maturity Model'})

CREATE (ML0:MaturityLevel {name: 'Oblivious', code: 'ML0'})-[:LEVEL_OF]->(KMM)
CREATE (ML1:MaturityLevel {name: 'Emerging', code: 'ML1'})-[:LEVEL_OF]->(KMM)
CREATE (ML2:MaturityLevel {name: 'Defined', code: 'ML2'})-[:LEVEL_OF]->(KMM)
CREATE (ML3:MaturityLevel {name: 'Managed', code: 'ML3'})-[:LEVEL_OF]->(KMM)
CREATE (ML4:MaturityLevel {name: 'Quantitatively Managed', code: 'ML4'})-[:LEVEL_OF]->(KMM)
CREATE (ML5:MaturityLevel {name: 'Optimizing', code: 'ML5'})-[:LEVEL_OF]->(KMM)
CREATE (ML6:MaturityLevel {name: 'Congruent', code: 'ML6'})-[:LEVEL_OF]->(KMM)

CREATE (VZ0_1:Practice {name: 'Visualize an individual’s work by means of a personal kanban board.', code: 'VZ0.1'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ0_2:Practice {name: 'Visualize basic work item related information on a ticket.', code: 'VZ0.2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ1_1:Practice {name: 'Visualize work for several individuals by means of an aggregated personal kanban board.', code: 'VZ1.1'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ1_2:Practice {name: 'Visualize the work carried out by a team by means of a team kanban board.', code: 'VZ1.2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ1_3:Practice {name: 'Use avatars to visualize an individual’s workload.', code: 'VZ1.3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ1_4:Practice {name: 'Visualize initial policies.', code: 'VZ1.4'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ1_5:Practice {name: 'Visualize teamwork by means of an emergent workflow kanban board.', code: 'VZ1.5'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_1:Practice {name: 'Visualize work items by means of a delivery kanban board with per- person WIP limits.', code: 'VZ2.1'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_2:Practice {name: 'Visualize work types by means of card colors or board rows.', code: 'VZ2.2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_3:Practice {name: 'Visualize blocked work items.', code: 'VZ2.3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_4:Practice {name: 'Visualize development of options by means of a discovery kanban board.', code: 'VZ2.4'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_5:Practice {name: 'Visualize individual workload on a discovery kanban board by means of per-person WIP limits, potentially implemented using avatars.', code: 'VZ2.5'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_6:Practice {name: 'Visualize basic policies.', code: 'VZ2.6'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_7:Practice {name: 'Ticket design: Visualize concurrent or unordered activities with checkboxes.', code: 'VZ2.7'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_8:Practice {name: 'Ticket design: Visualize concurrent activities performed by specialist teams using partial rows.', code: 'VZ2.8'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_9:Practice {name: 'Board design: Visualize sequential activities where no dependency or preferred sequence exists using rows or vertical spaces.', code: 'VZ2.9'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_10:Practice {name: 'Visualize defects and other rework types.', code: 'VZ2.10'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_11:Practice {name: 'Use CONWIP with an emergent workflow delivery kanban board to provide workflow-level relief from overburdening and basic mechanics of a pull system, with separate replenishment and delivery cadences.', code: 'VZ2.11'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_12:Practice {name: 'Visualize workflow by means of enhanced discovery/delivery boards.', code: 'VZ2.12'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_13:Practice {name: 'Visualize project progress on a portfolio kanban board.', code: 'VZ2.13'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_1:Practice {name: 'Visualize “ready to commit” status, also known as “ready to pull.”', code: 'VZ3.1'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_2:Practice {name: 'Visualize “ready to pull” criteria, also known as “definition of ready,” or “entry criteria.”', code: 'VZ3.2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_3:Practice {name: 'Visualize workflow and teamwork items by means of aggregated team kanban board.', code: 'VZ3.3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_4:Practice {name: 'Visualize project work items on a two-tiered project kanban board.', code: 'VZ3.4'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_5:Practice {name: 'Visualize parent–child and peer–peer dependencies.', code: 'VZ3.5'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_6:Practice {name: 'Use a parking lot to visualize dependent work requests of another service or system currently waiting or blocked.', code: 'VZ3.6'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_7:Practice {name: 'Visualize upstream options by means of an upstream/discovery kanban board.', code: 'VZ3.7'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_8:Practice {name: 'Visualize discarded options using a bin on an upstream/discovery kanban board.', code: 'VZ3.8'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_9:Practice {name: 'Visualize replenishment signals.', code: 'VZ3.9'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_10:Practice {name: 'Visualize pull signals.', code: 'VZ3.10'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_11:Practice {name: 'Visualize pull criteria (also known as “pull policies,” “definition of ready,” or “exit criteria”).', code: 'VZ3.11'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_12:Practice {name: 'Visualize available capacity.', code: 'VZ3.12'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_13:Practice {name: 'Visualize work item aging.', code: 'VZ3.13'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_14:Practice {name: 'Visualize target date or SLA.', code: 'VZ3.14'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_15:Practice {name: 'Visualize failure demand versus value demand.', code: 'VZ3.15'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_16:Practice {name: 'Visualize aborted work.', code: 'VZ3.16'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_17:Practice {name: 'Visualize class of service using ticket colors, board rows, or ticket decorators.', code: 'VZ3.17'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_18:Practice {name: 'Use Earned Value portfolio kanban board to visualize project progress and schedule or budget risk.', code: 'VZ3.18'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ4_1:Practice {name: 'Visualize local cycle time.', code: 'VZ4.1'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ4_2:Practice {name: 'Use ticket decorators to indicate risks.', code: 'VZ4.2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ4_3:Practice {name: 'Visualize risk classes with different swim lanes', code: 'VZ4.3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ4_4:Practice {name: 'Visualize split-and-merge workflows.', code: 'VZ4.4'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ4_5:Practice {name: 'Visualize WIP limits on dependencies parking lot.', code: 'VZ4.5'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ4_6:Practice {name: 'Visualize waiting time in dependencies parking lot.', code: 'VZ4.6'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ4_7:Practice {name: 'Visualize SLA exceeded in dependencies parking lot.', code: 'VZ4.7'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ5_1:Practice {name: 'Visualize fixed teams and floating workers (shared resources) across aggregated services.', code: 'VZ5.1'})-[:SPECIALISM_OF]->(Visualization)
CREATE (LW0_1:Practice {name: 'Establish personal WIP limits.', code: 'LW0.1'})-[:SPECIALISM_OF]->(LimitWIP)
CREATE (LW1_1:Practice {name: 'Establish per-person WIP limits.', code: 'LW1.1'})-[:SPECIALISM_OF]->(LimitWIP)
CREATE (LW1_2:Practice {name: 'Establish team WIP limits.', code: 'LW1.2'})-[:SPECIALISM_OF]->(LimitWIP)
CREATE (LW2_1:Practice {name: 'Establish activity based WIP limits.', code: 'LW2.1'})-[:SPECIALISM_OF]->(LimitWIP)
CREATE (LW2_2:Practice {name: 'Establish CONWIP limits on emergent workflow.', code: 'LW2.2'})-[:SPECIALISM_OF]->(LimitWIP)
CREATE (LW3_1:Practice {name: 'Use an order point (min limit) for upstream replenishment.', code: 'LW3.1'})-[:SPECIALISM_OF]->(LimitWIP)
CREATE (LW3_2:Practice {name: 'Use a max limit to define capacity.', code: 'LW3.2'})-[:SPECIALISM_OF]->(LimitWIP)
CREATE (LW3_3:Practice {name: 'Bracket WIP limits for different states.', code: 'LW3.3'})-[:SPECIALISM_OF]->(LimitWIP)
CREATE (LW4_1:Practice {name: 'Limit WIP on dependency parking lot.', code: 'LW4.1'})-[:SPECIALISM_OF]->(LimitWIP)
CREATE (MF0_1:Practice {name: 'Define work types based on nature of tasks.', code: 'MF0.1'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF2_1:Practice {name: 'Define work types based on customer requests.', code: 'MF2.1'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF2_2:Practice {name: 'Map upstream and downstream flow.', code: 'MF2.2'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF2_3:Practice {name: 'Manage blocking issues.', code: 'MF2.3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF2_4:Practice {name: 'Manage defects and other rework types.', code: 'MF2.4'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF3_1:Practice {name: 'Organize around the knowledge discovery process.', code: 'MF3.1'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF3_2:Practice {name: 'Defer commitment (decide at the “last responsible moment.”)', code: 'MF3.2'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF3_3:Practice {name: 'Use cumulative flow diagram to monitor queues.', code: 'MF3.3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF3_4:Practice {name: 'Use Little’s Law.', code: 'MF3.4'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF3_5:Practice {name: 'Gradually eliminate infinite buffers.', code: 'MF3.5'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF3_6:Practice {name: 'Report rudimentary flow efficiency to understand the value of reducing buffers and the leverage of eliminating sources of delay.', code: 'MF3.6'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF3_7:Practice {name: 'Actively close upstream requests that meet the abandonment', code: 'MF3.7'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF3_8:Practice {name: 'Develop triage discipline.', code: 'MF3.8'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF3_9:Practice {name: 'Manage dependencies.', code: 'MF3.9'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF3_10:Practice {name: 'Analyze and report aborted work items.', code: 'MF3.10'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF3_11:Practice {name: 'Use classes of service to affect selection.', code: 'MF3.11'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF3_12:Practice {name: 'Forecast delivery.', code: 'MF3.12'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF3_13:Practice {name: 'Apply qualitative Real Options Thinking.', code: 'MF3.13'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF4_1:Practice {name: 'Collect and report detailed flow efficiency analysis.', code: 'MF4.1'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF4_2:Practice {name: 'Use explicit buffers to smooth flow.', code: 'MF4.2'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF4_3:Practice {name: 'Use two-phase commit for delivery commitment.', code: 'MF4.3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF4_4:Practice {name: 'Analyze to anticipate dependencies.', code: 'MF4.4'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF4_5:Practice {name: 'Establish refutable versus irrefutable demand.', code: 'MF4.5'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF4_6:Practice {name: 'Determine reference class data set.', code: 'MF4.6'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF4_7:Practice {name: 'Forecast using reference classes, Monte Carlo simulations, and other models.', code: 'MF4.7'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF4_8:Practice {name: 'Allocate capacity across swim lanes.', code: 'MF4.8'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF4_9:Practice {name: 'Allocate capacity by color of work item.', code: 'MF4.9'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF4_10:Practice {name: 'Make appropriate use of forecasting.', code: 'MF4.10'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF4_11:Practice {name: 'Assess forecasting models for robustness.', code: 'MF4.11'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF4_12:Practice {name: 'Use statistical methods for decision making.', code: 'MF4.12'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF5_1:Practice {name: 'Utilize hybrid fixed service teams together with a flexible labor pool.', code: 'MF5.1'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (XP0_1:Practice {name: 'Define personal kanban policies.', code: 'XP0.1'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP1_1:Practice {name: 'Define initial policies.', code: 'XP1.1'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP2_1:Practice {name: 'Define initial services.', code: 'XP2.1'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP2_2:Practice {name: 'Elaborate further policies.', code: 'XP2.2'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP2_3:Practice {name: 'Define blocking issue escalation policies.', code: 'XP2.3'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP2_4:Practice {name: 'Define policies for managing defects and other rework types.', code: 'XP2.4'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP3_1:Practice {name: 'Establish explicit purpose of metrics.', code: 'XP3.1'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP3_2:Practice {name: 'Establish initial request acceptance policies.', code: 'XP3.2'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP3_3:Practice {name: 'Define work request abandonment policies.', code: 'XP3.3'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP3_4:Practice {name: 'Establish replenishment commitment point.', code: 'XP3.4'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP3_5:Practice {name: 'Establish pull criteria.', code: 'XP3.5'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP3_6:Practice {name: 'Establish a delivery commitment point.', code: 'XP3.6'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP3_7:Practice {name: 'Establish customer acceptance criteria for each work item or a class', code: 'XP3.7'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP3_8:Practice {name: 'Define classes of service.', code: 'XP3.8'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP4_1:Practice {name: 'Explicitly define fitness-for-purpose, and manage based on metrics.', code: 'XP4.1'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP4_2:Practice {name: 'Establish demand shaping policies.', code: 'XP4.2'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP4_3:Practice {name: 'Establish SLA on dependent services.', code: 'XP4.3'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP5_1:Practice {name: 'Align strategy and capability.', code: 'XP5.1'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (FL0_1:Practice {name: 'Engage in personal reflection.', code: 'FL0.1'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL1_1:Practice {name: 'Conduct Kanban Meeting.', code: 'FL1.1'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL2_1:Practice {name: 'Conduct internal team Replenishment Meeting.', code: 'FL2.1'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL2_2:Practice {name: 'Hold a Team Retrospective.', code: 'FL2.2'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL3_1:Practice {name: 'Conduct Replenishment Meeting.', code: 'FL3.1'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL3_2:Practice {name: 'Conduct Suggestion Box Review.', code: 'FL3.2'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL3_3:Practice {name: 'Conduct System Capability Review.', code: 'FL3.3'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL3_4:Practice {name: 'Conduct Delivery Planning Meeting.', code: 'FL3.4'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL3_5:Practice {name: 'Conduct Service Delivery Review.', code: 'FL3.5'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL3_6:Practice {name: 'Conduct Options Review (upstream).', code: 'FL3.6'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL4_1:Practice {name: 'Conduct Risk Review.', code: 'FL4.1'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL4_2:Practice {name: 'Conduct Portfolio Review.', code: 'FL4.2'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL4_3:Practice {name: 'Conduct Operations Review.', code: 'FL4.3'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL5_1:Practice {name: 'Conduct Strategy Review.', code: 'FL5.1'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (IE2_1:Practice {name: 'Identify sources of dissatisfaction.', code: 'IE2.1'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (IE2_2:Practice {name: 'Identify problematic policies.', code: 'IE2.2'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (IE3_1:Practice {name: 'Suggest improvements using a suggestion box.', code: 'IE3.1'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (IE3_2:Practice {name: 'Identify sources of delay.', code: 'IE3.2'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (IE3_3:Practice {name: 'Analyze blocker likelihood and impact.', code: 'IE3.3'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (IE3_4:Practice {name: 'Analyze lead time tail risk.', code: 'IE3.4'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (IE3_5:Practice {name: 'After meetings: discuss a problem spontaneously, and bring it to the Service Delivery Review', code: 'IE3.5'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (IE4_1:Practice {name: 'Develop qualitative understanding of common versus special cause for process performance variation.', code: 'IE4.1'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (IE4_2:Practice {name: 'Identify the impact of shared resources.', code: 'IE4.2'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (IE4_3:Practice {name: 'Identify bottleneck and resolve it.', code: 'IE4.3'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (IE4_4:Practice {name: 'Identify transaction and coordination costs.', code: 'IE4.4'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (IE4_5:Practice {name: 'Develop quantitative understanding of common versus chance cause for process performance variation.', code: 'IE4.5'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (IE5_1:Practice {name: 'After meetings: Discuss – Suggest – Take actions – Seek forgiveness.', code: 'IE5.1'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (IE6_1:Practice {name: 'After meetings: Take congruent actions with confidence.', code: 'IE6.1'})-[:SPECIALISM_OF]->(ImproveCollaboratively)

// Continuous Delivery

CREATE (ContinuousDeliveryBook:Book {name: 'Continuous Delivery', isbn: '9780321601919'})
CREATE (ContinuousDelivery:Practice {name: 'Continuous Delivery'})-[:SOURCE]->(ContinuousDeliveryBook)

// Measures from Accelerate

CREATE (Accelerate:Book {name: 'Accelerate'})
CREATE (DeploymentFrequency:Measure {name: 'Deployment Frequency'})-[:SOURCE]->(Accelerate)
CREATE (LeadTime:Measure {name: 'Lead Time for Change'})-[:SOURCE]->(Accelerate)
CREATE (MTTR:Measure {name: 'Mean Time to Restore'})-[:SOURCE]->(Accelerate)
CREATE (ChangeFailureRate:Measure {name: 'Change Failure Rate'})-[:SOURCE]->(Accelerate)

CREATE (OrganizationalPerformance:Measure {name: 'Organizational Performance'})

CREATE (Identity:Measure {name: 'Identity'})
CREATE (Identity)-[:IMPACTS]->(OrganizationalPerformance)
CREATE (WestrumOrganizationalCulture:Measure {name: 'Westrum Organizational Culture'})

CREATE (SoftwareDeliveryPerformance:Measure {name: 'Software Delivery Performance'})
CREATE (SoftwareDeliveryPerformance)-[:DRIVER_OF]->(OrganizationalPerformance)
CREATE (SoftwareDeliveryPerformance)-[:COMPOSED_OF]->(DeploymentFrequency)
CREATE (SoftwareDeliveryPerformance)-[:COMPOSED_OF]->(LeadTime)
CREATE (SoftwareDeliveryPerformance)-[:COMPOSED_OF]->(MTTR)
CREATE (SoftwareDeliveryPerformance)-[:COMPOSED_OF]->(ChangeFailureRate)

CREATE (WestrumOrganizationalCulture)-[:IMPACTS]->(SoftwareDeliveryPerformance)
CREATE (WestrumOrganizationalCulture)-[:IMPACTS]->(OrganizationalPerformance)

CREATE (Burnout:Measure {name: 'Burnout'})

CREATE (LeanManagement:Practice {name: 'Lean Management'})
CREATE (LeanManagement)-[:COMPOSED_OF]->(LimitWIP)
CREATE (LeanManagement)-[:COMPOSED_OF]->(Visualization)
CREATE (FeedbackFromProduction:Practice {name: 'Feedback from Production'})
CREATE (LeanManagement)-[:COMPOSED_OF]->(FeedbackFromProduction)
CREATE (LightweightChangeApprovals:Practice {name: 'Lightweight Change Approvals'})
CREATE (LeanManagement)-[:COMPOSED_OF]->(LightweightChangeApprovals)
CREATE (LeanManagement)-[:IMPACTS]->(WestrumOrganizationalCulture)
CREATE (LeanManagement)-[:IMPACTS]->(SoftwareDeliveryPerformance)
CREATE (LeanManagement)-[:IMPACTS]->(Burnout)
CREATE (Rework:Measure {name: 'Rework'})
CREATE (JobSatisfaction:Measure {name: 'Job Satisfaction'})

CREATE (ContinuousDelivery)-[:IMPACTS]->(WestrumOrganizationalCulture)
CREATE (ContinuousDelivery)-[:IMPACTS]->(SoftwareDeliveryPerformance)
CREATE (ContinuousDelivery)-[:IMPACTS]->(JobSatisfaction)
CREATE (ContinuousDelivery)-[:IMPACTS]->(Identity)
CREATE (ContinuousDelivery)-[:IMPACTS]->(Rework)

CREATE (LeanManagement)-[:IMPACTS]->(Identity)
CREATE (LeanManagement)-[:IMPACTS]->(JobSatisfaction)

CREATE (JobSatisfaction)-[:IMPACTS]->(OrganizationalPerformance)

CREATE (DeploymentPain:Measure {name: 'Deployment Pain'})

CREATE (ContinuousDelivery)-[:IMPACTS]->(DeploymentPain)
CREATE (ContinuousDelivery)-[:IMPACTS]->(Burnout)

CREATE (SmallBatches:Practice {name: 'Work in Small Batches'})
CREATE (MakeWorkVisible:Practice {name: 'Make Flow of Work Visible'})
CREATE (GatherCustomerFeedback:Practice {name: 'Gather & Implement Customer Feedback'})
CREATE (TeamExperimentation:Practice {name: 'Team Experimentation'})

CREATE (LeanProductDevelopment:Practice {name: 'Lean Product Development'})
CREATE (LeanProductDevelopment)-[:COMPOSED_OF]->(SmallBatches)
CREATE (LeanProductDevelopment)-[:COMPOSED_OF]->(MakeWorkVisible)
CREATE (LeanProductDevelopment)-[:COMPOSED_OF]->(GatherCustomerFeedback)
CREATE (LeanProductDevelopment)-[:COMPOSED_OF]->(TeamExperimentation)

CREATE (LeanProductDevelopment)-[:IMPACTS]->(SoftwareDeliveryPerformance)
CREATE (SoftwareDeliveryPerformance)-[:IMPACTS]->(LeanProductDevelopment)

CREATE (LeanProductDevelopment)-[:IMPACTS]->(OrganizationalPerformance)
CREATE (LeanProductDevelopment)-[:IMPACTS]->(WestrumOrganizationalCulture)
CREATE (LeanProductDevelopment)-[:IMPACTS]->(Burnout)

CREATE (TransformationalLeadership:Practice {name: 'Transformational Leadership'})
CREATE (Vision:Practice {name: 'Vision'})<-[:COMPOSED_OF]-(TransformationalLeadership)
CREATE (InspirationalCommunication:Practice {name: 'Inspirational Communication'})<-[:COMPOSED_OF]-(TransformationalLeadership)
CREATE (IntellectualStimulation:Practice {name: 'Intellectual Stimulation'})<-[:COMPOSED_OF]-(TransformationalLeadership)
CREATE (SupportiveLeadership:Practice {name: 'Supportive Leadership'})<-[:COMPOSED_OF]-(TransformationalLeadership)
CREATE (PersonalRecognition:Practice {name: 'Personal Recognition'})<-[:COMPOSED_OF]-(TransformationalLeadership)

CREATE (DeploymentAutomation:Practice {name: 'DeploymentAutomation'})-[:DRIVER_OF]->(ContinuousDelivery)
CREATE (TBD:Practice {name: 'Trunk-Based Development'})-[:DRIVER_OF]->(ContinuousDelivery)
CREATE (TestAutomation:Practice {name: 'Test Automation'})-[:DRIVER_OF]->(ContinuousDelivery)
CREATE (TestDataManagement:Practice {name: 'Test Data Management'})-[:DRIVER_OF]->(ContinuousDelivery)
CREATE (ShiftLeft:Practice {name: 'Shift Left on Security'})-[:DRIVER_OF]->(ContinuousDelivery)
CREATE (LooselyCoupledArch:Practice {name: 'Loosely Coupled Architecture'})-[:DRIVER_OF]->(ContinuousDelivery)
CREATE (EmpoweredTeams:Practice {name: 'Empowered Teams'})-[:DRIVER_OF]->(ContinuousDelivery)
CREATE (Monitoring:Practice {name: 'Monitoring'})-[:DRIVER_OF]->(ContinuousDelivery)
CREATE (ProacticeNotification:Practice {name: 'Proactive Notification'})-[:DRIVER_OF]->(ContinuousDelivery)
CREATE (ContinuousIntegration)-[:DRIVER_OF]->(ContinuousDelivery) // From XP

CREATE (TransformationalLeadership)-[:IMPACTS]->(TestAutomation)
CREATE (TransformationalLeadership)-[:IMPACTS]->(DeploymentAutomation)
CREATE (TransformationalLeadership)-[:IMPACTS]->(TBD)
CREATE (TransformationalLeadership)-[:IMPACTS]->(ShiftLeft)
CREATE (TransformationalLeadership)-[:IMPACTS]->(LooselyCoupledArch)
CREATE (TransformationalLeadership)-[:IMPACTS]->(EmpoweredTeams)
CREATE (TransformationalLeadership)-[:IMPACTS]->(ContinuousIntegration)
CREATE (TransformationalLeadership)-[:IMPACTS]->(TeamExperimentation)
CREATE (TransformationalLeadership)-[:IMPACTS]->(SmallBatches)
CREATE (TransformationalLeadership)-[:IMPACTS]->(GatherCustomerFeedback)

// Test Automation

CREATE (BDD:Practice {name: 'BDD'}) 
CREATE (ATDD:Practice {name: 'ATDD'})
CREATE (ThreeAmigos:Practice {name: '3 Amigos'})
CREATE (SBE:Practice {name: 'Specification by Example'})

// Scrum

CREATE (Scrum:Framework {name: 'Scrum'})

CREATE (SprintPlanning:Practice {name: 'Sprint Planning'})-[:MEETING_OF]->(Scrum)
CREATE (SprintRetrospective:Practice {name: 'Sprint Retrospective'})-[:MEETING_OF]->(Scrum)
CREATE (SprintReview:Practice {name: 'Sprint Review'})-[:MEETING_OF]->(Scrum)
CREATE (DailyScrum:Practice {name: 'Daily Scrum'})-[:MEETING_OF]->(Scrum)

CREATE (DailyScrum)-[:ALSO_KNOWN_AS]->(DailyStandup)
CREATE (SprintPlanning)-[:ALSO_KNOWN_AS]->(IterationPlanning)

CREATE (DefinitionOfReady {name: 'Definition of Ready'})-[:EXTENDS]->(ExplicitPolicies)
CREATE (DefinitionOfDone {name: 'Definition of Done'})-[:EXTENDS]->(ExplicitPolicies)

// LeSS

CREATE (LeSS:Framework {name: 'LeSS'})-[:SCALES]->(Scrum)

CREATE (SprintPlanningOne:Practice {name: 'Sprint Planning One'})-[:MEETING_OF]->(LeSS)
CREATE (SprintPlanningTwo:Practice {name: 'Sprint Planning Two'})-[:MEETING_OF]->(LeSS)
CREATE (OverallRetrospective:Practice {name: 'Overall Retrospective'})-[:MEETING_OF]->(LeSS)

// Nexus

CREATE (Nexus:Framework {name: 'Nexus'})-[:SCALES]->(Scrum)
CREATE (NexusSprintPlanning:Practice {name: 'Nexus Sprint Planning'})-[:MEETING_OF]->(Nexus)
CREATE (NexusSprintRetrospective:Practice {name: 'Nexus Sprint Retrospective'})-[:MEETING_OF]->(Nexus)
CREATE (NexusDailyScrum:Practice {name: 'Nexus Daily Scrum'})-[:MEETING_OF]->(Nexus)
CREATE (NexusSprintReview:Practice {name: 'Nexus Sprint Review'})-[:MEETING_OF]->(Nexus)

// DSDM

CREATE (DSDM:Framework {name: 'DSDM'})
CREATE (MoSCoW:Practice {name: 'MoSCoW'})-[:CORE_TECHNIQUE]->(DSDM)

// User Stories

CREATE (INVEST:Practice {name: 'INVEST'})
CREATE (StoryMapping:Practice {name: 'Story Mapping'})
CREATE (ImpactMapping:Practice {name: 'Impact Mapping'})