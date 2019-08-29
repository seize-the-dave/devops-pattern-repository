// Lean

CREATE (Queue:Artifact {name: 'Queue'})
CREATE (LeanSoftwareDevelopment:Model {name: 'Lean Software Development'})-[:DESCRIBED_BY]->(LSDToolkit:Book {name: 'Lean Software Development: An Agile Toolkit', isbn: '9780133812954'})-[:WRITTEN_BY]->(MaryPoppendieck:Person {name: 'Mary Poppendieck'})
CREATE (LSDToolkit)-[:WRITTEN_BY]->(TomPoppendieck:Person {name: 'Tom Poppendieck'})
CREATE (PartiallyDoneWork:Measure {name: 'Partially Done Work'})-[:MEASUREMENT_OF]->(LeanSoftwareDevelopment)
CREATE (ExtraFeatures:Measure {name: 'Extra Features'})-[:MEASUREMENT_OF]->(LeanSoftwareDevelopment)
CREATE (Relearning:Measure {name: 'Relearning'})-[:MEASUREMENT_OF]->(LeanSoftwareDevelopment)
CREATE (Handoffs:Measure {name: 'Handoffs'})-[:MEASUREMENT_OF]->(LeanSoftwareDevelopment)
CREATE (Delays:Measure {name: 'Delays'})-[:MEASUREMENT_OF]->(LeanSoftwareDevelopment)
CREATE (TaskSwitching:Measure {name: 'Task Switching'})-[:MEASUREMENT_OF]->(LeanSoftwareDevelopment)
CREATE (Defects:Measure {name: 'Defects'})-[:MEASUREMENT_OF]->(LeanSoftwareDevelopment)

// XP

CREATE (XP:Method {name: 'Extreme Programming'})-[:DESCRIBED_BY]->(XPE:Book {name: 'Extreme Programming Explained', isbn: '9780321278654'})-[:WRITTEN_BY]->(KentBeck:Person {name: 'Kent Beck'})

CREATE (TestDrivenDevelopment:Practice {name: 'Test-Driven Development'})-[:PRACTICE_OF]->(XP)
CREATE (TestDrivenDevelopment)-[:DESCRIBED_BY]->(TDDByExample:Book {name: 'Test-Driven Development'})-[:WRITTEN_BY]->(KentBeck)
CREATE (TestDrivenDevelopment)-[:DESCRIBED_BY]->(GOOS:Book {name: 'Growing Object-Oriented Software, Guided by Tests'})-[:WRITTEN_BY]->(SteveFreeman:Person {name: 'Steve Freeman'})
CREATE (GOOS)-[:WRITTEN_BY]->(NatPryce:Person {name: 'Nat Pryce'})
CREATE (PairProgramming:Practice {name: 'Pair Programming'})-[:PRACTICE_OF]->(XP)
CREATE (ContinuousIntegration:Practice {name: 'Continuous Integration'})-[:PRACTICE_OF]->(XP)
CREATE (ContinuousIntegrationBook:Book {name: 'Continuous Integration', isbn: '9780321336385'})<-[:DESCRIBED_BY]-(ContinuousIntegration)
CREATE (PaulDuvall:Person {name: 'Paul Duvall'})<-[:WRITTEN_BY]-(ContinuousIntegrationBook)
CREATE (CodingStandards:Practice {name: 'Coding Standards'})-[:PRACTICE_OF]->(XP)
CREATE (CollectiveCodeOwnership:Practice {name: 'Collective Code Ownership'})-[:PRACTICE_OF]->(XP)
CREATE (OnsiteCustomer:Practice {name: 'Onsite Customer'})-[:PRACTICE_OF]->(XP)
CREATE (IterationPlanning:Event {name: 'Iteration Planning'})-[:PRACTICE_OF]->(XP)
CREATE (UserStories:Practice {name: 'User Stories'})-[:PRACTICE_OF]->(XP)
CREATE (ThreeCs:Practice {name: '3 Cs: Card, Confirmation, Conversation'})-[:RELATED_TO]->(UserStories)
CREATE (AcceptanceCritera:Practice {name: 'Acceptance Criteria'})-[:RELATED_TO]->(UserStories)
CREATE (SpikeSolution:Practice {name: 'Spike Solution'})-[:PRACTICE_OF]->(XP)
CREATE (ReleasePlanning:Event {name: 'Release Planning'})-[:MEETING_OF]->(XP)
CREATE (ReleasePlan:Artifact {name: 'Release Plan'})-[:ARTIFACT_OF]->(XP)
CREATE (Iteration:Event {name: 'Iteration'})-[:MEETING_OF]->(XP)
CREATE (Velocity:Measure {name: 'Velocity'})-[:MEASUREMENT_OF]->(XP)
CREATE (XPDailyStandUp:Event {name: 'Daily Stand Up Meeting'})-[:MEETING_OF]->(XP)
CREATE (Refactoring:Practice {name: 'Refactoring'})-[:PRACTICE_OF]->(XP)
CREATE (Refactoring)-[:DESCRIBED_BY]->(RefactoringBook:Book {name: 'Refactoring', isbn: ' 0134757599'})-[:WRITTEN_BY]->(MartinFowler:Person {name: 'Martin Fowler'})

CREATE (UserStories)-[:DESCRIBED_BY]->(UserStoriesApplied:Book {name: 'User Stories Applied', isbn: '0321205685'})-[:WRITTEN_BY]->(MikeCohn:Person {name: 'Mike Cohn'})
CREATE (StorySlicing:Practice {name: 'Story Slicing'})-[:RELATED_TO]->(UserStories)

// Lean

CREATE (ValueStreamMapping:Practice {name: 'Value Stream Mapping'})-[:CREATES]->(ValueStreamMap:Artifact {name: 'Value Stream Map'})
CREATE (ValueStream:Model {name: 'Value Stream'})-[:DESCRIBED_BY]->(ValueStreamMap)

// Kanban

CREATE (Kanban:Method {name: 'Kanban'})

CREATE (STATIK:Activity {name: 'STATIK'})

CREATE (Kanban)-[:DESCRIBED_BY]->(BlueBook:Book {name: 'Kanban', isbn: '0984521402'})-[:WRITTEN_BY]->(DavidAnderson:Person {name: 'David J. Anderson'})
CREATE (Kanban)-[:DESCRIBED_BY]->(EssentialKanban:Book {name: 'Essential Kanban Condensed', isbn: '0984521429'})-[:WRITTEN_BY]->(DavidAnderson)
CREATE (Kanban)-[:DESCRIBED_BY]->(KanbanInside:Book {name: 'Kanban From the Inside', isbn: '0985305193'})-[:WRITTEN_BY]->(MikeBurrows:Person {name: 'Mike Burrows'})
CREATE (EssentialKanban)-[:WRITTEN_BY]->(AndyCarmichael:Person {name: 'Andy Carmichael'})

CREATE (Kanban)-[:DESCRIBED_BY]->(PracticalKanban:Book {name: 'Practical Kanban', isbn: '3903205001'})-[:WRITTEN_BY]->(KlausLeopold:Person {name: 'Klaus Leopold'})
CREATE (BlockerClustering:Practice {name: 'Blocker Clustering'})-[:DESCRIBED_BY]->(PracticalKanban)

CREATE (UpstreamKanban:Practice {name: 'Upstream Kanban'})-[:DESCRIBED_BY]->(EssentialUpstreamKanban:Book {name: 'Essential Upstream Kanban', isbn: '098452147X'})-[:WRITTEN_BY]->(PatrickSteyart:Person {name: 'Patrick Steyeart'})
CREATE (CustomerKanban:Practice {name: 'Customer Kanban'})-[:DESCRIBED_BY]->(EssentialUpstreamKanban)
CREATE (UpstreamKanban)-[:SPECIALISM_OF]->(Kanban)
CREATE (CustomerKanban)-[:SPECIALISM_OF]->(Kanban)
CREATE (PortfolioKanban:Practice {name: 'Portfolio Kanban'})-[:SPECIALISM_OF]->(Kanban)
CREATE (PersonalKanban:Practice {name: 'Personal Kanban'})-[:SPECIALISM_OF]->(Kanban)
CREATE (PersonalKanban)-[:DESCRIBED_BY]->(PersonalKanbanBook:Book {name: 'Personal Kanban', isbn: '1453802266'})-[:WRITTEN_BY]->(JimBenson:Person {name: 'Jim Benson'})
CREATE (PersonalKanbanBook)-[:WRITTEN_BY]->(TonianneDeMariaBarry:Person {name: 'Tonianne DeMaria Barry'})
CREATE (TeamKanban:Practice {name: 'Team Kanban'})-[:SPECIALISM_OF]->(Kanban)

CREATE (Agendashift:Model {name: 'Agendashift'})-[:DESCRIBED_BY]->(AgendashiftBook:Book {name: 'Agendashift'})-[:WRITTEN_BY]->(MikeBurrows)

CREATE (FlightLevels:Practice {name: 'Kanban Flight Levels'})-[:DESCRIBED_BY]->(RethinkingAgile:Book {name: 'Rethinking Agile'})-[:WRITTEN_BY]->(KlausLeopold)
CREATE (FlightLevels)-[:DESCRIBED_BY]->(PracticalKanban)
CREATE (FlightLevels)<-[:SPECIALISM_OF]-(FlightLevel2:Practice {name: 'Flight Level 2'})-[:ALSO_KNOWN_AS]->(ValueStream)
CREATE (FlightLevels)<-[:SPECIALISM_OF]-(FlightLevel3:Practice {name: 'Flight Level 3'})-[:ALSO_KNOWN_AS]->(PortfolioKanban)
CREATE (FlightLevels)<-[:SPECIALISM_OF]-(FlightLevel1:Practice {name: 'Flight Level 1'})-[:ALSO_KNOWN_AS]->(TeamKanban)

CREATE (FoldingPaperShips:Activity {name: 'Folding Paper Ships'})-[:DEMONSTRATES]->(Kanban)
CREATE (FoldingPaperShips)-[:DESCRIBED_BY]->(PracticalKanban)
CREATE (Featureban:Activity {name: 'Featureban'})-[:DEMONSTRATES]->(Kanban)
CREATE (Featureban)-[:DESCRIBED_BY]->(FeaturebanLink:Link {name: 'Featureban', url: 'https://www.agendashift.com/featureban'})
CREATE (GetKanban:Activity {name: 'getKanban Board Game'})-[:DEMONSTRATES]->(Kanban)
CREATE (GetKanban)-[:DESCRIBED_BY]->(GetKanbanLink:Link {name: 'getKanban', url: 'https://getkanban.com/'})

CREATE (ActionableAgile:Book {name: 'Actionable Agile Metrics for Predictability', isbn: '098643633X'})-[:WRITTEN_BY]->(DanVacanti:Person {name: 'Dan Vacanti'})
CREATE (WorkInProgress:Measure {name: 'WIP'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (CycleTime:Measure {name: 'Cycle Time'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (Throughput:Measure {name: 'Throughput'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (Throughput)-[:ALSO_KNOWN_AS]->(Velocity)
CREATE (CFD:Practice {name: 'Cumulative Flow Diagram'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (ArrivalRate:Measure {name: 'Arrival Rate'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (CycleTimeScatterplot:Practice {name: 'Cycle Time Scatterplot'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (CycleTimeHistogram:Practice {name: 'Cycle Time Histogram'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (SLA:Practice {name: 'Service Level Agreement'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (RightSizing:Practice {name: 'Right Sizing'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (StorySlicing)-[:ALSO_KNOWN_AS]->(RightSizing)
CREATE (ClassesOfService:Practice {name: 'Classes of Service'})-[:PRACTICE_OF]->(Kanban)
CREATE (ClassesOfService)-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (MonteCarlo:Practice {name: 'Monte Carlo Simulation'})-[:DESCRIBED_BY]->(ActionableAgile)


CREATE (MakingWorkVisible:Book {name: 'Making Work Visible', isbn: '1942788150'})-[:WRITTEN_BY]->(DomincaDeGrandis:Person {name: 'Dominica DeGrandis'})



// Kanban Core Practices

CREATE (Visualization:Practice { name: 'Visualization', code: 'VZ' })-[:PRACTICE_OF]->(Kanban)
CREATE (LimitWIP:Practice {name: 'Limit Work-in-Progress', code: 'LW'})-[:PRACTICE_OF]->(Kanban)
CREATE (ManageFlow:Practice {name: 'Manage Flow', code: 'MF'})-[:PRACTICE_OF]->(Kanban)
CREATE (FlowEfficiency:Measure {name: 'Flow Efficiency'})-[:MEASUREMENT_OF]->(ManageFlow)
CREATE (ExplicitPolicies:Practice {name: 'Explicit Policies', code: 'XP'})-[:PRACTICE_OF]->(Kanban)
CREATE (PullPolicies:Practice {name: 'Pull Policies'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (FeedbackLoops:Practice {name: 'Implement Feedback Loops', code: 'FL'})-[:PRACTICE_OF]->(Kanban)
CREATE (ImproveCollaboratively:Practice {name: 'Improve Collaboratively, Evolve Experimentally', code: 'IE'})-[:PRACTICE_OF]->(Kanban)

// Kanban Cadences

CREATE (StrategyReview:Event {name: 'Strategy Review'})-[:MEETING_OF]->(Kanban)
CREATE (OperationsReview:Event {name: 'Operations Review'})-[:MEETING_OF]->(Kanban)
CREATE (OperationsReview)-[:RELATED_TO]->(ValueStream)
CREATE (RiskReview:Event {name: 'Risk Review'})-[:MEETING_OF]->(Kanban)
CREATE (ServiceDeliveryReview:Event {name: 'Service Delivery Review'})-[:MEETING_OF]->(Kanban)
CREATE (ReplenishmentMeeting:Event {name: 'Replenishment/Commitment Meeting'})-[:MEETING_OF]->(Kanban)
CREATE (KanbanDailyStandUp:Event {name: 'Daily Standup'})-[:MEETING_OF]->(Kanban)
CREATE (KanbanDailyStandUp)-[:ALSO_KNOWN_AS]->(XPDailyStandUp)
CREATE (WalkingTheBoard:Practice {name: 'Walking the Board'})-[:PRACTICE_OF]->(KanbanDailyStandUp)
CREATE (DeliveryPlanning:Event {name: 'Delivery Planning Meeting'})-[:MEETING_OF]->(Kanban)

// Kanban Maturity Model

CREATE (KMM:MaturityModel {name: 'Kanban Maturity Model'})
CREATE (KMM)-[:DESCRIBED_BY]->(KMMBook:Book {name: 'Kanban Maturity Model', isbn: '0985305150'})-[:WRITTEN_BY]->(DavidAnderson)
CREATE (KMMBook)-[:WRITTEN_BY]->(TeodoraBozheva:Person {name: 'Teodora Bozheva'})

CREATE (ML0:MaturityLevel {name: 'Oblivious', code: 'ML0'})-[:LEVEL_OF]->(KMM)
CREATE (ML1:MaturityLevel {name: 'Emerging', code: 'ML1'})-[:LEVEL_OF]->(KMM)
CREATE (ML2:MaturityLevel {name: 'Defined', code: 'ML2'})-[:LEVEL_OF]->(KMM)
CREATE (ML3:MaturityLevel {name: 'Managed', code: 'ML3'})-[:LEVEL_OF]->(KMM)
CREATE (ML4:MaturityLevel {name: 'Quantitatively Managed', code: 'ML4'})-[:LEVEL_OF]->(KMM)
CREATE (ML5:MaturityLevel {name: 'Optimizing', code: 'ML5'})-[:LEVEL_OF]->(KMM)
CREATE (ML6:MaturityLevel {name: 'Congruent', code: 'ML6'})-[:LEVEL_OF]->(KMM)

// VZ 0 Consolidation
CREATE (ML0)<-[:APPLIES_AT]-(VZ0_1:Practice {name: 'Visualize an individual’s work by means of a personal kanban board.', code: 'VZ0.1'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ0_1)-[:RELATED_TO]->(PersonalKanban)
CREATE (ML0)<-[:APPLIES_AT]-(VZ0_2:Practice {name: 'Visualize basic work item related information on a ticket.', code: 'VZ0.2'})-[:SPECIALISM_OF]->(Visualization)
// VZ 1 Transition
CREATE (ML1)<-[:APPLIES_AT]-(VZ1_1:Practice {name: 'Visualize work for several individuals by means of an aggregated personal kanban board.', code: 'VZ1.1'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML1)<-[:APPLIES_AT]-(VZ1_2:Practice {name: 'Visualize discovered initial policies.', code: 'VZ1.2'})-[:SPECIALISM_OF]->(Visualization)
// VZ 1 Consolidation
CREATE (ML1)<-[:APPLIES_AT]-(VZ1_3:Practice {name: 'Visualize the work carried out by a team by means of a team kanban board.', code: 'VZ1.3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML1)<-[:APPLIES_AT]-(VZ1_4:Practice {name: 'Use avatars to visualize an individual’s workload.', code: 'VZ1.4'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML1)<-[:APPLIES_AT]-(VZ1_5:Practice {name: 'Visualize basic policies.', code: 'VZ1.5'})-[:SPECIALISM_OF]->(Visualization)
// VZ 2 Transition
CREATE (ML1)<-[:APPLIES_AT]-(VZ2_1:Practice {name: 'Visualize teamwork by means of an emergent workflow kanban board.', code: 'VZ2.1'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML2)<-[:APPLIES_AT]-(VZ2_2:Practice {name: 'Visualize work items by means of a delivery kanban board with per-person WIP limits.', code: 'VZ2.2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML2)<-[:APPLIES_AT]-(VZ2_3:Practice {name: 'Visualize work types by means of card colors or board rows.', code: 'VZ2.3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML2)<-[:APPLIES_AT]-(VZ2_4:Practice {name: 'Visualize blocked work items.', code: 'VZ2.4'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML2)<-[:APPLIES_AT]-(VZ2_5:Practice {name: 'Visualize work requests on another service or system.', code: 'VZ2.5'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML2)<-[:APPLIES_AT]-(VZ2_6:Practice {name: 'Visualize work item aging.', code: 'VZ2.6'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML3)<-[:APPLIES_AT]-(VZ2_7:Practice {name: 'Visualize basic service policies.', code: 'VZ2.7'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML2)<-[:APPLIES_AT]-(VZ2_8:Practice {name: 'Visualize development of options by means of a upstream kanban board.', code: 'VZ2.8'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_8)-[:RELATED_TO]->(UpstreamKanban)
CREATE (ML2)<-[:APPLIES_AT]-(VZ2_9:Practice {name: 'Visualize avatars on an upstream kanban board.', code: 'VZ2.9'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_9)-[:RELATED_TO]->(UpstreamKanban)
// VZ 2 Consolidation
CREATE (ML2)<-[:APPLIES_AT]-(VZ2_10:Practice {name: 'Visualize constant WIP [CONWIP] on an emergent workflow delivery kanban board', code: 'VZ2.10'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML2)<-[:APPLIES_AT]-(VZ2_11:Practice {name: 'Visualize concurrent or unordered activities with checkboxes.', code: 'VZ2.11'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML2)<-[:APPLIES_AT]-(VZ2_12:Practice {name: 'Visualize concurrent activities performed by specialist teams using partial rows.', code: 'VZ2.12'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML2)<-[:APPLIES_AT]-(VZ2_13:Practice {name: 'Visualize sequential activities where no dependency or preferred sequence exists using rows or vertical spaces.', code: 'VZ2.13'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML2)<-[:APPLIES_AT]-(VZ2_14:Practice {name: 'Visualize defects and other rework types.', code: 'VZ2.14'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML2)<-[:APPLIES_AT]-(VZ2_15:Practice {name: 'Visualize defined workflow using a kanban board.', code: 'VZ2.15'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML2)<-[:APPLIES_AT]-(VZ2_16:Practice {name: 'Visualize project progress on a simple portfolio kanban board.', code: 'VZ2.16'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_16)-[:RELATED_TO]->(PortfolioKanban)
CREATE (ML2)<-[:APPLIES_AT]-(VZ2_17:Practice {name: 'Visualize a program as an aggregated service delivery overview.', code: 'VZ2.17'})-[:SPECIALISM_OF]->(Visualization)
// VZ 3 Transition
CREATE (ML3)<-[:APPLIES_AT]-(VZ3_1:Practice {name: 'Visualize “ready to commit” status, also known as “ready to pull.”', code: 'VZ3.1'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML3)<-[:APPLIES_AT]-(VZ3_2:Practice {name: 'Visualize “ready to pull” criteria, also known as “definition of ready,” or “entry criteria.”', code: 'VZ3.2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML3)<-[:APPLIES_AT]-(VZ3_3:Practice {name: 'Visualize project work items on a two-tiered project kanban board.', code: 'VZ3.3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML3)<-[:APPLIES_AT]-(VZ3_4:Practice {name: 'Visualize workflow and teamwork items by means of aggregated team kanban board.', code: 'VZ3.4'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML3)<-[:APPLIES_AT]-(VZ3_5:Practice {name: 'Visualize discarded options using a bin on an upstream/discovery kanban board.', code: 'VZ3.5'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_5)-[:RELATED_TO]->(UpstreamKanban)
CREATE (ML3)<-[:APPLIES_AT]-(VZ3_6:Practice {name: 'Visualize parent–child and peer–peer dependencies.', code: 'VZ3.6'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML3)<-[:APPLIES_AT]-(VZ3_7:Practice {name: 'Visualize upstream options by means of an upstream/discovery kanban board.', code: 'VZ3.7'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_7)-[:RELATED_TO]->(UpstreamKanban)
// VZ 3 Consolidation
CREATE (ML3)<-[:APPLIES_AT]-(VZ3_8:Practice {name: 'Visualize replenishment signals.', code: 'VZ3.8'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML3)<-[:APPLIES_AT]-(VZ3_9:Practice {name: 'Visualize pull signals.', code: 'VZ3.9'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML3)<-[:APPLIES_AT]-(VZ3_10:Practice {name: 'Visualize pull criteria (also known as “pull policies,” “definition of ready,” or “exit criteria”).', code: 'VZ3.10'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML3)<-[:APPLIES_AT]-(VZ3_11:Practice {name: 'Visualize available capacity.', code: 'VZ3.11'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML3)<-[:APPLIES_AT]-(VZ3_12:Practice {name: 'Visualize target date or SLA.', code: 'VZ3.12'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML3)<-[:APPLIES_AT]-(VZ3_13:Practice {name: 'Visualize failure demand versus value demand.', code: 'VZ3.13'})-[:SPECIALISM_OF]->(Visualization)
// TODO: Failure Demand?
CREATE (ML3)<-[:APPLIES_AT]-(VZ3_14:Practice {name: 'Visualize aborted work.', code: 'VZ3.14'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML3)<-[:APPLIES_AT]-(VZ3_15:Practice {name: 'Visualize class of service using ticket colors, board rows, or ticket decorators.', code: 'VZ3.15'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML3)<-[:APPLIES_AT]-(VZ3_16:Practice {name: 'Use Earned Value portfolio kanban board to visualize project progress and schedule or budget risk.', code: 'VZ3.16'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_16)-[:RELATED_TO]->(PortfolioKanban)
CREATE (ML3)<-[:APPLIES_AT]-(VZ3_17:Practice {name: 'Visualize a portfolio as an aggregated program overview board.', code: 'VZ3.17'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_17)-[:RELATED_TO]->(PortfolioKanban)
// VZ 4 Transition
CREATE (ML4)<-[:APPLIES_AT]-(VZ4_1:Practice {name: 'Visualize local cycle time.', code: 'VZ4.1'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML4)<-[:APPLIES_AT]-(VZ4_2:Practice {name: 'Use ticket decorators to indicate risks.', code: 'VZ4.2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML4)<-[:APPLIES_AT]-(VZ4_3:Practice {name: 'Visualize risk classes with different swim lanes', code: 'VZ4.3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML4)<-[:APPLIES_AT]-(VZ4_4:Practice {name: 'Visualize split-and-merge workflows.', code: 'VZ4.4'})-[:SPECIALISM_OF]->(Visualization)
// VZ 4 Consolidation
CREATE (ML4)<-[:APPLIES_AT]-(VZ4_5:Practice {name: 'Visualize WIP limits on dependencies parking lot.', code: 'VZ4.5'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML4)<-[:APPLIES_AT]-(VZ4_6:Practice {name: 'Visualize waiting time in dependencies parking lot.', code: 'VZ4.6'})-[:SPECIALISM_OF]->(Visualization)
CREATE (ML4)<-[:APPLIES_AT]-(VZ4_7:Practice {name: 'Visualize SLA exceeded in dependencies parking lot.', code: 'VZ4.7'})-[:SPECIALISM_OF]->(Visualization)

// ML 0 Consolidation
CREATE (ML0)<-[:APPLIES_AT]-(LW0_1:Practice {name: 'Establish personal WIP limits.', code: 'LW0.1'})-[:SPECIALISM_OF]->(LimitWIP)
// ML 1 Transition
CREATE (ML1)<-[:APPLIES_AT]-(LW1_1:Practice {name: 'Establish per-person WIP limits.', code: 'LW1.1'})-[:SPECIALISM_OF]->(LimitWIP)
// ML 1 Consolidation
CREATE (ML1)<-[:APPLIES_AT]-(LW1_2:Practice {name: 'Establish team WIP limits.', code: 'LW1.2'})-[:SPECIALISM_OF]->(LimitWIP)
// ML 2 Consolidation
CREATE (ML2)<-[:APPLIES_AT]-(LW2_1:Practice {name: 'Establish CONWIP limits on emergent workflow.', code: 'LW2.1'})-[:SPECIALISM_OF]->(LimitWIP)
CREATE (ML2)<-[:APPLIES_AT]-(LW2_2:Practice {name: 'Establish WIP limit on the aggregated service delivery overview board.', code: 'LW2.2'})-[:SPECIALISM_OF]->(LimitWIP)
// ML 3 Transition
CREATE (ML3)<-[:APPLIES_AT]-(LW3_1:Practice {name: 'Establish activity based WIP limits.', code: 'LW3.1'})-[:SPECIALISM_OF]->(LimitWIP)
// ML 3 Consolidation
CREATE (ML3)<-[:APPLIES_AT]-(LW3_2:Practice {name: 'Use an order point (min limit) for upstream replenishment.', code: 'LW3.2'})-[:SPECIALISM_OF]->(LimitWIP)
CREATE (ML3)<-[:APPLIES_AT]-(LW3_3:Practice {name: 'Use a max limit to constrain upstream capacity.', code: 'LW3.3'})-[:SPECIALISM_OF]->(LimitWIP)
CREATE (ML3)<-[:APPLIES_AT]-(LW3_4:Practice {name: 'Bracket WIP limits for different states.', code: 'LW3.4'})-[:SPECIALISM_OF]->(LimitWIP)
CREATE (ML3)<-[:APPLIES_AT]-(LW3_5:Practice {name: 'Create an end-to-end pull system, from commitment to delivery', code: 'LW3.5'})-[:SPECIALISM_OF]->(LimitWIP)
// ML 4 Transition
CREATE (ML4)<-[:APPLIES_AT]-(LW4_1:Practice {name: 'Limit WIP on dependency parking lot.', code: 'LW4.1'})-[:SPECIALISM_OF]->(LimitWIP)

// ML 0 Consolidation
CREATE (ML0)<-[:APPLIES_AT]-(MF0_1:Practice {name: 'Categorize tasks by means of urgency, importance and impact.', code: 'MF0.1'})-[:SPECIALISM_OF]->(ManageFlow)
// ML 2 Transition
CREATE (ML2)<-[:APPLIES_AT]-(MF2_1:Practice {name: 'Define work types based on customer requests.', code: 'MF2.1'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML2)<-[:APPLIES_AT]-(MF2_2:Practice {name: 'Define basic services.', code: 'MF2.2'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML2)<-[:APPLIES_AT]-(MF2_3:Practice {name: 'Map upstream and downstream flow.', code: 'MF2.3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML2)<-[:APPLIES_AT]-(MF2_4:Practice {name: 'Define and collect blocker metrics.', code: 'MF2.4'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML2)<-[:APPLIES_AT]-(MF2_5:Practice {name: 'Define and collect WIP aging metrics.', code: 'MF2.5'})-[:SPECIALISM_OF]->(ManageFlow)
// ML 2 Consolidation
CREATE (ML2)<-[:APPLIES_AT]-(MF2_6:Practice {name: 'Manage blocking issues.', code: 'MF2.6'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML2)<-[:APPLIES_AT]-(MF2_7:Practice {name: 'Manage defects and other rework types.', code: 'MF2.7'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML2)<-[:APPLIES_AT]-(MF2_8:Practice {name: 'Manage aging WIP.', code: 'MF2.8'})-[:SPECIALISM_OF]->(ManageFlow)
// ML 3 Transition
CREATE (ML3)<-[:APPLIES_AT]-(MF3_1:Practice {name: 'Organize around the knowledge discovery process.', code: 'MF3.1'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML3)<-[:APPLIES_AT]-(MF3_2:Practice {name: 'Collect service-related data: demand, capability.”)', code: 'MF3.2'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML3)<-[:APPLIES_AT]-(MF3_3:Practice {name: 'Analyze service fitness-for-purpose.”)', code: 'MF3.3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF3_3)-[:RELATED_TO]->(FitForPurpose:Model {name: 'Fit for Purpose'})-[:DESCRIBED_BY]->(F4PBook:Book {name: 'Fit For Purpose', isbn: '1732821208'})-[:WRITTEN_BY]->(DavidAnderson)
CREATE (F4PBook)-[:WRITTEN_BY]->(AlexeiZheglov:Person {name: 'Alexei Zheglov'})

CREATE (ML3)<-[:APPLIES_AT]-(MF3_4:Practice {name: 'Defer commitment (decide at the “last responsible moment.”)', code: 'MF3.4'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML3)<-[:APPLIES_AT]-(MF3_5:Practice {name: 'Use cumulative flow diagram to monitor queues.', code: 'MF3.5'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML3)<-[:APPLIES_AT]-(MF3_6:Practice {name: 'Use Little’s Law.', code: 'MF3.6'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML3)<-[:APPLIES_AT]-(MF3_7:Practice {name: 'Report rudimentary flow efficiency', code: 'MF3.7'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF3_7)-[:RELATED_TO]->(FlowEfficiency)
CREATE (ML3)<-[:APPLIES_AT]-(MF3_8:Practice {name: 'Gradually eliminate infinite buffers.', code: 'MF3.8'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML3)<-[:APPLIES_AT]-(MF3_9:Practice {name: 'Actively close upstream requests that meet the abandonment criteria', code: 'MF3.9'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML3)<-[:APPLIES_AT]-(MF3_10:Practice {name: 'Report abandoned vs completed commited work.', code: 'MF3.10'})-[:SPECIALISM_OF]->(ManageFlow)
// ML 3 Consolidation
CREATE (ML3)<-[:APPLIES_AT]-(MF3_11:Practice {name: 'Develop triage discipline.', code: 'MF3.11'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML3)<-[:APPLIES_AT]-(MF3_12:Practice {name: 'Manage dependencies, peer-to-peer or parent-child.', code: 'MF3.12'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML3)<-[:APPLIES_AT]-(MF3_13:Practice {name: 'Analyze and report aborted work items.', code: 'MF3.13'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML3)<-[:APPLIES_AT]-(MF3_14:Practice {name: 'Use classes of service to affect selection.', code: 'MF3.14'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML3)<-[:APPLIES_AT]-(MF3_15:Practice {name: 'Use two-phase commit for delivery commitment.', code: 'MF3.15'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML3)<-[:APPLIES_AT]-(MF3_16:Practice {name: 'Forecast delivery.', code: 'MF3.16'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML3)<-[:APPLIES_AT]-(MF3_17:Practice {name: 'Apply qualitative Real Options Thinking.', code: 'MF3.17'})-[:SPECIALISM_OF]->(ManageFlow)
// ML 4 Transition
CREATE (ML4)<-[:APPLIES_AT]-(MF4_1:Practice {name: 'Collect and report detailed flow efficiency analysis.', code: 'MF4.1'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF4_1)-[:RELATED_TO]->(FlowEfficiency)
CREATE (ML4)<-[:APPLIES_AT]-(MF4_2:Practice {name: 'Use explicit buffers to smooth flow.', code: 'MF4.2'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML4)<-[:APPLIES_AT]-(MF4_3:Practice {name: 'Analyze to anticipate dependencies.', code: 'MF4.3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML4)<-[:APPLIES_AT]-(MF4_4:Practice {name: 'Establish refutable versus irrefutable demand.', code: 'MF4.4'})-[:SPECIALISM_OF]->(ManageFlow)
// ML 4 Consolidation
CREATE (ML4)<-[:APPLIES_AT]-(MF4_5:Practice {name: 'Determine reference class data set.', code: 'MF4.5'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML4)<-[:APPLIES_AT]-(MF4_6:Practice {name: 'Forecast using reference classes, Monte Carlo simulations, and other models.', code: 'MF4.6'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF4_6)-[:RELATED_TO]->(MonteCarlo)
CREATE (ML4)<-[:APPLIES_AT]-(MF4_7:Practice {name: 'Allocate capacity across swim lanes.', code: 'MF4.7'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML4)<-[:APPLIES_AT]-(MF4_8:Practice {name: 'Allocate capacity by color of work item.', code: 'MF4.8'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML4)<-[:APPLIES_AT]-(MF4_9:Practice {name: 'Make appropriate use of forecasting.', code: 'MF4.9'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML4)<-[:APPLIES_AT]-(MF4_10:Practice {name: 'Assess forecasting models for robustness.', code: 'MF4.10'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (ML4)<-[:APPLIES_AT]-(MF4_11:Practice {name: 'Use statistical methods for decision making.', code: 'MF4.11'})-[:SPECIALISM_OF]->(ManageFlow)

// ML 0 Consolidation
CREATE (ML0)<-[:APPLIES_AT]-(XP0_1:Practice {name: 'Make the rules for personal kanban explicit.', code: 'XP0.1'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP0_1)-[:RELATED_TO]->(PersonalKanban)
// ML 1 Transition
CREATE (ML1)<-[:APPLIES_AT]-(XP1_1:Practice {name: 'Discover initial policies.', code: 'XP1.1'})-[:SPECIALISM_OF]->(ExplicitPolicies)
// ML 1 Consolidation
CREATE (ML1)<-[:APPLIES_AT]-(XP1_2:Practice {name: 'Define basic policies.', code: 'XP1.2'})-[:SPECIALISM_OF]->(ExplicitPolicies)
// ML 2 Transition
CREATE (ML2)<-[:APPLIES_AT]-(XP2_1:Practice {name: 'Define basic service policies.', code: 'XP2.1'})-[:SPECIALISM_OF]->(ExplicitPolicies)
// ML 2 Consolidation
CREATE (ML2)<-[:APPLIES_AT]-(XP2_2:Practice {name: 'Define policies for managing aging WIP.', code: 'XP2.2'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (ML2)<-[:APPLIES_AT]-(XP2_3:Practice {name: 'Define policies for blocking issue escalation.', code: 'XP2.3'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (ML2)<-[:APPLIES_AT]-(XP2_4:Practice {name: 'Define policies for managing defects and other rework types.', code: 'XP2.4'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (ML2)<-[:APPLIES_AT]-(XP2_5:Practice {name: 'Define basic policies for coordinating work of different service teams.', code: 'XP2.5'})-[:SPECIALISM_OF]->(ExplicitPolicies)
// ML 3 Transition
CREATE (ML3)<-[:APPLIES_AT]-(XP3_1:Practice {name: 'Establish F4P-related metrics.', code: 'XP3.1'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP3_1)-[:RELATED_TO]->(FitForPurpose)
CREATE (ML3)<-[:APPLIES_AT]-(XP3_2:Practice {name: 'Explicitly define pull criteria.', code: 'XP3.2'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (ML3)<-[:APPLIES_AT]-(XP3_3:Practice {name: 'Define upstream option abandonment policies.', code: 'XP3.3'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (ML3)<-[:APPLIES_AT]-(XP3_4:Practice {name: 'Define the meaning of "abandonment" for commited work.', code: 'XP3.4'})-[:SPECIALISM_OF]->(ExplicitPolicies)
// ML 3 Consolidation
CREATE (ML3)<-[:APPLIES_AT]-(XP3_5:Practice {name: 'Establish a delivery commitment point.', code: 'XP3.5'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (ML3)<-[:APPLIES_AT]-(XP3_6:Practice {name: 'Establish a replenishment commitment point.', code: 'XP3.6'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (ML3)<-[:APPLIES_AT]-(XP3_7:Practice {name: 'Define basic classes of service based on qualitative cost of delay.', code: 'XP3.7'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (ML3)<-[:APPLIES_AT]-(XP3_8:Practice {name: 'Establish customer acceptance criteria for each work item or a class of work items', code: 'XP3.8'})-[:SPECIALISM_OF]->(ExplicitPolicies)
// ML 4 Transition
CREATE (ML4)<-[:APPLIES_AT]-(XP4_1:Practice {name: 'Explicitly define fitness-for-purpose based on metrics.', code: 'XP4.1'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP4_1)-[:RELATED_TO]->(FitForPurpose)
// ML 4 Consolidation
CREATE (ML4)<-[:APPLIES_AT]-(XP4_2:Practice {name: 'Establish demand shaping policies.', code: 'XP4.2'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (ML4)<-[:APPLIES_AT]-(XP4_3:Practice {name: 'Establish SLA on dependent services.', code: 'XP4.3'})-[:SPECIALISM_OF]->(ExplicitPolicies)

// ML 0 Consolidation
CREATE (ML0)<-[:APPLIES_AT]-(FL0_1:Practice {name: 'Engage in personal reflection.', code: 'FL0.1'})-[:SPECIALISM_OF]->(FeedbackLoops)
// ML 1 Transition
CREATE (ML1)<-[:APPLIES_AT]-(FL1_1:Practice {name: 'Conduct Team Kanban Meeting.', code: 'FL1.1'})-[:SPECIALISM_OF]->(FeedbackLoops)
// ML 1 Consolidation
CREATE (ML1)<-[:APPLIES_AT]-(FL1_2:Practice {name: 'Make team review.', code: 'FL1.2'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (ML1)<-[:APPLIES_AT]-(FL1_3:Practice {name: 'Conduct internal team replenishment meeting.', code: 'FL1.3'})-[:SPECIALISM_OF]->(FeedbackLoops)
// ML 2 Transition
CREATE (ML2)<-[:APPLIES_AT]-(FL2_1:Practice {name: 'Conduct internal workflow replenishment meeting.', code: 'FL2.1'})-[:SPECIALISM_OF]->(FeedbackLoops)
// ML 2 Consolidation
CREATE (ML2)<-[:APPLIES_AT]-(FL2_2:Practice {name: 'Conduct workflow Kanban meeting.', code: 'FL2.2'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (ML2)<-[:APPLIES_AT]-(FL2_3:Practice {name: 'Conduct system capability review.', code: 'FL2.3'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (ML2)<-[:APPLIES_AT]-(FL2_4:Practice {name: 'Conduct blocker clustering.', code: 'FL2.4'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL2_4)-[:RELATED_TO]->(BlockerClustering)
// ML 3 Transition
CREATE (ML3)<-[:APPLIES_AT]-(FL3_1:Practice {name: 'Conduct replenishment meeting.', code: 'FL3.1'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL3_1)-[:RELATED_TO]->(ReplenishmentMeeting)
CREATE (ML3)<-[:APPLIES_AT]-(FL3_2:Practice {name: 'Make improvement suggestion review.', code: 'FL3.2'})-[:SPECIALISM_OF]->(FeedbackLoops)
// ML 3 Consolidation
CREATE (ML3)<-[:APPLIES_AT]-(FL3_3:Practice {name: 'Conduct delivery planning meeting.', code: 'FL3.3'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL3_3)-[:RELATED_TO]->(DeliveryPlanning)
CREATE (ML3)<-[:APPLIES_AT]-(FL3_4:Practice {name: 'Conduct service delivery review.', code: 'FL3.4'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL3_4)-[:RELATED_TO]->(ServiceDeliveryReview)
CREATE (ML3)<-[:APPLIES_AT]-(FL3_5:Practice {name: 'Conduct options review.', code: 'FL3.5'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (ML3)<-[:APPLIES_AT]-(FL3_6:Practice {name: 'Conduct basic portfolio review.', code: 'FL3.6'})-[:SPECIALISM_OF]->(FeedbackLoops)
// ML 4 Transition
CREATE (ML4)<-[:APPLIES_AT]-(FL4_1:Practice {name: 'Conduct risk review.', code: 'FL4.1'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL4_1)-[:RELATED_TO]->(RiskReview)
CREATE (ML4)<-[:APPLIES_AT]-(FL4_2:Practice {name: 'Conduct full portfolio review.', code: 'FL4.2'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (ML4)<-[:APPLIES_AT]-(FL4_3:Practice {name: 'Conduct operations review.', code: 'FL4.3'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL4_3)-[:RELATED_TO]->(OperationsReview)

// ML 2 Transition
CREATE (ML2)<-[:APPLIES_AT]-(IE2_1:Practice {name: 'Identify sources of dissatisfaction.', code: 'IE2.1'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
// ML 2 Consolidation
CREATE (ML2)<-[:APPLIES_AT]-(IE2_2:Practice {name: 'Define actions to develop basic understanding of the process and improve flow.', code: 'IE2.2'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (ML2)<-[:APPLIES_AT]-(IE2_3:Practice {name: 'Revise problematic policies.', code: 'IE2.3'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (ML2)<-[:APPLIES_AT]-(IE2_4:Practice {name: 'Identify sources of delay.', code: 'IE2.4'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
// ML 3 Transition
CREATE (ML3)<-[:APPLIES_AT]-(IE3_1:Practice {name: 'Solicit change and improvement suggestions.', code: 'IE3.1'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
// ML 3 Consolidation
CREATE (ML3)<-[:APPLIES_AT]-(IE3_2:Practice {name: 'Analyze blocker likelihood and impact.', code: 'IE3.2'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (ML3)<-[:APPLIES_AT]-(IE3_3:Practice {name: 'Analyze lead time tail risk.', code: 'IE3.3'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (ML3)<-[:APPLIES_AT]-(IE3_4:Practice {name: 'After meetings: discuss a problem spontaneously, and bring it to the service delivery review', code: 'IE3.4'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
// ML 4 Transition
CREATE (ML4)<-[:APPLIES_AT]-(IE4_1:Practice {name: 'Develop qualitative understanding of common versus special cause for process performance variation.', code: 'IE4.1'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (ML4)<-[:APPLIES_AT]-(IE4_2:Practice {name: 'Identify the impact of shared resources.', code: 'IE4.2'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (ML4)<-[:APPLIES_AT]-(IE4_3:Practice {name: 'Identify bottlenecks.', code: 'IE4.3'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (IE4_3)-[:RELATED_TO]->(TheoryOfConstraints:Model {name: 'Theory of Constraints'})-[:DESCRIBED_BY]->(TheGoal:Book {name: 'The Goal', isbn: '9780884271956'})-[:WRITTEN_BY]->(EliGoldratt:Person {name: 'Eli Goldratt'})
CREATE (TheoryOfConstraints)-[:DESCRIBED_BY]->(RollingRocksDownhill:Book {name: 'Rolling Rocks Downhill', isbn: '1505446511'})-[:WRITTEN_BY]->(ClarkeChing:Person {name: 'Clark Ching'})
CREATE (TheoryOfConstraints)-[:DESCRIBED_BY]->(TheBottleneckRules:Book {name: 'The Bottleneck Rules', isbn: '1983022691'})-[:WRITTEN_BY]->(ClarkeChing)
CREATE (FiveFocusingSteps:Practice {name: 'Five Focusing Steps'})-[:PRACTICE_OF]->(TheoryOfConstraints)
CREATE (ThinkingProcesses:Practice {name: 'Thinking Processes'})-[:PRACTICE_OF]->(TheoryOfConstraints)
CREATE (ThroughputAccounting:Practice {name: 'Throughput Accounting'})-[:PRACTICE_OF]->(TheoryOfConstraints)
CREATE (ML4)<-[:APPLIES_AT]-(IE4_4:Practice {name: 'Identify transaction and coordination costs.', code: 'IE4.4'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
// ML 4 Consolidation
CREATE (ML4)<-[:APPLIES_AT]-(IE4_5:Practice {name: 'Exploit, subordinate to and elevate bottlenecks.', code: 'IE4.5'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (IE4_5)-[:RELATED_TO]->(TheoryOfConstraints)
CREATE (ML4)<-[:APPLIES_AT]-(IE4_6:Practice {name: 'Develop quantitative understanding of common versus chance cause for process performance variation.', code: 'IE4.6'})-[:SPECIALISM_OF]->(ImproveCollaboratively)


// Kanban Guide

// There's significant overlap between KMM and KG.  These need to be rationalised.

// CREATE (DemandAnalysis:Practice {name: 'Demand Analysis / Work Item Types'})-[:SPECIALISM_OF]->(Visualization)
// CREATE (WorkflowVisualization:Practice {name: 'Workflow Visualization / Kanban Board'})-[:SPECIALISM_OF]->(Visualization)
// CREATE (CommitmentDeliveryPoints:Practice {name: 'Commitment and Delivery Points'})-[:SPECIALISM_OF]->(Visualization)
// CREATE (WorkItemTicketDesign:Practice {name: 'Work Item Ticket Design'})-[:SPECIALISM_OF]->(Visualization)
// CREATE (Avatars:Practice {name: 'Avatars'})-[:SPECIALISM_OF]->(Visualization)
// CREATE (Swimlanes:Practice {name: 'Swimlanes'})-[:SPECIALISM_OF]->(Visualization)
// CREATE (BacklogVisualization:Practice {name: 'Backlog Visualization'})-[:SPECIALISM_OF]->(Visualization)
// CREATE (ElectronicTracking:Practice {name: 'Electronic Tracking'})-[:SPECIALISM_OF]->(Visualization)
// CREATE (ModellingConcurrentActivity:Practice {name: 'Modelling Concurrent Activity'})-[:SPECIALISM_OF]->(Visualization)
// CREATE (StickyBuddies:Practice {name: 'Sticky Buddies'})-[:SPECIALISM_OF]->(Visualization)

// CREATE (ColumnWipLimits:Practice {name: 'Column / State WIP Limits'})-[:SPECIALISM_OF]->(LimitWIP)
// CREATE (PersonWipLimits:Practice {name: 'Person WIP Limits'})-[:SPECIALISM_OF]->(LimitWIP)
// CREATE (AllocatedCapacity:Practice {name: 'Allocated Capacity (Lane WIP Limits)'})-[:SPECIALISM_OF]->(LimitWIP)
// CREATE (BoardLevelLimits:Practice {name: 'Board Level WIP Limits'})-[:SPECIALISM_OF]->(LimitWIP)

// CREATE (QueueReplenishment:Practice {name: 'Queue Replenishment (Cadence and Policy)'})-[:SPECIALISM_OF]->(ManageFlow)
// CREATE (LeadTimeDistribution:Practice {name: 'Lead Time Distribution (Average, Sized, Weighted)'})-[:SPECIALISM_OF]->(ManageFlow)
// CREATE (FlowEfficiency:Measure {name: 'Flow Efficiency'})-[:MEASUREMENT_OF]->(ManageFlow)
// CREATE (InputQueuePrioritisationMethod:Practice {name: 'Input Queue Prioritisation Method'})-[:SPECIALISM_OF]->(ManageFlow)
// CREATE (InputQueueSizing:Practice {name: 'Input Queue Sizing'})-[:SPECIALISM_OF]->(ManageFlow)
// CREATE (Throughput:Measure {name: 'Input Queue Sizing'})-[:MEASUREMENT_OF]->(ManageFlow)
// CREATE (ClassesOfService:Practice {name: 'Classes of Service'})-[:SPECIALISM_OF]->(ManageFlow)
// CREATE (SLE:Practice {name: 'Clarifying and Displayed Service Level Expectations'})-[:SPECIALISM_OF]->(ManageFlow)
// CREATE (DueDatePerformance:Measure {name: 'Input Queue Sizing'})-[:MEASUREMENT_OF]->(ManageFlow)
// CREATE (SetServiceDeliveryTargets:Practice {name: 'Set Service Delivery Targets'})-[:SPECIALISM_OF]->(ManageFlow)
// CREATE (InitialQuality:Measure {name: 'Initial Quality (Defects per Work Item'})-[:MEASUREMENT_OF]->(ManageFlow)
// CREATE (ReleasePlanning:Practice {name: 'Release Planning'})-[:SPECIALISM_OF]->(ManageFlow)
// CREATE (Triage:Practice {name: 'Triage (In or Out)'})-[:SPECIALISM_OF]->(ManageFlow)
// CREATE (FailureLoad:Measure {name: 'Failure Load (Production Defect Rate)'})-[:MEASUREMENT_OF]->(ManageFlow)
// CREATE (HandlingExternalDependencies:Practice {name: 'Handling External Dependencies'})-[:SPECIALISM_OF]->(ManageFlow)
// CREATE (BacklogPrioritisationMethod:Practice {name: 'Backlog Prioritisation Method'})-[:SPECIALISM_OF]->(ManageFlow)
// CREATE (DefectPercentageRate:Measure {name: 'Defect Percentage Rate'})-[:MEASUREMENT_OF]->(ManageFlow)
// CREATE (NetFlowPerWeek:Measure {name: 'Net Flow per Week'})-[:MEASUREMENT_OF]->(ManageFlow)
// CREATE (ValueBasedWorkItem:Practice {name: 'Value Based Work Item Granularity (MMF)'})-[:SPECIALISM_OF]->(ManageFlow)


// Continuous Delivery

CREATE (ContinuousDeliveryBook:Book {name: 'Continuous Delivery', isbn: '9780321601919'})
CREATE (JezHumble:Person {name: 'Jez Humble'})<-[:WRITTEN_BY]-(ContinuousDeliveryBook)
CREATE (DavidFarley:Person {name: 'David Farley'})<-[:WRITTEN_BY]-(ContinuousDeliveryBook)
CREATE (ContinuousDelivery:Practice {name: 'Continuous Delivery'})-[:DESCRIBED_BY]->(ContinuousDeliveryBook)

CREATE (ContinuousDelivery)-[:GUIDED_BY]->(BuildQualityIn:Principal {name: 'Build Quality In'})
CREATE (ContinuousDelivery)-[:GUIDED_BY]->(WorkInSmallBatches:Principal {name: 'Work in Small Batches'})
CREATE (ContinuousDelivery)-[:GUIDED_BY]->(ComputersDoRepetition:Principal {name: 'Computers Perform Repetitive Tasks, People Solve Problems'})
CREATE (ContinuousDelivery)-[:GUIDED_BY]->(ContinuousImprovement:Principal {name: 'Relentlessly Pursue Continuous Improvement'})
CREATE (ContinuousDelivery)-[:GUIDED_BY]->(EveryoneIsResponsible:Principal {name: 'Everyone is Responsible'})

// Measures from Accelerate

CREATE (Accelerate:Book {name: 'Accelerate', isbn: '1942788339'})
CREATE (NicoleForsgren:Person {name: 'Nicole Forsgren'})<-[:WRITTEN_BY]-(Accelerate)
CREATE (JezHumble)<-[:WRITTEN_BY]-(Accelerate)
CREATE (GeneKim:Person {name: 'Gene Kim'})<-[:WRITTEN_BY]-(Accelerate)
CREATE (DeploymentFrequency:Measure {name: 'Deployment Frequency'})
CREATE (LeadTime:Measure {name: 'Lead Time for Change'})-[:ALSO_KNOWN_AS]->(CycleTime)
CREATE (MTTR:Measure {name: 'Mean Time to Restore'})
CREATE (ChangeFailureRate:Measure {name: 'Change Failure Rate'})

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
CREATE (SoftwareDeliveryPerformance)-[:DESCRIBED_BY]->(Accelerate)

CREATE (WestrumOrganizationalCulture)-[:IMPACTS]->(SoftwareDeliveryPerformance)
CREATE (WestrumOrganizationalCulture)-[:IMPACTS]->(OrganizationalPerformance)

CREATE (Burnout:Measure {name: 'Burnout'})-[:DESCRIBED_BY]->(MaslachBurnoutIndex:Measure {name: 'Maslach Burnout Index'})

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
CREATE (Rework:Measure {name: 'Rework'})-[:ALSO_KNOWN_AS]->(Defects)
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
CREATE (FlowBook:Book {name: 'The Principles of Product Development Flow'})<-[:WRITTEN_BY]-(DonReinertsen:Person {name: 'Don Reinertsen'})
CREATE (LeanProductDevelopment)-[:DESCRIBED_BY]->(FlowBook)

CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E1:Principal {name: 'The Principle of Quantified Overall Economics', desc: 'Select actions based on quantified overall economic impact', code: 'E1'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E2:Principal {name: 'We can\'t change one thing', code: 'E2'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E3:Principal {name: 'If you only quantify one thing, quantify the cost of delay', code: 'E3'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E4:Principal {name: 'The value added by an activity is the change in the economic value of the work product', code: 'E4'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E5:Principal {name: 'Watch the work product, not the worker', code: 'E5'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E6:Principal {name: 'Important trade-offs are likely to have U-curve optimizations', code: 'E6'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E7:Principal {name: 'Even imperfect answers improve decision making', code: 'E7'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E8:Principal {name: 'Influence the many small decisions', code: 'E8'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E9:Principal {name: 'Economic choices must be made continuously', code: 'E9'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E10:Principal {name: 'Many economic choices are more valuable when made quickly', code: 'E10'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E11:Principal {name: 'Inside every bad choice lies a good choice', code: 'E11'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E12:Principal {name: 'Create systems to harvest the early cheap opportunities', code: 'E12'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E13:Principal {name: 'Use decision rules to decentralize economic control', code: 'E13'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E14:Principal {name: 'Ensure decision makers feel both cost and benefit', code: 'E14'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E15:Principal {name: 'Every decision has its optimum economic timing', code: 'E15'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E16:Principal {name: 'Always compare marginal cost and marginal value', code: 'E16'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E17:Principal {name: 'Do not consider money already spent', code: 'E17'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E18:Principal {name: 'The value of information is its expected economic value', code: 'E18'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E19:Principal {name: 'Don\'t pay more for insurance than the expected loss', code: 'E19'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E20:Principal {name: 'High probability of failure does not equal bad economics', code: 'E20'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E21:Principal {name: 'To influence financial decisions, speak the language of money', code: 'E21'})

CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q1:Principal {name: 'Product development inventory is physically and financially invisible', code: 'Q1'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q2:Principal {name: 'Queues are the root cause of the majority of economic waste in product development', code: 'Q2'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q3:Principal {name: 'Capacity utilization increases queues exponentially', code: 'Q3'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q4:Principal {name: 'Most of the damage done by a queue is caused by high-queue states', code: 'Q4'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q5:Principal {name: 'Variability increases queues linearly', code: 'Q5'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q6:Principal {name: 'Operating at high levels of capacity utilization increases variability', code: 'Q6'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q7:Principal {name: 'Serve pooled demand with reliable high-capacity servers', code: 'Q7'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q8:Principal {name: 'Adjacent queues see arrival or service variability depending on loading', code: 'Q8'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q9:Principal {name: 'Optimum queue size is an economic trade-off', code: 'Q9'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q10:Principal {name: 'Queue cost is affected by the sequence in which we handle the jobs in the queue', code: 'Q10'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q11:Principal {name: 'Use CFDs to monitor queues', code: 'Q11'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q12:Principal {name: 'Wait time = queue size / processing rate', code: 'Q12'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q13:Principal {name: 'Don\'t control capacity utilization, control queue size', code: 'Q13'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q14:Principal {name: 'Don\'t control cycle time, control queue size', code: 'Q14'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q15:Principal {name: 'Over time, queues will randomly spin seriously out of control and will remain in this state for long periods', code: 'Q15'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q16:Principal {name: 'We cannot rely on randomness to correct a random queue', code: 'Q16'})

CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V1:Principal {name: 'Variability can create economic value', code: 'V1'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V2:Principal {name: 'Payoff asymmetries enable variability to create economic value', code: 'V2'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V3:Principal {name: 'Variability should neither be minimized or maximized', code: 'V3'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V4:Principal {name: 'Fifty percent failure rate is usually optimum for generating information', code: 'V4'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V5:Principal {name: 'Overall variation decreases when uncorrelated random tasks are combined', code: 'V5'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V6:Principal {name: 'Forecasting becomes exponentially easier at short term-horizons', code: 'V6'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V7:Principal {name: 'Many small experiments produce less variation than one big one', code: 'V7'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V8:Principal {name: 'Repetition reduces variation', code: 'V8'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V9:Principal {name: 'Reuse reduces variability', code: 'V9'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V10:Principal {name: 'We can reduce variance by applying a counterbalancing effect', code: 'V10'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V11:Principal {name: 'Buffers trade money for variability reduction', code: 'V11'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V12:Principal {name: 'Reducing consequences is usually the best way to reduce the cost of variability', code: 'V12'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V13:Principal {name: 'Operate in the linear range of system performance', code: 'V13'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V14:Principal {name: 'Substitute cheap variability for expensive variability', code: 'V14'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V15:Principal {name: 'It is usually better to improve iteration speed than defect rate', code: 'V15'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V16:Principal {name: 'Move variability to the process stage where its cost is lowest', code: 'V16'})

CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B1:Principal {name: 'Reducing batch size reduces cycle time', code: 'B1'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B2:Principal {name: 'Reducing batch sizes reduces variability in flow', code: 'B2'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B3:Principal {name: 'Reducing batch sizes accelerates feedback', code: 'B3'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B4:Principal {name: 'Reducing batch size reduces risk', code: 'B4'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B5:Principal {name: 'Reducing batch size reduces overhead', code: 'B5'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B6:Principal {name: 'Large batches reduce efficiency', code: 'B6'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B7:Principal {name: 'Large batches inherently lower motivation and urgency', code: 'B7'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B8:Principal {name: 'Large batches cause exponential cost and schedule growth', code: 'B8'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B9:Principal {name: 'Large batches lead to even larger batches', code: 'B9'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B10:Principal {name: 'The entire batch is limited by its worst element', code: 'B10'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B11:Principal {name: 'Economic batch size is a U-curve optimization', code: 'B11'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B12:Principal {name: 'Reducing transaction cost per batch lowers overall costs', code: 'B12'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B13:Principal {name: 'Batch size reduction saves much more than you think', code: 'B13'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B14:Principal {name: 'Small batches allow finer tuning of capacity utilization', code: 'B14'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B15:Principal {name: 'Loose coupling between product subsystems enables small batches', code: 'B15'}) // Microservices!
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B16:Principal {name: 'The most important batch is the transport batch', code: 'B16'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B17:Principal {name: 'Proximity enables small batch sizes', code: 'B17'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B18:Principal {name: 'Short run lengths reduce queues', code: 'B18'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B19:Principal {name: 'Good infrastructure enables small batches', code: 'B19'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B20:Principal {name: 'Sequence first that which adds value most cheaply', code: 'B20'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B21:Principal {name: 'Reduce batch size before you attack bottlenecks', code: 'B21'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B22:Principal {name: 'Adjust batch size size dynamically to respond to changing economics', code: 'B22'})

CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W1:Principal {name: 'Constrain WIP to control cycle time and flow', code: 'W1'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W2:Principal {name: 'WIP contraints force rate matching', code: 'W2'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W3:Principal {name: 'Use global constraints for predictable and permanent bottlenecks', code: 'W3'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W4:Principal {name: 'If possible, constrain local WIP pools', code: 'W4'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W5:Principal {name: 'Use WIP ranges to decouple the batch sizes of adjacent processes', code: 'W5'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W6:Principal {name: 'Block all demand when WIP reaches its upper limit', code: 'W6'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W7:Principal {name: 'When WIP is high, purge low-value projects', code: 'W7'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W8:Principal {name: 'Control WIP by shedding requirements', code: 'W8'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W9:Principal {name: 'Quickly apply extra resources to an emerging queue', code: 'W9'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W10:Principal {name: 'Use part time resources for high variability tasks', code: 'W10'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W11:Principal {name: 'Pull high-powered experts to emerging bottlenecks', code: 'W11'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W12:Principal {name: 'Develop people who are deep in one area and broad in many', code: 'W12'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W13:Principal {name: 'Cross-train resources at adjacent processes', code: 'W13'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W14:Principal {name: 'Use upstream mix changes to regulate queue size', code: 'W14'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W15:Principal {name: 'Watch the outliers', code: 'W15'}) // WIP aging
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W16:Principal {name: 'Create a pre-planned escalation process for outliers', code: 'W16'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W17:Principal {name: 'Increase throttling as you approach the queue limit', code: 'W17'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W18:Principal {name: 'Differentiate quality of service by workstream', code: 'W18'}) // Classes of service
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W19:Principal {name: 'Adjust WIP constraints as capacity changes', code: 'W19'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W20:Principal {name: 'Prevent uncontrolled expansion of work', code: 'W20'}) // Overproduction?
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W21:Principal {name: 'Constrain WIP in the section of the system where the queue is most expensive', code: 'W21'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W22:Principal {name: 'Small WIP reductions accumulate', code: 'W22'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W23:Principal {name: 'Make WIP continuously visible', code: 'W23'})

CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F1:Principal {name: 'When loading becomes too high, we will see a sudden and catastrophic drop in output', code: 'F1'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F2:Principal {name: 'Control occupancy to sustain high throughput in systems prone to congestion', code: 'F2'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F3:Principal {name: 'Use forecasts of expected flow time to make congestion visible', code: 'F3'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F4:Principal {name: 'Use pricing to reduce demand during congested periods', code: 'F4'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F5:Principal {name: 'Use a regular cadence to limit the accumulation of variance', code: 'F5'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F6:Principal {name: 'Provide sufficient capacity margin to enable cadence', code: 'F6'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F7:Principal {name: 'Use cadence to make waiting times predictable', code: 'F7'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F8:Principal {name: 'Use a regular cadence to enable small batch sizes', code: 'F8'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F9:Principal {name: 'Schedule frequent meetings using a predictable cadence', code: 'F9'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F10:Principal {name: 'To enable synchronization, provide sufficient capacity margin', code: 'F10'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F11:Principal {name: 'Exploit scale economies by sychronizing work from multiple projects', code: 'F11'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F12:Principal {name: 'Use sychronized events to facilitate cross function trade-offs', code: 'F12'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F13:Principal {name: 'To reduce queues, sychronize the batch size and timing of adjacent processes', code: 'F13'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F14:Principal {name: 'Make nested cadences harmonic multiples', code: 'F14'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F15:Principal {name: 'When delay costs are homogenous, do the shortest job first', code: 'F15'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F16:Principal {name: 'When job durations are homogenous, do the high cost-of-delay job first', code: 'F16'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F17:Principal {name: 'When job durations and delays costs are not homogenous, use WSJF', code: 'F17'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F18:Principal {name: 'Priorities are inherently local', code: 'F18'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F19:Principal {name: 'When task duration is unknown, time-share capacity', code: 'F19'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F20:Principal {name: 'Only preempt when switching costs are low', code: 'F20'}) // Expedite class of service
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F21:Principal {name: 'Use sequence to match jobs to appropriate resources', code: 'F21'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F22:Principal {name: 'Select and tailor the sequence of subprocesses to the task at hand', code: 'F22'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F23:Principal {name: 'Route work based on the current most economic route', code: 'F23'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F24:Principal {name: 'Develop and maintain alternate routes around points of congestion', code: 'F24'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F25:Principal {name: 'Use flexible resources to absorb variation', code: 'F25'}) // Cloud
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F26:Principal {name: 'The later we bind demand to resources, the smoother the flow', code: 'F26'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F27:Principal {name: 'Make tasks and resources reciprocally visible at adjacent processes', code: 'F27'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F28:Principal {name: 'For fast responses, preplan and invest in flexibility', code: 'F28'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F29:Principal {name: 'Correctly managed, centralized resources can reduce queues', code: 'F29'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F30:Principal {name: 'Reduce variability before a bottleneck', code: 'F30'})

CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF1:Principal {name: 'Focus control on project and process parameters with the highest economic influence', code: 'FF1'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF2:Principal {name: 'Control parameters that are both influential and efficient', code: 'FF2'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF3:Principal {name: 'Select control variables that predict future system behaviour', code: 'FF3'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF4:Principal {name: 'Set tripwires at points of equal economic performance', code: 'FF4'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF5:Principal {name: 'Know when to pursue a dynamic goal', code: 'FF5'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF6:Principal {name: 'Exploit unplanned economic opportunities', code: 'FF6'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF7:Principal {name: 'Fast feedback enables smaller queues', code: 'FF7'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF8:Principal {name: 'Use fast feedback to make learning faster and more efficient', code: 'FF8'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF9:Principal {name: 'What gets measured may not get done', code: 'FF9'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF10:Principal {name: 'We don\'t need long planning horizons when we have a short turning radius', code: 'FF10'}) // Lean Start Up
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF11:Principal {name: 'Small batches yield fast feedback', code: 'FF11'}) // CD
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF12:Principal {name: 'To detect a smaller signal, reduce the noise', code: 'FF12'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF13:Principal {name: 'Control the economic logic behind a decision, not the entire decision', code: 'FF13'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF14:Principal {name: 'Whenever possible, make feedback local', code: 'FF14'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF15:Principal {name: 'Have a clear, predetermined relief valve', code: 'FF15'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF16:Principal {name: 'Embed fast control loops inside slow loops', code: 'FF16'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF17:Principal {name: 'Keep deviations within the control range', code: 'FF17'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF18:Principal {name: 'Provide advance notice of heavy arrival rates to minimize queues', code: 'FF18'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF19:Principal {name: 'Colocation improves almost all aspects of communication', code: 'FF19'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF20:Principal {name: 'Fast feedback gives a sense of control', code: 'FF20'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF21:Principal {name: 'Large queues makes it hard to create urgency', code: 'FF21'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF22:Principal {name: 'The human element tends to amplify large excursions', code: 'FF22'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF23:Principal {name: 'To align behaviours, reward people for the work of others', code: 'FF23'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF24:Principal {name: 'Time counts more than money', code: 'FF24'})

CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D1:Principal {name: 'Decentralize control for problems and opportunities that age poorly', code: 'D1'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D2:Principal {name: 'Centralize control for problems that are infrequent, large, or that have significant economies of scale', code: 'D2'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D3:Principal {name: 'Adapt the control approach to emerging information about the problem', code: 'D3'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D4:Principal {name: 'Adjust the plan for unplanned obstacles and opportunities', code: 'D4'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D5:Principal {name: 'Be able to quickly reorganize decentralized resources to create centralized power', code: 'D5'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D6:Principal {name: 'The inefficiency of decentralization can cost less than the value of faster response time', code: 'D6'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D7:Principal {name: 'There is more value created with overall alignment than local excellence', code: 'D7'}) // Systems thinking
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D8:Principal {name: 'Specify the end state, its purpose, and the minimal possible constraints', code: 'D8'}) // Misson command
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D9:Principal {name: 'Establish clear roles and boundaries', code: 'D9'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D10:Principal {name: 'Designate a main effort and subordinate other activities', code: 'D10'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D11:Principal {name: 'The main effort may shift quickly when conditions change', code: 'D11'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D12:Principal {name: 'Develop the ability to quickly shift focus', code: 'D12'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D13:Principal {name: 'Tactical coordination should be local', code: 'D13'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D14:Principal {name: 'Use simple modular plans', code: 'D14'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D15:Principal {name: 'Decentralize a portion of reserves', code: 'D15'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D16:Principal {name: 'Make early and meaningful contact with the problem', code: 'D16'}) // MVP
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D17:Principal {name: 'For decentralized decisions, disseminate key information widely', code: 'D17'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D18:Principal {name: 'We can\'t respond faster than our frequency response', code: 'D18'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D19:Principal {name: 'When response time is important, measure response time', code: 'D19'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D20:Principal {name: 'Use internal and external markets to decentralize control', code: 'D20'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D21:Principal {name: 'Cultivating initiative enables us to use initiative', code: 'D21'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D22:Principal {name: 'Exploit the speed and bandwidth of face-to-face communications', code: 'D22'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D23:Principal {name: 'Trust is built through experience', code: 'D23'})

// CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B1:Principal {name: '', code: 'B1'})

CREATE (CostOfDelay:Measure {name: 'Cost of Delay'})-[:DESCRIBED_BY]->(FlowBook)
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

// Scrum

CREATE (Scrum:Framework {name: 'Scrum'})-[:DESCRIBED_BY]->(ScrumGuide:Link {name: 'Scrum Guide', url: 'https://www.scrumguides.org/scrum-guide.html'})

// Roles
CREATE (ProductOwner:Role {name: 'Product Owner'})-[:ROLE_OF]->(Scrum)
CREATE (ScrumMaster:Role {name: 'Scrum Master'})-[:ROLE_OF]->(Scrum)
CREATE (DevelopmentTeam:Role {name: 'Development Team'})-[:ROLE_OF]->(Scrum)

// Events
CREATE (SprintPlanning:Event {name: 'Sprint Planning'})-[:MEETING_OF]->(Scrum)
CREATE (SprintRetrospective:Event {name: 'Sprint Retrospective'})-[:MEETING_OF]->(Scrum)
CREATE (SprintReview:Event {name: 'Sprint Review'})-[:MEETING_OF]->(Scrum)
CREATE (DailyScrum:Event {name: 'Daily Scrum'})-[:MEETING_OF]->(Scrum)
CREATE (Sprint:Event {name: 'Sprint'})-[:MEETING_OF]->(Scrum)
CREATE (Sprint)-[:ALSO_KNOWN_AS]->(Iteration)
CREATE (SprintBurndown:Measure {name: 'Sprint Burndown'})-[:MEASUREMENT_OF]->(Sprint)
CREATE (ReleaseBurnup:Measure {name: 'Release Burnup'})

// Artifacts
CREATE (Increment:Artifact {name: 'Increment'})-[:ARTIFACT_OF]->(Scrum)
CREATE (ProductBacklog:Artifact {name: 'Product Backlog'})-[:ARTIFACT_OF]->(Scrum)
CREATE (ProductBacklog)-[:SPECIALISM_OF]->(Queue)
CREATE (SprintBacklog:Artifact {name: 'Sprint Backlog'})-[:Artifact_OF]->(Scrum)
CREATE (SprintBacklog)-[:SPECIALISM_OF]->(Queue)

CREATE (DailyScrum)-[:ALSO_KNOWN_AS]->(KanbanDailyStandUp)
CREATE (DailyScrum)-[:ALSO_KNOWN_AS]->(XPDailyStandUp)
CREATE (SprintPlanning)-[:ALSO_KNOWN_AS]->(IterationPlanning)
CREATE (SprintPlanning)-[:ALSO_KNOWN_AS]->(ReplenishmentMeeting)
CREATE (SprintRetrospective)-[:ALSO_KNOWN_AS]->(RiskReview)

CREATE (DefinitionOfDone:Practice {name: 'Definition of Done'})-[:SPECIALISM_OF]->(PullPolicies)
CREATE (DefinitionOfDone)-[:PRACTICE_OF]->(Scrum)
CREATE (DefinitionOfReady:Practice {name: 'Definition of Ready'})-[:SPECIALISM_OF]->(PullPolicies)

// LeSS

CREATE (LeSS:Framework {name: 'LeSS'})-[:SCALES]->(Scrum)
CREATE (LeSS)-[:DESCRIBED_BY]->(LeSSWebsite:Link {name: 'Large Scale Scrum', url: 'http://less.works/'})

CREATE (SprintPlanningOne:Event {name: 'Sprint Planning One'})-[:MEETING_OF]->(LeSS)
CREATE (SprintPlanningTwo:Event {name: 'Sprint Planning Two'})-[:MEETING_OF]->(LeSS)
CREATE (OverallRetrospective:Event {name: 'Overall Retrospective'})-[:MEETING_OF]->(LeSS)

// Nexus

CREATE (Nexus:Framework {name: 'Nexus'})-[:SCALES]->(Scrum)
CREATE (Nexus)-[:DESCRIBED_BY]->(NexusWebsite:Link {name: 'Scaling Scrum with Nexus', url: 'https://www.scrum.org/resources/scaling-scrum'})

// Nexus Roles

CREATE (NexusIntegrationTeam:Role {name: 'Nexus Integration Team'})-[:ROLE_OF]->(Nexus)

// Nexus Events
CREATE (NexusSprintPlanning:Event {name: 'Nexus Sprint Planning'})-[:MEETING_OF]->(Nexus)
CREATE (NexusSprintRetrospective:Event {name: 'Nexus Sprint Retrospective'})-[:MEETING_OF]->(Nexus)
CREATE (NexusDailyScrum:Event {name: 'Nexus Daily Scrum'})-[:MEETING_OF]->(Nexus)
CREATE (NexusSprintReview:Event {name: 'Nexus Sprint Review'})-[:MEETING_OF]->(Nexus)

// Nexus Artifacts
CREATE (ProductBacklog)-[:ARTIFACT_OF]->(Nexus)
CREATE (NexusSprintBacklog:Artifact {name: 'Nexus Sprint Backlog'})-[:ARTIFACT_OF]->(Nexus)
CREATE (IntegratedIncrement:Artifact {name: 'Integrated Increment'})-[:ARTIFACT_OF]->(Nexus)
CREATE (IntegratedIncrement)-[:SPECIALISM_OF]->(Increment)

CREATE (DefinitionOfDone)-[:PRACTICE_OF]->(Nexus)

// SAFe

CREATE (SAFe:Framework {name: 'SAFe'})-[:SCALES]->(Scrum)
CREATE (SAFe)-[:DESCRIBED_BY]->(SAFeWebsite:Link {name: 'Scaled Agile Framework', url: 'https://www.scaledagileframework.com/'})
CREATE (AgileReleaseTrain:Artifact {name: 'Agile Release Train'})-[:ARTIFACT_OF]->(SAFe)
CREATE (ReleaseTrainEngineer:Role {name: 'Release Train Engineer'})-[:ROLE_OF]->(SAFe)
CREATE (PIPlanning:Event {name: 'PI Planning'})-[:MEETING_OF]->(SAFe)
CREATE (PIPlanning)-[:FACILITATED_BY]->(ReleaseTrainEngineer)
CREATE (PortfolioKanban)-[:PRACTICE_OF]->(SAFe)
CREATE (AgileTeam:Role {name: 'Agile Team'})-[:ROLE_OF]->(SAFe)
CREATE (AgileTeam)-[:ALSO_KNOWN_AS]->(DevelopmentTeam)
CREATE (Epic:Artifact {name: 'Epic'})-[:ARTIFACT_OF]->(SAFe)

// DSDM

CREATE (DSDM:Framework {name: 'DSDM'})
CREATE (MoSCoW:Practice {name: 'MoSCoW'})-[:PRACTICE_OF]->(DSDM)

// User Stories

CREATE (INVEST:Practice {name: 'INVEST'})
CREATE (StoryMapping:Practice {name: 'Story Mapping'})-[:DESCRIBED_BY]->(StoryMappingBook:Book {name: 'Story Mapping', isbn: '1491904909'})-[:WRITTEN_BY]->(JeffPatton:Person {name: 'Jeff Patton'})
CREATE (ImpactMapping:Practice {name: 'Impact Mapping'})
CREATE (GojkoAdzic:Person {name: 'Gojko Adzic'})<-[:WRITTEN_BY]-(ImpactMappingBook:Book {name: 'Impact Mapping', isbn: '0955683645'})<-[:DESCRIBED_BY]-(ImpactMapping)

// Test Automation

CREATE (BDD:Practice {name: 'BDD'})-[:SPECIALISM_OF]->(TestAutomation)
CREATE (ATDD:Practice {name: 'ATDD'})-[:SPECIALISM_OF]->(TestAutomation)
CREATE (UnitTesting:Practice {name: 'Unit Testing'})-[:SPECIALISM_OF]->(TestAutomation)
CREATE (StaticCodeAnalysis:Practice {name: 'Static Code Analysis'})
CREATE (CodeCoverage:Measure {name: 'Code Coverage'})-[:MEASUREMENT_OF]->(UnitTesting)
CREATE (ThreeAmigos:Practice {name: '3 Amigos'})
CREATE (SBE:Practice {name: 'Specification by Example'})-[:DESCRIBED_BY]->(SBEBook:Book {name: 'Specification by Example', isbn: '9781617290084'})<-[:WRITTEN_BY]-(GojkoAdzic)

CREATE (COP:Practice {name: 'Communities of Practice'})
CREATE (PageObject:Practice {name: 'Page Objects'})
CREATE (ContractTesting:Practice {name: 'Contract Testing'})-[:SPECIALISM_OF]->(TestAutomation)
CREATE (MutationTesting:Practice {name: 'Mutation Testing'})-[:SPECIALISM_OF]->(UnitTesting)

CREATE (eNPS:Measure {name: 'eNPS'})

// Arch

CREATE (DDD:Practice {name: 'Domain-Driven Design'})
CREATE (Microservices:Practice {name: 'Microservices'})

CREATE (CloudComputing:Model {name: 'Cloud Computing'})
CREATE (IaaS:Model {name: 'Infrastructure as a Service'})-[:SPECIALISM_OF]->(CloudComputing)
CREATE (PaaS:Model {name: 'Platform as a Service'})-[:SPECIALISM_OF]->(CloudComputing)
CREATE (SaaS:Model {name: 'Software as a Service'})-[:SPECIALISM_OF]->(CloudComputing)
CREATE (FaaS:Model {name: 'Function as a Service'})-[:SPECIALISM_OF]->(CloudComputing)

// DevOps

CREATE (DevOps:Model {name: 'DevOps'})-[:DESCRIBED_BY]->(DevOpsHandbook:Book {name: 'DevOps Handbook', isbn: '1942788002'})-[:WRITTEN_BY]->(JezHumble)
CREATE (DevOpsHandbook)-[:WRITTEN_BY]->(GeneKim)
CREATE (DevOpsHandbook)-[:WRITTEN_BY]->(PatrickDubois:Person {name: 'Patrick Dubois'})
CREATE (DevOpsHandbook)-[:WRITTEN_BY]->(JohnWillis:Person {name: 'John Willis'})

CREATE (DevOps)-[:DESCRIBED_BY]->(PhoenixProject:Book {name: 'The Phoenix Project', isbn: '1942788290'})-[:WRITTEN_BY]->(GeneKim)
CREATE (PhoenixProject)-[:WRITTEN_BY]->(KevinBehr:Person {name: 'Kevin Behr'})
CREATE (PhoenixProject)-[:WRITTEN_BY]->(GeorgeSpafford:Person {name: 'George Spafford'})