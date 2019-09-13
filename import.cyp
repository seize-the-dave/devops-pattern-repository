// This is the root of our model.  We care about software development, delivery and operations
CREATE (SoftwareDevelopment:Process {name: 'Software Development'})
CREATE (SoftwareDelivery:Process {name: 'Software Delivery'})-[:FOLLOWS]->(SoftwareDevelopment)
CREATE (Operations:Process {name: 'IT Operations'})-[:FOLLOWS]->(SoftwareDelivery)
CREATE (SoftwareEngineering:Process {name: 'Software Engineering'})-[:APPLICATION_OF]->(SoftwareDevelopment)

// Processes have inputs and outputs
CREATE (SoftwareRequirements:Process {name: 'Software Requirements'})-[:PART_OF]->(SoftwareEngineering)
CREATE (SoftwareDesign:Process {name: 'Software Design'})-[:PART_OF]->(SoftwareEngineering)
CREATE (SoftwareDesign)-[:FOLLOWS]->(SoftwareRequirements)
CREATE (SoftwareConstruction:Process {name: 'Software Construction'})-[:PART_OF]->(SoftwareEngineering)
CREATE (SoftwareConstruction)-[:FOLLOWS]->(SoftwareDesign)
CREATE (SoftwareTesting:Process {name: 'Software Testing'})-[:PART_OF]->(SoftwareEngineering)
CREATE (SoftwareTesting)-[:FOLLOWS]->(SoftwareConstruction)

// Lean

CREATE (ValueStreamMapping:Practice {name: 'Value Stream Mapping'})-[:CREATES]->(ValueStreamMap:Artifact {name: 'Value Stream Map'})
CREATE (ValueStream:Model {name: 'Value Stream'})-[:DESCRIBED_BY]->(ValueStreamMap)

// Agile

CREATE (Agile:Model {name: 'Agile Software Development'})<-[:IMPLEMENTED_BY]-(SoftwareDevelopment)
CREATE (SoftwareDevelopment)-[:IMPLEMENTED_BY]->(Agile)
CREATE (Agile)-[:GUIDED_BY]->(SatisfyCustomer:Principle {name: 'Our highest priority is to satisfy the customer through early and continuous delivery of valuable software.'})
CREATE (Agile)-[:GUIDED_BY]->(LateChangingRequirements:Principle {name: 'Welcome changing requirements, even late in development. Agile processes harness change for the customer\'s competitive advantage'})
CREATE (Agile)-[:GUIDED_BY]->(DeliverFrequently:Principle {name: 'Deliver working software frequently, from a couple of weeks to a couple of months, with a preference to the shorter timescale.'})
CREATE (Agile)-[:GUIDED_BY]->(WorkTogetherDaily:Principle {name: 'Business people and developers must work together daily throughout the project.'})
CREATE (Agile)-[:GUIDED_BY]->(MotivatedIndividuals:Principle {name: 'Build projects around motivated individuals. Give them the environment and support they need, and trust them to get the job done.'})
CREATE (Agile)-[:GUIDED_BY]->(FaceToFace:Principle {name: 'The most efficient and effective method of conveying information to and within a development team is face-to-face conversation.'})
CREATE (Agile)-[:GUIDED_BY]->(WorkingSoftware:Principle {name: 'Working software is the primary measure of progress.'})
CREATE (Agile)-[:GUIDED_BY]->(SustainablePace:Principle {name: 'Agile processes promote sustainable development. The sponsors, developers, and users should be able to maintain a constant pace indefinitely.'})
CREATE (Agile)-[:GUIDED_BY]->(TechnicalExcellence:Principle {name: 'Continuous attention to technical excellence and good design enhances agility.'})
CREATE (Agile)-[:GUIDED_BY]->(Simplicity:Principle {name: 'Simplicity -- the art of maximizing the amount of work not done -- is essential.'})
CREATE (Agile)-[:GUIDED_BY]->(SelfOrganizingTeams:Principle {name: 'The best architectures, requirements, and designs emerge from self-organizing teams.'})
CREATE (Agile)-[:GUIDED_BY]->(ReflectRegularly:Principle {name: 'At regular intervals, the team reflects on how to become more effective, then tunes and adjusts its behavior accordingly.'})
CREATE (SoftwareTesting)-[:DESCRIBED_BY]->(AgileTesting:Resource:Book {name: 'Agile Testing', isbn: '9780321534460'})-[:WRITTEN_BY]->(LisaCrispin:Person {name: 'Lisa Crispin'})
CREATE (AgileTesting)-[:WRITTEN_BY]->(JanetGregory:Person {name: 'Janet Gregory'})

// Lean

CREATE (Queue:Artifact {name: 'Queue'})
CREATE (LeanSoftwareDevelopment:Framework {name: 'Lean Software Development'})-[:DESCRIBED_BY]->(LSDToolkit:Resource:Book {name: 'Lean Software Development: An Agile Toolkit', isbn: '9780133812954'})-[:WRITTEN_BY]->(MaryPoppendieck:Person {name: 'Mary Poppendieck'})
CREATE (LSDToolkit)-[:WRITTEN_BY]->(TomPoppendieck:Person {name: 'Tom Poppendieck'})
CREATE (Agile)-[:IMPLEMENTED_BY]->(LeanSoftwareDevelopment)

// 7 Wastes
CREATE (PartiallyDoneWork:Measure {name: 'Partially Done Work'})-[:MEASUREMENT_OF]->(LeanSoftwareDevelopment)
CREATE (ExtraFeatures:Measure {name: 'Extra Features'})-[:MEASUREMENT_OF]->(LeanSoftwareDevelopment)
CREATE (Relearning:Measure {name: 'Relearning'})-[:MEASUREMENT_OF]->(LeanSoftwareDevelopment)
CREATE (Handoffs:Measure {name: 'Handoffs'})-[:MEASUREMENT_OF]->(LeanSoftwareDevelopment)
CREATE (Delays:Measure {name: 'Delays'})-[:MEASUREMENT_OF]->(LeanSoftwareDevelopment)
CREATE (TaskSwitching:Measure {name: 'Task Switching'})-[:MEASUREMENT_OF]->(LeanSoftwareDevelopment)
CREATE (Defects:Measure {name: 'Defects'})-[:MEASUREMENT_OF]->(LeanSoftwareDevelopment)

// XP

CREATE (XP:Method {name: 'Extreme Programming'})-[:DESCRIBED_BY]->(XPE:Resource:Book {name: 'Extreme Programming Explained', isbn: '9780321278654'})-[:WRITTEN_BY]->(KentBeck:Person {name: 'Kent Beck'})
CREATE (Agile)-[:IMPLEMENTED_BY]->(XP)

CREATE (TestDrivenDevelopment:Practice {name: 'Test-Driven Development (TDD)'})-[:PRACTICE_OF]->(XP)
CREATE (TestDrivenDevelopment)-[:DESCRIBED_BY]->(TDDByExample:Resource:Book {name: 'Test-Driven Development', isbn: '9780321146533'})-[:WRITTEN_BY]->(KentBeck)
CREATE (TestDrivenDevelopment)-[:DESCRIBED_BY]->(GOOS:Resource:Book {name: 'Growing Object-Oriented Software, Guided by Tests', isbn: '0321503627'})-[:WRITTEN_BY]->(SteveFreeman:Person {name: 'Steve Freeman'})
CREATE (GOOS)-[:WRITTEN_BY]->(NatPryce:Person {name: 'Nat Pryce'})
CREATE (PairProgramming:Practice {name: 'Pair Programming'})-[:PRACTICE_OF]->(XP)
CREATE (PairProgramming)-[:IMPROVES]->(SoftwareConstruction)
CREATE (ContinuousIntegration:Practice {name: 'Continuous Integration'})-[:PRACTICE_OF]->(XP)
CREATE (ContinuousIntegrationBook:Resource:Book {name: 'Continuous Integration', isbn: '9780321336385'})<-[:DESCRIBED_BY]-(ContinuousIntegration)
CREATE (PaulDuvall:Person {name: 'Paul Duvall'})<-[:WRITTEN_BY]-(ContinuousIntegrationBook)
CREATE (CodingStandards:Practice {name: 'Coding Standards'})-[:PRACTICE_OF]->(XP)
CREATE (CollectiveCodeOwnership:Practice {name: 'Collective Code Ownership'})-[:PRACTICE_OF]->(XP)
CREATE (OnsiteCustomer:Practice {name: 'Onsite Customer'})-[:PRACTICE_OF]->(XP)
CREATE (IterationPlanning:Event {name: 'Iteration Planning'})-[:PRACTICE_OF]->(XP)
CREATE (UserStories:Practice {name: 'User Stories'})-[:PRACTICE_OF]->(XP)
CREATE (SoftwareRequirements)-[:IMPLEMENTED_BY]->(UserStories)
CREATE (ThreeCs:Practice {name: '3 Cs: Card, Confirmation, Conversation'})-[:IMPROVES]->(UserStories)
CREATE (AcceptanceCritera:Practice {name: 'Acceptance Criteria'})-[:IMPROVES]->(UserStories)
CREATE (SpikeSolution:Practice {name: 'Spike Solution'})-[:PRACTICE_OF]->(XP)
CREATE (SoftwareDesign)-[:IMPLEMENTED_BY]->(SpikeSolution)
CREATE (ReleasePlanning:Event {name: 'Release Planning'})-[:MEETING_OF]->(XP)
CREATE (ReleasePlan:Artifact {name: 'Release Plan'})-[:ARTIFACT_OF]->(XP)
CREATE (Iteration:Event {name: 'Iteration'})-[:MEETING_OF]->(XP)
CREATE (Velocity:Measure {name: 'Velocity'})-[:MEASUREMENT_OF]->(XP)
CREATE (XPDailyStandUp:Event {name: 'Daily Stand Up Meeting'})-[:MEETING_OF]->(XP)
CREATE (Refactoring:Practice {name: 'Refactoring'})-[:PRACTICE_OF]->(XP)
CREATE (Refactoring)-[:IMPROVES]->(SoftwareDesign)
CREATE (Refactoring)-[:DESCRIBED_BY]->(RefactoringBook:Resource:Book {name: 'Refactoring', isbn: ' 0134757599'})-[:WRITTEN_BY]->(MartinFowler:Person {name: 'Martin Fowler'})

CREATE (UserStories)-[:DESCRIBED_BY]->(UserStoriesApplied:Resource:Book {name: 'User Stories Applied', isbn: '0321205685'})-[:WRITTEN_BY]->(MikeCohn:Person {name: 'Mike Cohn'})
CREATE (StorySlicing:Practice {name: 'Story Slicing'})-[:IMPROVES]->(UserStories)

// Kanban

// Kanban is more for system management.  Not sure how to weave it in.
CREATE (Kanban:Method {name: 'Kanban'})
CREATE (Kanban)-[:GUIDED_BY]->(FP1:Principle {name: 'Start with what you do now'})
CREATE (Kanban)-[:GUIDED_BY]->(FP2:Principle {name: 'Agree to pursue evolutionary change'})
CREATE (Kanban)-[:GUIDED_BY]->(FP3:Principle {name: 'Initially, respect current processes, roles, responsibilities and job titles'})
CREATE (Kanban)-[:GUIDED_BY]->(FP4:Principle {name: 'Encourage acts of leadership at every level in your organization -- from individual contributor to senior management'})

CREATE (STATIK:Activity {name: 'STATIK'})

CREATE (Kanban)-[:DESCRIBED_BY]->(BlueBook:Resource:Book {name: 'Kanban', isbn: '0984521402'})-[:WRITTEN_BY]->(DavidAnderson:Person {name: 'David J. Anderson'})
CREATE (Kanban)-[:DESCRIBED_BY]->(EssentialKanban:Resource:Book {name: 'Essential Kanban Condensed', isbn: '0984521429'})-[:WRITTEN_BY]->(DavidAnderson)
CREATE (Kanban)-[:DESCRIBED_BY]->(KanbanInside:Resource:Book {name: 'Kanban From the Inside', isbn: '0985305193'})-[:WRITTEN_BY]->(MikeBurrows:Person {name: 'Mike Burrows'})
CREATE (EssentialKanban)-[:WRITTEN_BY]->(AndyCarmichael:Person {name: 'Andy Carmichael'})

CREATE (Kanban)-[:DESCRIBED_BY]->(PracticalKanban:Resource:Book {name: 'Practical Kanban', isbn: '3903205001'})-[:WRITTEN_BY]->(KlausLeopold:Person {name: 'Klaus Leopold'})
CREATE (BlockerClustering:Practice {name: 'Blocker Clustering'})-[:DESCRIBED_BY]->(PracticalKanban)

CREATE (UpstreamKanban:Practice {name: 'Upstream Kanban'})-[:DESCRIBED_BY]->(EssentialUpstreamKanban:Resource:Book {name: 'Essential Upstream Kanban', isbn: '098452147X'})-[:WRITTEN_BY]->(PatrickSteyart:Person {name: 'Patrick Steyeart'})
CREATE (CustomerKanban:Practice {name: 'Customer Kanban'})-[:DESCRIBED_BY]->(EssentialUpstreamKanban)
CREATE (UpstreamKanban)-[:SPECIALISM_OF]->(Kanban)
CREATE (CustomerKanban)-[:SPECIALISM_OF]->(Kanban)
CREATE (PortfolioKanban:Practice {name: 'Portfolio Kanban'})-[:SPECIALISM_OF]->(Kanban)
CREATE (PersonalKanban:Practice {name: 'Personal Kanban'})-[:SPECIALISM_OF]->(Kanban)
CREATE (PersonalKanban)-[:DESCRIBED_BY]->(PersonalKanbanBook:Resource:Book {name: 'Personal Kanban', isbn: '1453802266'})-[:WRITTEN_BY]->(JimBenson:Person {name: 'Jim Benson'})
CREATE (PersonalKanbanBook)-[:WRITTEN_BY]->(TonianneDeMariaBarry:Person {name: 'Tonianne DeMaria Barry'})
CREATE (TeamKanban:Practice {name: 'Team Kanban'})-[:SPECIALISM_OF]->(Kanban)

CREATE (Agendashift:Model {name: 'Agendashift'})-[:DESCRIBED_BY]->(AgendashiftBook:Resource:Book {name: 'Agendashift'})-[:WRITTEN_BY]->(MikeBurrows)

CREATE (FlightLevels:Practice {name: 'Kanban Flight Levels'})-[:DESCRIBED_BY]->(RethinkingAgile:Resource:Book {name: 'Rethinking Agile'})-[:WRITTEN_BY]->(KlausLeopold)
CREATE (FlightLevels)-[:DESCRIBED_BY]->(PracticalKanban)
CREATE (FlightLevels)<-[:SPECIALISM_OF]-(FlightLevel3:Practice {name: 'Flight Level 3'})-[:ALSO_KNOWN_AS]->(PortfolioKanban)
CREATE (FlightLevels)<-[:SPECIALISM_OF]-(FlightLevel2:Practice {name: 'Flight Level 2'})-[:ALSO_KNOWN_AS]->(ValueStream)
CREATE (FlightLevels)<-[:SPECIALISM_OF]-(FlightLevel1:Practice {name: 'Flight Level 1'})-[:ALSO_KNOWN_AS]->(TeamKanban)

CREATE (FoldingPaperShips:Activity {name: 'Folding Paper Ships'})-[:DEMONSTRATES]->(Kanban)
CREATE (FoldingPaperShips)-[:DESCRIBED_BY]->(PracticalKanban)
CREATE (Featureban:Activity {name: 'Featureban'})-[:DEMONSTRATES]->(Kanban)
CREATE (Featureban)-[:DESCRIBED_BY]->(FeaturebanLink:Resource:Link {name: 'Featureban', url: 'https://www.agendashift.com/featureban'})
CREATE (GetKanban:Activity {name: 'getKanban Board Game'})-[:DEMONSTRATES]->(Kanban)
CREATE (GetKanban)-[:DESCRIBED_BY]->(GetKanbanLink:Resource:Link {name: 'getKanban', url: 'https://getkanban.com/'})

CREATE (ActionableAgile:Resource:Book {name: 'Actionable Agile Metrics for Predictability', isbn: '098643633X'})-[:WRITTEN_BY]->(DanVacanti:Person {name: 'Dan Vacanti'})
CREATE (WorkInProgress:Measure {name: 'WIP'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (CycleTime:Measure {name: 'Cycle Time'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (Throughput:Measure {name: 'Throughput'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (WorkInProgress)-[:IMPACTS]->(CycleTime)-[:IMPACTS]->(Throughput)-[:IMPACTS]->(WorkInProgress)
CREATE (Throughput)-[:ALSO_KNOWN_AS]->(Velocity)
CREATE (CFD:Practice {name: 'Cumulative Flow Diagram'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (ArrivalRate:Measure {name: 'Arrival Rate'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (CycleTimeScatterplot:Practice {name: 'Cycle Time Scatterplot'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (CycleTimeHistogram:Practice {name: 'Cycle Time Histogram'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (SLA:Practice {name: 'Service Level Agreement'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (RightSizing:Practice {name: 'Right Sizing'})-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (StorySlicing)-[:ALSO_KNOWN_AS]->(RightSizing)
CREATE (ClassesOfService:Practice {name: 'Classes of Service'})
CREATE (ClassesOfService)-[:DESCRIBED_BY]->(ActionableAgile)
CREATE (MonteCarlo:Practice {name: 'Monte Carlo Simulation'})-[:DESCRIBED_BY]->(ActionableAgile)


CREATE (MakingWorkVisible:Resource:Book {name: 'Making Work Visible', isbn: '1942788150'})-[:WRITTEN_BY]->(DomincaDeGrandis:Person {name: 'Dominica DeGrandis'})



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

CREATE (KMM:Model {name: 'Kanban Maturity Model'})
CREATE (KMM)-[:MEASUREMENT_OF]->(Kanban)
CREATE (KMM)-[:DESCRIBED_BY]->(KMMBook:Resource:Book {name: 'Kanban Maturity Model', isbn: '0985305150'})-[:WRITTEN_BY]->(DavidAnderson)
CREATE (KMMBook)-[:WRITTEN_BY]->(TeodoraBozheva:Person {name: 'Teodora Bozheva'})

// VZ 0 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(VZ0_1:Practice {name: 'Visualize an individual’s work by means of a personal kanban board.', code: 'VZ0.1', level: 'ML0'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ0_1)-[:RELATED_TO]->(PersonalKanban)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ0_2:Practice {name: 'Visualize basic work item related information on a ticket.', code: 'VZ0.2', level: 'ML0'})-[:SPECIALISM_OF]->(Visualization)
// VZ 1 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(VZ1_1:Practice {name: 'Visualize work for several individuals by means of an aggregated personal kanban board.', code: 'VZ1.1', level: 'ML1'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ1_2:Practice {name: 'Visualize discovered initial policies.', code: 'VZ1.2', level: 'ML1'})-[:SPECIALISM_OF]->(Visualization)
// VZ 1 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(VZ1_3:Practice {name: 'Visualize the work carried out by a team by means of a team kanban board.', code: 'VZ1.3', level: 'ML1'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ1_4:Practice {name: 'Use avatars to visualize an individual’s workload.', code: 'VZ1.4', level: 'ML1'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ1_5:Practice {name: 'Visualize basic policies.', code: 'VZ1.5', level: 'ML1'})-[:SPECIALISM_OF]->(Visualization)
// VZ 2 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(VZ2_1:Practice {name: 'Visualize teamwork by means of an emergent workflow kanban board.', code: 'VZ2.1', level: 'ML2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ2_2:Practice {name: 'Visualize work items by means of a delivery kanban board with per-person WIP limits.', code: 'VZ2.2', level: 'ML2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ2_3:Practice {name: 'Visualize work types by means of card colors or board rows.', code: 'VZ2.3', level: 'ML2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ2_4:Practice {name: 'Visualize blocked work items.', code: 'VZ2.4', level: 'ML2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ2_5:Practice {name: 'Visualize work requests on another service or system.', code: 'VZ2.5', level: 'ML2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ2_6:Practice {name: 'Visualize work item aging.', code: 'VZ2.6', level: 'ML2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ2_7:Practice {name: 'Visualize basic service policies.', code: 'VZ2.7', level: 'ML2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ2_8:Practice {name: 'Visualize development of options by means of a upstream kanban board.', code: 'VZ2.8', level: 'ML2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_8)-[:SPECIALISM_OF]->(UpstreamKanban)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ2_9:Practice {name: 'Visualize avatars on an upstream kanban board.', code: 'VZ2.9', level: 'ML2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_9)-[:SPECIALISM_OF]->(UpstreamKanban)
// VZ 2 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(VZ2_10:Practice {name: 'Visualize constant WIP [CONWIP] on an emergent workflow delivery kanban board', code: 'VZ2.10', level: 'ML2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ2_11:Practice {name: 'Visualize concurrent or unordered activities with checkboxes.', code: 'VZ2.11', level: 'ML2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ2_12:Practice {name: 'Visualize concurrent activities performed by specialist teams using partial rows.', code: 'VZ2.12', level: 'ML2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ2_13:Practice {name: 'Visualize sequential activities where no dependency or preferred sequence exists using rows or vertical spaces.', code: 'VZ2.13', level: 'ML2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ2_14:Practice {name: 'Visualize defects and other rework types.', code: 'VZ2.14', level: 'ML2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ2_15:Practice {name: 'Visualize defined workflow using a kanban board.', code: 'VZ2.15', level: 'ML2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ2_16:Practice {name: 'Visualize project progress on a simple portfolio kanban board.', code: 'VZ2.16', level: 'ML2'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ2_16)-[:SPECIALISM_OF]->(PortfolioKanban)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ2_17:Practice {name: 'Visualize a program as an aggregated service delivery overview.', code: 'VZ2.17', level: 'ML2'})-[:SPECIALISM_OF]->(Visualization)
// VZ 3 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(VZ3_1:Practice {name: 'Visualize “ready to commit” status, also known as “ready to pull.”', code: 'VZ3.1', level: 'ML3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ3_2:Practice {name: 'Visualize “ready to pull” criteria, also known as “definition of ready,” or “entry criteria.”', code: 'VZ3.2', level: 'ML3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ3_3:Practice {name: 'Visualize project work items on a two-tiered project kanban board.', code: 'VZ3.3', level: 'ML3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ3_4:Practice {name: 'Visualize workflow and teamwork items by means of aggregated team kanban board.', code: 'VZ3.4', level: 'ML3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ3_5:Practice {name: 'Visualize discarded options using a bin on an upstream/discovery kanban board.', code: 'VZ3.5', level: 'ML3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_5)-[:SPECIALISM_OF]->(UpstreamKanban)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ3_6:Practice {name: 'Visualize parent–child and peer–peer dependencies.', code: 'VZ3.6', level: 'ML3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ3_7:Practice {name: 'Visualize upstream options by means of an upstream/discovery kanban board.', code: 'VZ3.7', level: 'ML3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_7)-[:SPECIALISM_OF]->(UpstreamKanban)
// VZ 3 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(VZ3_8:Practice {name: 'Visualize replenishment signals.', code: 'VZ3.8', level: 'ML3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ3_9:Practice {name: 'Visualize pull signals.', code: 'VZ3.9', level: 'ML3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ3_10:Practice {name: 'Visualize pull criteria (also known as “pull policies,” “definition of ready,” or “exit criteria”).', code: 'VZ3.10', level: 'ML3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ3_11:Practice {name: 'Visualize available capacity.', code: 'VZ3.11', level: 'ML3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ3_12:Practice {name: 'Visualize target date or SLA.', code: 'VZ3.12', level: 'ML3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ3_13:Practice {name: 'Visualize failure demand versus value demand.', code: 'VZ3.13', level: 'ML3'})-[:SPECIALISM_OF]->(Visualization)
// TODO: Failure Demand?
CREATE (KMM)<-[:PRACTICE_OF]-(VZ3_14:Practice {name: 'Visualize aborted work.', code: 'VZ3.14', level: 'ML3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ3_15:Practice {name: 'Visualize class of service using ticket colors, board rows, or ticket decorators.', code: 'VZ3.15', level: 'ML3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ3_16:Practice {name: 'Use Earned Value portfolio kanban board to visualize project progress and schedule or budget risk.', code: 'VZ3.16', level: 'ML3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_16)-[:SPECIALISM_OF]->(PortfolioKanban)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ3_17:Practice {name: 'Visualize a portfolio as an aggregated program overview board.', code: 'VZ3.17', level: 'ML3'})-[:SPECIALISM_OF]->(Visualization)
CREATE (VZ3_17)-[:SPECIALISM_OF]->(PortfolioKanban)
// VZ 4 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(VZ4_1:Practice {name: 'Visualize local cycle time.', code: 'VZ4.1', level: 'ML4'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ4_2:Practice {name: 'Use ticket decorators to indicate risks.', code: 'VZ4.2', level: 'ML4'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ4_3:Practice {name: 'Visualize risk classes with different swim lanes', code: 'VZ4.3', level: 'ML4'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ4_4:Practice {name: 'Visualize split-and-merge workflows.', code: 'VZ4.4', level: 'ML4'})-[:SPECIALISM_OF]->(Visualization)
// VZ 4 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(VZ4_5:Practice {name: 'Visualize WIP limits on dependencies parking lot.', code: 'VZ4.5', level: 'ML4'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ4_6:Practice {name: 'Visualize waiting time in dependencies parking lot.', code: 'VZ4.6', level: 'ML4'})-[:SPECIALISM_OF]->(Visualization)
CREATE (KMM)<-[:PRACTICE_OF]-(VZ4_7:Practice {name: 'Visualize SLA exceeded in dependencies parking lot.', code: 'VZ4.7', level: 'ML4'})-[:SPECIALISM_OF]->(Visualization)

// ML 0 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(LW0_1:Practice {name: 'Establish personal WIP limits.', code: 'LW0.1', level: 'ML0'})-[:SPECIALISM_OF]->(LimitWIP)
// ML 1 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(LW1_1:Practice {name: 'Establish per-person WIP limits.', code: 'LW1.1', level: 'ML1'})-[:SPECIALISM_OF]->(LimitWIP)
// ML 1 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(LW1_2:Practice {name: 'Establish team WIP limits.', code: 'LW1.2', level: 'ML1'})-[:SPECIALISM_OF]->(LimitWIP)
// ML 2 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(LW2_1:Practice {name: 'Establish CONWIP limits on emergent workflow.', code: 'LW2.1', level: 'ML2'})-[:SPECIALISM_OF]->(LimitWIP)
CREATE (KMM)<-[:PRACTICE_OF]-(LW2_2:Practice {name: 'Establish WIP limit on the aggregated service delivery overview board.', code: 'LW2.2', level: 'ML2'})-[:SPECIALISM_OF]->(LimitWIP)
// ML 3 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(LW3_1:Practice {name: 'Establish activity based WIP limits.', code: 'LW3.1', level: 'ML3'})-[:SPECIALISM_OF]->(LimitWIP)
// ML 3 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(LW3_2:Practice {name: 'Use an order point (min limit) for upstream replenishment.', code: 'LW3.2', level: 'ML3'})-[:SPECIALISM_OF]->(LimitWIP)
CREATE (KMM)<-[:PRACTICE_OF]-(LW3_3:Practice {name: 'Use a max limit to constrain upstream capacity.', code: 'LW3.3', level: 'ML3'})-[:SPECIALISM_OF]->(LimitWIP)
CREATE (KMM)<-[:PRACTICE_OF]-(LW3_4:Practice {name: 'Bracket WIP limits for different states.', code: 'LW3.4', level: 'ML3'})-[:SPECIALISM_OF]->(LimitWIP)
CREATE (KMM)<-[:PRACTICE_OF]-(LW3_5:Practice {name: 'Create an end-to-end pull system, from commitment to delivery', code: 'LW3.5', level: 'ML3'})-[:SPECIALISM_OF]->(LimitWIP)
// ML 4 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(LW4_1:Practice {name: 'Limit WIP on dependency parking lot.', code: 'LW4.1', level: 'ML4'})-[:SPECIALISM_OF]->(LimitWIP)

// ML 0 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(MF0_1:Practice {name: 'Categorize tasks by means of urgency, importance and impact.', code: 'MF0.1', level: 'ML0'})-[:SPECIALISM_OF]->(ManageFlow)
// ML 2 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(MF2_1:Practice {name: 'Define work types based on customer requests.', code: 'MF2.1', level: 'ML2'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF2_2:Practice {name: 'Define basic services.', code: 'MF2.2', level: 'ML2'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF2_3:Practice {name: 'Map upstream and downstream flow.', code: 'MF2.3', level: 'ML2'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF2_4:Practice {name: 'Define and collect blocker metrics.', code: 'MF2.4', level: 'ML2'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF2_5:Practice {name: 'Define and collect WIP aging metrics.', code: 'MF2.5', level: 'ML2'})-[:SPECIALISM_OF]->(ManageFlow)
// ML 2 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(MF2_6:Practice {name: 'Manage blocking issues.', code: 'MF2.6', level: 'ML2'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF2_7:Practice {name: 'Manage defects and other rework types.', code: 'MF2.7', level: 'ML2'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF2_8:Practice {name: 'Manage aging WIP.', code: 'MF2.8', level: 'ML2'})-[:SPECIALISM_OF]->(ManageFlow)
// ML 3 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(MF3_1:Practice {name: 'Organize around the knowledge discovery process.', code: 'MF3.1', level: 'ML3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF3_2:Practice {name: 'Collect service-related data: demand, capability.”)', code: 'MF3.2', level: 'ML3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF3_3:Practice {name: 'Analyze service fitness-for-purpose.”)', code: 'MF3.3', level: 'ML3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF3_3)-[:RELATED_TO]->(FitForPurpose:Model {name: 'Fit for Purpose'})-[:DESCRIBED_BY]->(F4PBook:Resource:Book {name: 'Fit For Purpose', isbn: '1732821208'})-[:WRITTEN_BY]->(DavidAnderson)
CREATE (F4PBook)-[:WRITTEN_BY]->(AlexeiZheglov:Person {name: 'Alexei Zheglov'})

CREATE (KMM)<-[:PRACTICE_OF]-(MF3_4:Practice {name: 'Defer commitment (decide at the “last responsible moment.”)', code: 'MF3.4', level: 'ML3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF3_5:Practice {name: 'Use cumulative flow diagram to monitor queues.', code: 'MF3.5', level: 'ML3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF3_6:Practice {name: 'Use Little’s Law.', code: 'MF3.6', level: 'ML3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF3_7:Practice {name: 'Report rudimentary flow efficiency', code: 'MF3.7', level: 'ML3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF3_7)-[:RELATED_TO]->(FlowEfficiency)
CREATE (KMM)<-[:PRACTICE_OF]-(MF3_8:Practice {name: 'Gradually eliminate infinite buffers.', code: 'MF3.8', level: 'ML3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF3_9:Practice {name: 'Actively close upstream requests that meet the abandonment criteria', code: 'MF3.9', level: 'ML3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF3_10:Practice {name: 'Report abandoned vs completed commited work.', code: 'MF3.10', level: 'ML3'})-[:SPECIALISM_OF]->(ManageFlow)
// ML 3 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(MF3_11:Practice {name: 'Develop triage discipline.', code: 'MF3.11', level: 'ML3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF3_12:Practice {name: 'Manage dependencies, peer-to-peer or parent-child.', code: 'MF3.12', level: 'ML3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF3_13:Practice {name: 'Analyze and report aborted work items.', code: 'MF3.13', level: 'ML3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF3_14:Practice {name: 'Use classes of service to affect selection.', code: 'MF3.14', level: 'ML3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF3_15:Practice {name: 'Use two-phase commit for delivery commitment.', code: 'MF3.15', level: 'ML3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF3_16:Practice {name: 'Forecast delivery.', code: 'MF3.16', level: 'ML3'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF3_17:Practice {name: 'Apply qualitative Real Options Thinking.', code: 'MF3.17', level: 'ML3'})-[:SPECIALISM_OF]->(ManageFlow)
// ML 4 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(MF4_1:Practice {name: 'Collect and report detailed flow efficiency analysis.', code: 'MF4.1', level: 'ML4'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF4_1)-[:RELATED_TO]->(FlowEfficiency)
CREATE (KMM)<-[:PRACTICE_OF]-(MF4_2:Practice {name: 'Use explicit buffers to smooth flow.', code: 'MF4.2', level: 'ML4'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF4_3:Practice {name: 'Analyze to anticipate dependencies.', code: 'MF4.3', level: 'ML4'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF4_4:Practice {name: 'Establish refutable versus irrefutable demand.', code: 'MF4.4', level: 'ML4'})-[:SPECIALISM_OF]->(ManageFlow)
// ML 4 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(MF4_5:Practice {name: 'Determine reference class data set.', code: 'MF4.5', level: 'ML4'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF4_6:Practice {name: 'Forecast using reference classes, Monte Carlo simulations, and other models.', code: 'MF4.6', level: 'ML4'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (MF4_6)-[:RELATED_TO]->(MonteCarlo)
CREATE (KMM)<-[:PRACTICE_OF]-(MF4_7:Practice {name: 'Allocate capacity across swim lanes.', code: 'MF4.7', level: 'ML4'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF4_8:Practice {name: 'Allocate capacity by color of work item.', code: 'MF4.8', level: 'ML4'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF4_9:Practice {name: 'Make appropriate use of forecasting.', code: 'MF4.9', level: 'ML4'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF4_10:Practice {name: 'Assess forecasting models for robustness.', code: 'MF4.10', level: 'ML4'})-[:SPECIALISM_OF]->(ManageFlow)
CREATE (KMM)<-[:PRACTICE_OF]-(MF4_11:Practice {name: 'Use statistical methods for decision making.', code: 'MF4.11', level: 'ML4'})-[:SPECIALISM_OF]->(ManageFlow)

// ML 0 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(XP0_1:Practice {name: 'Make the rules for personal kanban explicit.', code: 'XP0.1', level: 'ML0'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP0_1)-[:SPECIALISM_OF]->(PersonalKanban)
// ML 1 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(XP1_1:Practice {name: 'Discover initial policies.', code: 'XP1.1', level: 'ML1'})-[:SPECIALISM_OF]->(ExplicitPolicies)
// ML 1 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(XP1_2:Practice {name: 'Define basic policies.', code: 'XP1.2', level: 'ML1'})-[:SPECIALISM_OF]->(ExplicitPolicies)
// ML 2 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(XP2_1:Practice {name: 'Define basic service policies.', code: 'XP2.1', level: 'ML2'})-[:SPECIALISM_OF]->(ExplicitPolicies)
// ML 2 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(XP2_2:Practice {name: 'Define policies for managing aging WIP.', code: 'XP2.2', level: 'ML2'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (KMM)<-[:PRACTICE_OF]-(XP2_3:Practice {name: 'Define policies for blocking issue escalation.', code: 'XP2.3', level: 'ML2'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (KMM)<-[:PRACTICE_OF]-(XP2_4:Practice {name: 'Define policies for managing defects and other rework types.', code: 'XP2.4', level: 'ML2'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (KMM)<-[:PRACTICE_OF]-(XP2_5:Practice {name: 'Define basic policies for coordinating work of different service teams.', code: 'XP2.5', level: 'ML2'})-[:SPECIALISM_OF]->(ExplicitPolicies)
// ML 3 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(XP3_1:Practice {name: 'Establish F4P-related metrics.', code: 'XP3.1', level: 'ML3'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP3_1)-[:RELATED_TO]->(FitForPurpose)
CREATE (KMM)<-[:PRACTICE_OF]-(XP3_2:Practice {name: 'Explicitly define pull criteria.', code: 'XP3.2', level: 'ML3'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (KMM)<-[:PRACTICE_OF]-(XP3_3:Practice {name: 'Define upstream option abandonment policies.', code: 'XP3.3', level: 'ML3'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (KMM)<-[:PRACTICE_OF]-(XP3_4:Practice {name: 'Define the meaning of "abandonment" for commited work.', code: 'XP3.4', level: 'ML3'})-[:SPECIALISM_OF]->(ExplicitPolicies)
// ML 3 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(XP3_5:Practice {name: 'Establish a delivery commitment point.', code: 'XP3.5', level: 'ML3'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (KMM)<-[:PRACTICE_OF]-(XP3_6:Practice {name: 'Establish a replenishment commitment point.', code: 'XP3.6', level: 'ML3'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (KMM)<-[:PRACTICE_OF]-(XP3_7:Practice {name: 'Define basic classes of service based on qualitative cost of delay.', code: 'XP3.7', level: 'ML3'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (KMM)<-[:PRACTICE_OF]-(XP3_8:Practice {name: 'Establish customer acceptance criteria for each work item or a class of work items', code: 'XP3.8', level: 'ML3'})-[:SPECIALISM_OF]->(ExplicitPolicies)
// ML 4 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(XP4_1:Practice {name: 'Explicitly define fitness-for-purpose based on metrics.', code: 'XP4.1', level: 'ML4'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (XP4_1)-[:RELATED_TO]->(FitForPurpose)
// ML 4 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(XP4_2:Practice {name: 'Establish demand shaping policies.', code: 'XP4.2', level: 'ML4'})-[:SPECIALISM_OF]->(ExplicitPolicies)
CREATE (KMM)<-[:PRACTICE_OF]-(XP4_3:Practice {name: 'Establish SLA on dependent services.', code: 'XP4.3', level: 'ML4'})-[:SPECIALISM_OF]->(ExplicitPolicies)

// ML 0 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(FL0_1:Practice {name: 'Engage in personal reflection.', code: 'FL0.1', level: 'ML0'})-[:SPECIALISM_OF]->(FeedbackLoops)
// ML 1 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(FL1_1:Practice {name: 'Conduct Team Kanban Meeting.', code: 'FL1.1', level: 'ML1'})-[:SPECIALISM_OF]->(FeedbackLoops)
// ML 1 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(FL1_2:Practice {name: 'Make team review.', code: 'FL1.2', level: 'ML1'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (KMM)<-[:PRACTICE_OF]-(FL1_3:Practice {name: 'Conduct internal team replenishment meeting.', code: 'FL1.3', level: 'ML1'})-[:SPECIALISM_OF]->(FeedbackLoops)
// ML 2 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(FL2_1:Practice {name: 'Conduct internal workflow replenishment meeting.', code: 'FL2.1', level: 'ML2'})-[:SPECIALISM_OF]->(FeedbackLoops)
// ML 2 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(FL2_2:Practice {name: 'Conduct workflow Kanban meeting.', code: 'FL2.2', level: 'ML2'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (KMM)<-[:PRACTICE_OF]-(FL2_3:Practice {name: 'Conduct system capability review.', code: 'FL2.3', level: 'ML2'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (KMM)<-[:PRACTICE_OF]-(FL2_4:Practice {name: 'Conduct blocker clustering.', code: 'FL2.4', level: 'ML2'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL2_4)-[:RELATED_TO]->(BlockerClustering)
// ML 3 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(FL3_1:Practice {name: 'Conduct replenishment meeting.', code: 'FL3.1', level: 'ML3'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL3_1)-[:RELATED_TO]->(ReplenishmentMeeting)
CREATE (KMM)<-[:PRACTICE_OF]-(FL3_2:Practice {name: 'Make improvement suggestion review.', code: 'FL3.2', level: 'ML3'})-[:SPECIALISM_OF]->(FeedbackLoops)
// ML 3 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(FL3_3:Practice {name: 'Conduct delivery planning meeting.', code: 'FL3.3', level: 'ML3'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL3_3)-[:RELATED_TO]->(DeliveryPlanning)
CREATE (KMM)<-[:PRACTICE_OF]-(FL3_4:Practice {name: 'Conduct service delivery review.', code: 'FL3.4', level: 'ML3'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL3_4)-[:RELATED_TO]->(ServiceDeliveryReview)
CREATE (KMM)<-[:PRACTICE_OF]-(FL3_5:Practice {name: 'Conduct options review.', code: 'FL3.5', level: 'ML3'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (KMM)<-[:PRACTICE_OF]-(FL3_6:Practice {name: 'Conduct basic portfolio review.', code: 'FL3.6', level: 'ML3'})-[:SPECIALISM_OF]->(FeedbackLoops)
// ML 4 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(FL4_1:Practice {name: 'Conduct risk review.', code: 'FL4.1', level: 'ML4'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL4_1)-[:RELATED_TO]->(RiskReview)
CREATE (KMM)<-[:PRACTICE_OF]-(FL4_2:Practice {name: 'Conduct full portfolio review.', code: 'FL4.2', level: 'ML4'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (KMM)<-[:PRACTICE_OF]-(FL4_3:Practice {name: 'Conduct operations review.', code: 'FL4.3', level: 'ML4'})-[:SPECIALISM_OF]->(FeedbackLoops)
CREATE (FL4_3)-[:RELATED_TO]->(OperationsReview)

// ML 2 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(IE2_1:Practice {name: 'Identify sources of dissatisfaction.', code: 'IE2.1', level: 'ML2'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
// ML 2 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(IE2_2:Practice {name: 'Define actions to develop basic understanding of the process and improve flow.', code: 'IE2.2', level: 'ML2'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (KMM)<-[:PRACTICE_OF]-(IE2_3:Practice {name: 'Revise problematic policies.', code: 'IE2.3', level: 'ML2'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (KMM)<-[:PRACTICE_OF]-(IE2_4:Practice {name: 'Identify sources of delay.', code: 'IE2.4', level: 'ML2'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
// ML 3 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(IE3_1:Practice {name: 'Solicit change and improvement suggestions.', code: 'IE3.1', level: 'ML3'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
// ML 3 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(IE3_2:Practice {name: 'Analyze blocker likelihood and impact.', code: 'IE3.2', level: 'ML3'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (KMM)<-[:PRACTICE_OF]-(IE3_3:Practice {name: 'Analyze lead time tail risk.', code: 'IE3.3', level: 'ML3'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (KMM)<-[:PRACTICE_OF]-(IE3_4:Practice {name: 'After meetings: discuss a problem spontaneously, and bring it to the service delivery review', code: 'IE3.4', level: 'ML3'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
// ML 4 Transition
CREATE (KMM)<-[:PRACTICE_OF]-(IE4_1:Practice {name: 'Develop qualitative understanding of common versus special cause for process performance variation.', code: 'IE4.1', level: 'ML4'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (KMM)<-[:PRACTICE_OF]-(IE4_2:Practice {name: 'Identify the impact of shared resources.', code: 'IE4.2', level: 'ML4'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (KMM)<-[:PRACTICE_OF]-(IE4_3:Practice {name: 'Identify bottlenecks.', code: 'IE4.3', level: 'ML4'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (IE4_3)-[:RELATED_TO]->(TheoryOfConstraints:Method {name: 'Theory of Constraints'})-[:DESCRIBED_BY]->(TheGoal:Resource:Book {name: 'The Goal', isbn: '9780884271956'})-[:WRITTEN_BY]->(EliGoldratt:Person {name: 'Eli Goldratt'})
CREATE (TheoryOfConstraints)-[:DESCRIBED_BY]->(RollingRocksDownhill:Resource:Book {name: 'Rolling Rocks Downhill', isbn: '1505446511'})-[:WRITTEN_BY]->(ClarkeChing:Person {name: 'Clark Ching'})
CREATE (TheoryOfConstraints)-[:DESCRIBED_BY]->(TheBottleneckRules:Resource:Book {name: 'The Bottleneck Rules', isbn: '1983022691'})-[:WRITTEN_BY]->(ClarkeChing)
CREATE (FiveFocusingSteps:Practice {name: 'Five Focusing Steps'})-[:PRACTICE_OF]->(TheoryOfConstraints)
CREATE (ThinkingProcesses:Practice {name: 'Thinking Processes'})-[:PRACTICE_OF]->(TheoryOfConstraints)
CREATE (ThroughputAccounting:Practice {name: 'Throughput Accounting'})-[:PRACTICE_OF]->(TheoryOfConstraints)
CREATE (KMM)<-[:PRACTICE_OF]-(IE4_4:Practice {name: 'Identify transaction and coordination costs.', code: 'IE4.4', level: 'ML4'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
// ML 4 Consolidation
CREATE (KMM)<-[:PRACTICE_OF]-(IE4_5:Practice {name: 'Exploit, subordinate to and elevate bottlenecks.', code: 'IE4.5', level: 'ML4'})-[:SPECIALISM_OF]->(ImproveCollaboratively)
CREATE (IE4_5)-[:RELATED_TO]->(TheoryOfConstraints)
CREATE (KMM)<-[:PRACTICE_OF]-(IE4_6:Practice {name: 'Develop quantitative understanding of common versus chance cause for process performance variation.', code: 'IE4.6', level: 'ML4'})-[:SPECIALISM_OF]->(ImproveCollaboratively)

// Continuous Delivery

CREATE (ContinuousDeliveryBook:Resource:Book {name: 'Continuous Delivery', isbn: '9780321601919'})
CREATE (JezHumble:Person {name: 'Jez Humble'})<-[:WRITTEN_BY]-(ContinuousDeliveryBook)
CREATE (DavidFarley:Person {name: 'David Farley'})<-[:WRITTEN_BY]-(ContinuousDeliveryBook)
CREATE (ContinuousDelivery:Practice {name: 'Continuous Delivery'})-[:DESCRIBED_BY]->(ContinuousDeliveryBook)

CREATE (ContinuousDelivery)-[:IMPLEMENTS]->(SoftwareDelivery)
CREATE (ContinuousDelivery)-[:GUIDED_BY]->(BuildQualityIn:Principle {name: 'Build Quality In'})
CREATE (ContinuousDelivery)-[:GUIDED_BY]->(WorkInSmallBatches:Principle {name: 'Work in Small Batches'})
CREATE (ContinuousDelivery)-[:GUIDED_BY]->(ComputersDoRepetition:Principle {name: 'Computers Perform Repetitive Tasks, People Solve Problems'})
CREATE (ContinuousDelivery)-[:GUIDED_BY]->(ContinuousImprovement:Principle {name: 'Relentlessly Pursue Continuous Improvement'})
CREATE (ContinuousDelivery)-[:GUIDED_BY]->(EveryoneIsResponsible:Principle {name: 'Everyone is Responsible'})

// Measures from Accelerate

CREATE (Accelerate:Resource:Book {name: 'Accelerate', isbn: '1942788339'})
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
CREATE (SoftwareDeliveryPerformance)-[:IMPACTS]->(OrganizationalPerformance)
CREATE (SoftwareDeliveryPerformance)-[:COMPOSED_OF]->(DeploymentFrequency)
CREATE (SoftwareDeliveryPerformance)-[:COMPOSED_OF]->(LeadTime)
CREATE (SoftwareDeliveryPerformance)-[:COMPOSED_OF]->(MTTR)
CREATE (SoftwareDeliveryPerformance)-[:COMPOSED_OF]->(ChangeFailureRate)
CREATE (SoftwareDeliveryPerformance)-[:DESCRIBED_BY]->(Accelerate)

CREATE (WestrumOrganizationalCulture)-[:IMPACTS]->(SoftwareDeliveryPerformance)
CREATE (WestrumOrganizationalCulture)-[:IMPACTS]->(OrganizationalPerformance)

CREATE (Burnout:Measure {name: 'Burnout'})-[:ALSO_KNOWN_AS]->(MaslachBurnoutIndex:Measure {name: 'Maslach Burnout Index'})

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
CREATE (JobSatisfaction:Measure {name: 'Job Satisfaction'})-[:ALSO_KNOWN_AS]->(eNPS:Measure {name: 'eNPS'})

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

CREATE (LeanProductDevelopment:Model {name: 'Lean Product Development'})
CREATE (FlowBook:Resource:Book {name: 'The Principles of Product Development Flow'})<-[:WRITTEN_BY]-(DonReinertsen:Person {name: 'Don Reinertsen'})
CREATE (LeanProductDevelopment)-[:DESCRIBED_BY]->(FlowBook)

CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E1:Principle {name: 'Select actions based on quantified overall economic impact', code: 'E1'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E2:Principle {name: 'We can\'t change one thing', code: 'E2'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E3:Principle {name: 'If you only quantify one thing, quantify the cost of delay', code: 'E3'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E4:Principle {name: 'The value added by an activity is the change in the economic value of the work product', code: 'E4'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E5:Principle {name: 'Watch the work product, not the worker', code: 'E5'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E6:Principle {name: 'Important trade-offs are likely to have U-curve optimizations', code: 'E6'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E7:Principle {name: 'Even imperfect answers improve decision making', code: 'E7'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E8:Principle {name: 'Influence the many small decisions', code: 'E8'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E9:Principle {name: 'Economic choices must be made continuously', code: 'E9'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E10:Principle {name: 'Many economic choices are more valuable when made quickly', code: 'E10'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E11:Principle {name: 'Inside every bad choice lies a good choice', code: 'E11'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E12:Principle {name: 'Create systems to harvest the early cheap opportunities', code: 'E12'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E13:Principle {name: 'Use decision rules to decentralize economic control', code: 'E13'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E14:Principle {name: 'Ensure decision makers feel both cost and benefit', code: 'E14'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E15:Principle {name: 'Every decision has its optimum economic timing', code: 'E15'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E16:Principle {name: 'Always compare marginal cost and marginal value', code: 'E16'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E17:Principle {name: 'Do not consider money already spent', code: 'E17'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E18:Principle {name: 'The value of information is its expected economic value', code: 'E18'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E19:Principle {name: 'Don\'t pay more for insurance than the expected loss', code: 'E19'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E20:Principle {name: 'High probability of failure does not equal bad economics', code: 'E20'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(E21:Principle {name: 'To influence financial decisions, speak the language of money', code: 'E21'})

CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q1:Principle {name: 'Product development inventory is physically and financially invisible', code: 'Q1'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q2:Principle {name: 'Queues are the root cause of the majority of economic waste in product development', code: 'Q2'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q3:Principle {name: 'Capacity utilization increases queues exponentially', code: 'Q3'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q4:Principle {name: 'Most of the damage done by a queue is caused by high-queue states', code: 'Q4'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q5:Principle {name: 'Variability increases queues linearly', code: 'Q5'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q6:Principle {name: 'Operating at high levels of capacity utilization increases variability', code: 'Q6'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q7:Principle {name: 'Serve pooled demand with reliable high-capacity servers', code: 'Q7'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q8:Principle {name: 'Adjacent queues see arrival or service variability depending on loading', code: 'Q8'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q9:Principle {name: 'Optimum queue size is an economic trade-off', code: 'Q9'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q10:Principle {name: 'Queue cost is affected by the sequence in which we handle the jobs in the queue', code: 'Q10'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q11:Principle {name: 'Use CFDs to monitor queues', code: 'Q11'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q12:Principle {name: 'Wait time = queue size / processing rate', code: 'Q12'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q13:Principle {name: 'Don\'t control capacity utilization, control queue size', code: 'Q13'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q14:Principle {name: 'Don\'t control cycle time, control queue size', code: 'Q14'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q15:Principle {name: 'Over time, queues will randomly spin seriously out of control and will remain in this state for long periods', code: 'Q15'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(Q16:Principle {name: 'We cannot rely on randomness to correct a random queue', code: 'Q16'})

CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V1:Principle {name: 'Variability can create economic value', code: 'V1'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V2:Principle {name: 'Payoff asymmetries enable variability to create economic value', code: 'V2'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V3:Principle {name: 'Variability should neither be minimized or maximized', code: 'V3'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V4:Principle {name: 'Fifty percent failure rate is usually optimum for generating information', code: 'V4'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V5:Principle {name: 'Overall variation decreases when uncorrelated random tasks are combined', code: 'V5'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V6:Principle {name: 'Forecasting becomes exponentially easier at short term-horizons', code: 'V6'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V7:Principle {name: 'Many small experiments produce less variation than one big one', code: 'V7'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V8:Principle {name: 'Repetition reduces variation', code: 'V8'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V9:Principle {name: 'Reuse reduces variability', code: 'V9'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V10:Principle {name: 'We can reduce variance by applying a counterbalancing effect', code: 'V10'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V11:Principle {name: 'Buffers trade money for variability reduction', code: 'V11'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V12:Principle {name: 'Reducing consequences is usually the best way to reduce the cost of variability', code: 'V12'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V13:Principle {name: 'Operate in the linear range of system performance', code: 'V13'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V14:Principle {name: 'Substitute cheap variability for expensive variability', code: 'V14'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V15:Principle {name: 'It is usually better to improve iteration speed than defect rate', code: 'V15'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(V16:Principle {name: 'Move variability to the process stage where its cost is lowest', code: 'V16'})

CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B1:Principle {name: 'Reducing batch size reduces cycle time', code: 'B1'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B2:Principle {name: 'Reducing batch sizes reduces variability in flow', code: 'B2'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B3:Principle {name: 'Reducing batch sizes accelerates feedback', code: 'B3'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B4:Principle {name: 'Reducing batch size reduces risk', code: 'B4'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B5:Principle {name: 'Reducing batch size reduces overhead', code: 'B5'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B6:Principle {name: 'Large batches reduce efficiency', code: 'B6'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B7:Principle {name: 'Large batches inherently lower motivation and urgency', code: 'B7'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B8:Principle {name: 'Large batches cause exponential cost and schedule growth', code: 'B8'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B9:Principle {name: 'Large batches lead to even larger batches', code: 'B9'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B10:Principle {name: 'The entire batch is limited by its worst element', code: 'B10'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B11:Principle {name: 'Economic batch size is a U-curve optimization', code: 'B11'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B12:Principle {name: 'Reducing transaction cost per batch lowers overall costs', code: 'B12'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B13:Principle {name: 'Batch size reduction saves much more than you think', code: 'B13'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B14:Principle {name: 'Small batches allow finer tuning of capacity utilization', code: 'B14'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B15:Principle {name: 'Loose coupling between product subsystems enables small batches', code: 'B15'}) // Microservices!
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B16:Principle {name: 'The most important batch is the transport batch', code: 'B16'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B17:Principle {name: 'Proximity enables small batch sizes', code: 'B17'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B18:Principle {name: 'Short run lengths reduce queues', code: 'B18'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B19:Principle {name: 'Good infrastructure enables small batches', code: 'B19'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B20:Principle {name: 'Sequence first that which adds value most cheaply', code: 'B20'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B21:Principle {name: 'Reduce batch size before you attack bottlenecks', code: 'B21'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B22:Principle {name: 'Adjust batch size size dynamically to respond to changing economics', code: 'B22'})

CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W1:Principle {name: 'Constrain WIP to control cycle time and flow', code: 'W1'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W2:Principle {name: 'WIP contraints force rate matching', code: 'W2'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W3:Principle {name: 'Use global constraints for predictable and permanent bottlenecks', code: 'W3'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W4:Principle {name: 'If possible, constrain local WIP pools', code: 'W4'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W5:Principle {name: 'Use WIP ranges to decouple the batch sizes of adjacent processes', code: 'W5'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W6:Principle {name: 'Block all demand when WIP reaches its upper limit', code: 'W6'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W7:Principle {name: 'When WIP is high, purge low-value projects', code: 'W7'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W8:Principle {name: 'Control WIP by shedding requirements', code: 'W8'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W9:Principle {name: 'Quickly apply extra resources to an emerging queue', code: 'W9'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W10:Principle {name: 'Use part time resources for high variability tasks', code: 'W10'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W11:Principle {name: 'Pull high-powered experts to emerging bottlenecks', code: 'W11'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W12:Principle {name: 'Develop people who are deep in one area and broad in many', code: 'W12'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W13:Principle {name: 'Cross-train resources at adjacent processes', code: 'W13'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W14:Principle {name: 'Use upstream mix changes to regulate queue size', code: 'W14'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W15:Principle {name: 'Watch the outliers', code: 'W15'}) // WIP aging
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W16:Principle {name: 'Create a pre-planned escalation process for outliers', code: 'W16'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W17:Principle {name: 'Increase throttling as you approach the queue limit', code: 'W17'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W18:Principle {name: 'Differentiate quality of service by workstream', code: 'W18'}) // Classes of service
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W19:Principle {name: 'Adjust WIP constraints as capacity changes', code: 'W19'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W20:Principle {name: 'Prevent uncontrolled expansion of work', code: 'W20'}) // Overproduction?
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W21:Principle {name: 'Constrain WIP in the section of the system where the queue is most expensive', code: 'W21'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W22:Principle {name: 'Small WIP reductions accumulate', code: 'W22'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(W23:Principle {name: 'Make WIP continuously visible', code: 'W23'})

CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F1:Principle {name: 'When loading becomes too high, we will see a sudden and catastrophic drop in output', code: 'F1'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F2:Principle {name: 'Control occupancy to sustain high throughput in systems prone to congestion', code: 'F2'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F3:Principle {name: 'Use forecasts of expected flow time to make congestion visible', code: 'F3'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F4:Principle {name: 'Use pricing to reduce demand during congested periods', code: 'F4'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F5:Principle {name: 'Use a regular cadence to limit the accumulation of variance', code: 'F5'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F6:Principle {name: 'Provide sufficient capacity margin to enable cadence', code: 'F6'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F7:Principle {name: 'Use cadence to make waiting times predictable', code: 'F7'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F8:Principle {name: 'Use a regular cadence to enable small batch sizes', code: 'F8'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F9:Principle {name: 'Schedule frequent meetings using a predictable cadence', code: 'F9'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F10:Principle {name: 'To enable synchronization, provide sufficient capacity margin', code: 'F10'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F11:Principle {name: 'Exploit scale economies by sychronizing work from multiple projects', code: 'F11'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F12:Principle {name: 'Use sychronized events to facilitate cross function trade-offs', code: 'F12'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F13:Principle {name: 'To reduce queues, sychronize the batch size and timing of adjacent processes', code: 'F13'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F14:Principle {name: 'Make nested cadences harmonic multiples', code: 'F14'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F15:Principle {name: 'When delay costs are homogenous, do the shortest job first', code: 'F15'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F16:Principle {name: 'When job durations are homogenous, do the high cost-of-delay job first', code: 'F16'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F17:Principle {name: 'When job durations and delays costs are not homogenous, use WSJF', code: 'F17'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F18:Principle {name: 'Priorities are inherently local', code: 'F18'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F19:Principle {name: 'When task duration is unknown, time-share capacity', code: 'F19'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F20:Principle {name: 'Only preempt when switching costs are low', code: 'F20'}) // Expedite class of service
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F21:Principle {name: 'Use sequence to match jobs to appropriate resources', code: 'F21'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F22:Principle {name: 'Select and tailor the sequence of subprocesses to the task at hand', code: 'F22'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F23:Principle {name: 'Route work based on the current most economic route', code: 'F23'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F24:Principle {name: 'Develop and maintain alternate routes around points of congestion', code: 'F24'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F25:Principle {name: 'Use flexible resources to absorb variation', code: 'F25'}) // Cloud
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F26:Principle {name: 'The later we bind demand to resources, the smoother the flow', code: 'F26'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F27:Principle {name: 'Make tasks and resources reciprocally visible at adjacent processes', code: 'F27'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F28:Principle {name: 'For fast responses, preplan and invest in flexibility', code: 'F28'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F29:Principle {name: 'Correctly managed, centralized resources can reduce queues', code: 'F29'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(F30:Principle {name: 'Reduce variability before a bottleneck', code: 'F30'})

CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF1:Principle {name: 'Focus control on project and process parameters with the highest economic influence', code: 'FF1'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF2:Principle {name: 'Control parameters that are both influential and efficient', code: 'FF2'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF3:Principle {name: 'Select control variables that predict future system behaviour', code: 'FF3'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF4:Principle {name: 'Set tripwires at points of equal economic performance', code: 'FF4'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF5:Principle {name: 'Know when to pursue a dynamic goal', code: 'FF5'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF6:Principle {name: 'Exploit unplanned economic opportunities', code: 'FF6'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF7:Principle {name: 'Fast feedback enables smaller queues', code: 'FF7'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF8:Principle {name: 'Use fast feedback to make learning faster and more efficient', code: 'FF8'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF9:Principle {name: 'What gets measured may not get done', code: 'FF9'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF10:Principle {name: 'We don\'t need long planning horizons when we have a short turning radius', code: 'FF10'}) // Lean Start Up
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF11:Principle {name: 'Small batches yield fast feedback', code: 'FF11'}) // CD
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF12:Principle {name: 'To detect a smaller signal, reduce the noise', code: 'FF12'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF13:Principle {name: 'Control the economic logic behind a decision, not the entire decision', code: 'FF13'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF14:Principle {name: 'Whenever possible, make feedback local', code: 'FF14'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF15:Principle {name: 'Have a clear, predetermined relief valve', code: 'FF15'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF16:Principle {name: 'Embed fast control loops inside slow loops', code: 'FF16'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF17:Principle {name: 'Keep deviations within the control range', code: 'FF17'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF18:Principle {name: 'Provide advance notice of heavy arrival rates to minimize queues', code: 'FF18'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF19:Principle {name: 'Colocation improves almost all aspects of communication', code: 'FF19'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF20:Principle {name: 'Fast feedback gives a sense of control', code: 'FF20'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF21:Principle {name: 'Large queues makes it hard to create urgency', code: 'FF21'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF22:Principle {name: 'The human element tends to amplify large excursions', code: 'FF22'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF23:Principle {name: 'To align behaviours, reward people for the work of others', code: 'FF23'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(FF24:Principle {name: 'Time counts more than money', code: 'FF24'})

CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D1:Principle {name: 'Decentralize control for problems and opportunities that age poorly', code: 'D1'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D2:Principle {name: 'Centralize control for problems that are infrequent, large, or that have significant economies of scale', code: 'D2'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D3:Principle {name: 'Adapt the control approach to emerging information about the problem', code: 'D3'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D4:Principle {name: 'Adjust the plan for unplanned obstacles and opportunities', code: 'D4'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D5:Principle {name: 'Be able to quickly reorganize decentralized resources to create centralized power', code: 'D5'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D6:Principle {name: 'The inefficiency of decentralization can cost less than the value of faster response time', code: 'D6'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D7:Principle {name: 'There is more value created with overall alignment than local excellence', code: 'D7'}) // Systems thinking
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D8:Principle {name: 'Specify the end state, its purpose, and the minimal possible constraints', code: 'D8'}) // Misson command
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D9:Principle {name: 'Establish clear roles and boundaries', code: 'D9'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D10:Principle {name: 'Designate a main effort and subordinate other activities', code: 'D10'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D11:Principle {name: 'The main effort may shift quickly when conditions change', code: 'D11'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D12:Principle {name: 'Develop the ability to quickly shift focus', code: 'D12'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D13:Principle {name: 'Tactical coordination should be local', code: 'D13'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D14:Principle {name: 'Use simple modular plans', code: 'D14'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D15:Principle {name: 'Decentralize a portion of reserves', code: 'D15'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D16:Principle {name: 'Make early and meaningful contact with the problem', code: 'D16'}) // MVP
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D17:Principle {name: 'For decentralized decisions, disseminate key information widely', code: 'D17'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D18:Principle {name: 'We can\'t respond faster than our frequency response', code: 'D18'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D19:Principle {name: 'When response time is important, measure response time', code: 'D19'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D20:Principle {name: 'Use internal and external markets to decentralize control', code: 'D20'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D21:Principle {name: 'Cultivating initiative enables us to use initiative', code: 'D21'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D22:Principle {name: 'Exploit the speed and bandwidth of face-to-face communications', code: 'D22'})
CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(D23:Principle {name: 'Trust is built through experience', code: 'D23'})

// CREATE (LeanProductDevelopment)-[:GUIDED_BY]->(B1:Principle {name: '', code: 'B1'})

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

CREATE (DeploymentAutomation:Practice {name: 'DeploymentAutomation'})-[:IMPACTS]->(ContinuousDelivery)
CREATE (TBD:Practice {name: 'Trunk-Based Development'})-[:IMPACTS]->(ContinuousDelivery)
CREATE (TestAutomation:Practice {name: 'Test Automation'})-[:IMPACTS]->(ContinuousDelivery)
CREATE (TestDataManagement:Practice {name: 'Test Data Management'})-[:IMPACTS]->(ContinuousDelivery)
CREATE (ShiftLeft:Practice {name: 'Shift Left on Security'})-[:IMPACTS]->(ContinuousDelivery)
CREATE (LooselyCoupledArch:Practice {name: 'Loosely Coupled Architecture'})-[:IMPACTS]->(ContinuousDelivery)
CREATE (EmpoweredTeams:Practice {name: 'Empowered Teams'})-[:IMPACTS]->(ContinuousDelivery)
CREATE (Monitoring:Practice {name: 'Monitoring'})-[:IMPACTS]->(ContinuousDelivery)
CREATE (ProactiveNotification:Practice {name: 'Proactive Notification'})-[:IMPACTS]->(ContinuousDelivery)
CREATE (ContinuousIntegration)-[:IMPACTS]->(ContinuousDelivery) // From XP

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

CREATE (Scrum:Framework {name: 'Scrum'})-[:DESCRIBED_BY]->(ScrumGuide:Resource:Link {name: 'Scrum Guide', url: 'https://www.scrumguides.org/scrum-guide.html'})
CREATE (Agile)-[:IMPLEMENTED_BY]->(Scrum)

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
CREATE (SprintPlanning)-[:BEFORE]->(Sprint)-[:BEFORE]->(SprintReview)-[:BEFORE]->(SprintRetrospective)

CREATE (DailyScrum)-[:FACILITATED_BY]->(ScrumMaster)
CREATE (SprintPlanning)-[:FACILITATED_BY]->(ScrumMaster)
CREATE (SprintRetrospective)-[:FACILITATED_BY]->(ScrumMaster)
CREATE (SprintReview)-[:FACILITATED_BY]->(ScrumMaster)

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
CREATE (LeSS)-[:DESCRIBED_BY]->(LeSSWebsite:Resource:Link {name: 'Large Scale Scrum', url: 'http://less.works/'})
CREATE (Agile)-[:IMPLEMENTED_BY]->(LeSS)

CREATE (SprintPlanningOne:Event {name: 'Sprint Planning One'})-[:MEETING_OF]->(LeSS)
CREATE (SprintPlanningTwo:Event {name: 'Sprint Planning Two'})-[:MEETING_OF]->(LeSS)
CREATE (OverallRetrospective:Event {name: 'Overall Retrospective'})-[:MEETING_OF]->(LeSS)

// Nexus

CREATE (Nexus:Framework {name: 'Nexus'})-[:SCALES]->(Scrum)
CREATE (Nexus)-[:DESCRIBED_BY]->(NexusWebsite:Resource:Link {name: 'Scaling Scrum with Nexus', url: 'https://www.scrum.org/resources/scaling-scrum'})
CREATE (Agile)-[:IMPLEMENTED_BY]->(Nexus)

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
CREATE (Agile)-[:IMPLEMENTED_BY]->(SAFe)
CREATE (SAFe)-[:DESCRIBED_BY]->(SAFeWebsite:Resource:Link {name: 'Scaled Agile Framework', url: 'https://www.scaledagileframework.com/'})
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
CREATE (Agile)-[:IMPLEMENTED_BY]->(DSDM)
CREATE (MoSCoW:Practice {name: 'MoSCoW'})-[:PRACTICE_OF]->(DSDM)

// User Stories

CREATE (INVEST:Practice {name: 'INVEST'})-[:IMPROVES]->(UserStories)
CREATE (StoryMapping:Practice {name: 'Story Mapping'})-[:DESCRIBED_BY]->(StoryMappingBook:Resource:Book {name: 'Story Mapping', isbn: '1491904909'})-[:WRITTEN_BY]->(JeffPatton:Person {name: 'Jeff Patton'})
CREATE (SoftwareRequirements)-[:IMPLEMENTED_BY]->(ImpactMapping:Practice {name: 'Impact Mapping'})
CREATE (GojkoAdzic:Person {name: 'Gojko Adzic'})<-[:WRITTEN_BY]-(ImpactMappingResource:Resource:Book {name: 'Impact Mapping', isbn: '0955683645'})<-[:DESCRIBED_BY]-(ImpactMapping)

// Test Automation

CREATE (TestQuadrants:Model {name: 'Test Quadrants'})-[:MODELS]->(SoftwareTesting) // http://www.exampler.com/old-blog/2003/08/22/#agile-testing-project-2 by Brian Marick
CREATE (TestPyramid:Model {name: 'Test Pyramid'})-[:MODELS]->(TestAutomation) // https://martinfowler.com/articles/practical-test-pyramid.html
CREATE (DeveloperTesting:Practice {name: 'Developer Testing'})-[:SPECIALISM_OF]->(TestAutomation)
CREATE (SoftwareTesting)-[:IMPLEMENTED_BY]->(DeveloperTesting)
CREATE (BDD:Practice {name: 'Behaviour-Driven Development (BDD)'})-[:SPECIALISM_OF]->(TestAutomation)
CREATE (BDD)-[:DESCRIBED_BY]->(IntroducingBDD:Resource:Link {name: 'Introducing BDD', url: 'https://dannorth.net/introducing-bdd/'})
CREATE (ATDD:Practice {name: 'Acceptance Test-Driven Development (ATDD)'})-[:SPECIALISM_OF]->(TestAutomation)
CREATE (UnitTesting:Practice {name: 'Unit Testing'})-[:SPECIALISM_OF]->(TestAutomation) // from http://wiki.c2.com/?UnitTest
CREATE (UnitTesting)-[:SPECIALISM_OF]->(DeveloperTesting)
CREATE (StaticCodeAnalysis:Practice {name: 'Static Code Analysis'})-[:PRACTICE_OF]->(SoftwareDelivery)
CREATE (CodeCoverage:Measure {name: 'Code Coverage'})-[:MEASUREMENT_OF]->(UnitTesting)
CREATE (SoftwareRequirements)-[:IMPLEMENTED_BY]->(ThreeAmigos:Practice {name: '3 Amigos'})
CREATE (SBE:Practice {name: 'Specification by Example'})-[:DESCRIBED_BY]->(SBEBook:Resource:Book {name: 'Specification by Example', isbn: '9781617290084'})<-[:WRITTEN_BY]-(GojkoAdzic)

CREATE (UITesting:Practice {name: 'UI Testing'})-[:SPECIALISM_OF]->(SoftwareTesting)
CREATE (COP:Practice {name: 'Communities of Practice'})
CREATE (ProductTeams:Pattern {name: 'Product Teams'})-[:SPECIALISM_OF]->(ValueStream)
CREATE (PageObject:Pattern {name: 'Page Objects'})-[:IMPROVES]->(UITesting)
CREATE (ContractTesting:Practice {name: 'Contract Testing'})-[:SPECIALISM_OF]->(TestAutomation)
CREATE (MutationTesting:Practice {name: 'Mutation Testing'})-[:SPECIALISM_OF]->(UnitTesting)

CREATE (CodeReview:Practice {name: 'Code Review'})-[:PRACTICE_OF]->(SoftwareConstruction) // See https://google.github.io/eng-practices/review/reviewer/

// Arch

// Both DDD and BDD close the gap between business and development, in slightly different ways.

CREATE (DDD:Method {name: 'Domain-Driven Design'})-[:DESCRIBED_BY]->(DDDBook:Resource:Book {name: 'Domain-Driven Design', isbn: '0321125215'})-[:WRITTEN_BY]->(EricEvans:Person {name: 'Eric Evans'})
CREATE (SoftwareDesign)-[:IMPLEMENTED_BY]->(DDD)
CREATE (BDD)-[:SPECIALISM_OF]->(SoftwareDesign)
CREATE (TestDrivenDevelopment)-[:SPECIALISM_OF]->(SoftwareDesign)
CREATE (UbiquitousLanguage:Pattern {name: 'Ubiquitous Language'})-[:PATTERN_OF]->(DDD)
CREATE (BoundedContext:Pattern {name: 'Bounded Context'})-[:PATTERN_OF]->(DDD)
CREATE (HandsOnModellers:Pattern {name: 'Hands-On Modellers'})-[:PATTERN_OF]->(DDD)
CREATE (ModelDrivenDesign:Pattern {name: 'Model-Driven Design'})-[:PATTERN_OF]->(DDD)
CREATE (ContextMaps:Pattern {name: 'Context Maps'})-[:PATTERN_OF]->(DDD)
CREATE (LayeredArchitectures:Pattern {name: 'Layered Architectures'})-[:PATTERN_OF]->(DDD)
CREATE (AntiCorruptionLayer:Pattern {name: 'Anti-Corruption Layer'})-[:PATTERN_OF]->(DDD)
CREATE (SmartUI:AntiPattern {name: 'Smart UI'})-[:PATTERN_OF]->(DDD)

CREATE (Microservices:Practice {name: 'Microservices'})-[:SPECIALISM_OF]->(LooselyCoupledArch)
CREATE (EventSourcing:Pattern {name: 'Event Sourcing'}) // from https://martinfowler.com/eaaDev/EventSourcing.html

CREATE (CloudComputing:Model {name: 'Cloud Computing'})
CREATE (IaaS:Model {name: 'Infrastructure as a Service'})-[:SPECIALISM_OF]->(CloudComputing)
CREATE (PaaS:Model {name: 'Platform as a Service'})-[:SPECIALISM_OF]->(CloudComputing)
CREATE (SaaS:Model {name: 'Software as a Service'})-[:SPECIALISM_OF]->(CloudComputing)
CREATE (FaaS:Model {name: 'Function as a Service'})-[:SPECIALISM_OF]->(CloudComputing)

CREATE (SoftwareDesign)-[:IMPLEMENTED_BY]->(PortsAndAdapters:Pattern {name: 'Ports and Adapters'})

CREATE (InfrastructureAsCode:Practice {name: 'Infrastructure as Code'})
CREATE (ConfigurationAsCode:Practice {name: 'Configuration as Code'})

// Design Patterns

// ... from XP
CREATE (ArrangeActAssert:Pattern {name: 'Arrange, Act, Assert'}) // from http://wiki.c2.com/?ArrangeActAssert

// ... from DDD
CREATE (ValueObject:Pattern {name: 'Value Object'})-[:PATTERN_OF]->(DDD)
CREATE (Entity:Pattern {name: 'Entity'})-[:PATTERN_OF]->(DDD)
CREATE (Service:Pattern {name: 'Service'})-[:PATTERN_OF]->(DDD)
CREATE (Aggregate:Pattern {name: 'Aggregate'})-[:PATTERN_OF]->(DDD)
CREATE (Repository:Pattern {name: 'Repository'})-[:PATTERN_OF]->(DDD)
CREATE (Factory:Pattern {name: 'Factory'})-[:PATTERN_OF]->(DDD)

// ... from GOF
CREATE (Flyweight:Pattern {name: 'Flyweight'})-[:DESCRIBED_BY]->(GoF:Resource:Book {name: 'Design Patterns'})
CREATE (Singleton:Pattern {name: 'Singleton'})-[:DESCRIBED_BY]->(GoF)
// ...

// ... TODO: PoEAA
CREATE (PoEAA:Resource:Book {name: 'Patterns of Enterprise Application Architecture'})-[:WRITTEN_BY]->(MartinFowler)
CREATE (MetadataMappingLayers:Pattern {name: 'Metadata Mapping Layers'})-[:DESCRIBED_BY]->(PoEAA) // https://www.martinfowler.com/eaaCatalog/metadataMapping.html 

// DevOps

CREATE (DevOps:Model {name: 'DevOps'})-[:DESCRIBED_BY]->(DevOpsHandbook:Resource:Book {name: 'DevOps Handbook', isbn: '1942788002'})-[:WRITTEN_BY]->(JezHumble)
CREATE (DevOpsHandbook)-[:WRITTEN_BY]->(GeneKim)
CREATE (DevOpsHandbook)-[:WRITTEN_BY]->(PatrickDubois:Person {name: 'Patrick Dubois'})
CREATE (DevOpsHandbook)-[:WRITTEN_BY]->(JohnWillis:Person {name: 'John Willis'})

CREATE (DevOps)-[:DESCRIBED_BY]->(PhoenixProject:Resource:Book {name: 'The Phoenix Project', isbn: '1942788290'})-[:WRITTEN_BY]->(GeneKim)
CREATE (PhoenixProject)-[:WRITTEN_BY]->(KevinBehr:Person {name: 'Kevin Behr'})
CREATE (PhoenixProject)-[:WRITTEN_BY]->(GeorgeSpafford:Person {name: 'George Spafford'})

// SRE

CREATE (SRE:Method {name: 'Site Reliability Engineering'})<-[:PRACTICE_OF]-(ErrorBudgets:Practice {name: 'Error Budgets'})
CREATE (DevOps)-[:IMPLEMENTED_BY]->(SRE)

CREATE (SoftwareConstruction)-[:IMPLEMENTED_BY]->(Mobbing:Practice {name: 'Mob Programming'})

CREATE (CanaryTesting:Pattern {name: 'Canary Testing'})-[:PRACTICE_OF]->(SoftwareTesting)
CREATE (DarkLaunching:Pattern {name: 'Dark Launching'})-[:PRACTICE_OF]->(SoftwareDelivery)
CREATE (BlueGreenDeployment:Pattern {name: 'Blue Green Deployment'})-[:PRACTICE_OF]->(SoftwareDelivery)

CREATE (System:Paradigm {name: 'System'})