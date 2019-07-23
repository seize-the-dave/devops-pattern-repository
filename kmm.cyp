CREATE (KMM:Model {
    name: 'Kanban Maturity Model'
})
CREATE (ML0:MaturityLevel {
    name: 'Oblivious',
    code: 'ML0'
})
CREATE (ML1:MaturityLevel {
    name: 'Emerging',
    code: 'ML1'
})
CREATE (ML2:MaturityLevel {
    name: 'Defined',
    code: 'ML2'
})
CREATE (ML3:MaturityLevel {
    name: 'Managed',
    code: 'ML3'
})
CREATE (ML4:MaturityLevel {
    name: 'Quantitatively Managed',
    code: 'ML4'
})
CREATE (ML5:MaturityLevel {
    name: 'Optimizing',
    code: 'ML5'
})
CREATE (ML6:MaturityLevel {
    name: 'Congruent',
    code: 'ML6'
})
CREATE (KMM)-[:LEVEL]->(ML0)
CREATE (KMM)-[:LEVEL]->(ML1)
CREATE (KMM)-[:LEVEL]->(ML2)
CREATE (KMM)-[:LEVEL]->(ML3)
CREATE (KMM)-[:LEVEL]->(ML4)
CREATE (KMM)-[:LEVEL]->(ML5)
CREATE (KMM)-[:LEVEL]->(ML6)

CREATE (VZ:GeneralPractice {
    name: 'Visualize',
    code: 'VZ'
})
CREATE (LW:GeneralPractice {
    name: 'Limit Work-in-Progress',
    code: 'LW'
})
CREATE (MF:GeneralPractice {
    name: 'Manage Flow',
    code: 'MF'
})
CREATE (XP:GeneralPractice {
    name: 'Explicit Policies',
    code: 'XP'
})
CREATE (FL:GeneralPractice {
    name: 'Implement Feedback Loops',
    code: 'FL'
})
CREATE (IE:GeneralPractice {
    name: 'Improve Collaboratively, Evolve Experimentally',
    code: 'IE'
})
CREATE (KMM)-[:PRACTICE]->(VZ)
CREATE (KMM)-[:PRACTICE]->(LW)
CREATE (KMM)-[:PRACTICE]->(MF)
CREATE (KMM)-[:PRACTICE]->(XP)
CREATE (KMM)-[:PRACTICE]->(FL)
CREATE (KMM)-[:PRACTICE]->(IE)

// CREATE (VZ0_1)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ0_2)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ1_1)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ1_2)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ1_3)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ1_4)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ1_5)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ2_1)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ2_2)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ2_3)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ2_4)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ2_5)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ2_6)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ2_7)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ2_8)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ2_9)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ2_10)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ2_11)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ2_12)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ2_13)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_1)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_2)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_3)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_4)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_5)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_6)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_7)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_8)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_9)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_10)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_11)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_12)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_13)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_14)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_15)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_16)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_17)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ3_18)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ4_1)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ4_2)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ4_3)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ4_4)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ4_5)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ4_6)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ4_7)-[:SPECIALIZATION]->(VZ)
// CREATE (VZ5_1)-[:SPECIALIZATION]->(VZ)

CREATE (VZ0_1:SpecificPractice {name: 'Visualize an individual’s work by means of a personal kanban board.', code: 'VZ0.1'})-[:APPLIED_AT]->(ML0)
CREATE (VZ0_2:SpecificPractice {name: 'Visualize basic work item related information on a ticket.', code: 'VZ0.2'})-[:APPLIED_AT]->(ML0)
CREATE (VZ1_1:SpecificPractice {name: 'Visualize work for several individuals by means of an aggregated personal kanban board.', code: 'VZ1.1'})-[:APPLIED_AT]->(ML1)
CREATE (VZ1_2:SpecificPractice {name: 'Visualize the work carried out by a team by means of a team kanban board.', code: 'VZ1.2'})-[:APPLIED_AT]->(ML1)
CREATE (VZ1_3:SpecificPractice {name: 'Use avatars to visualize an individual’s workload.', code: 'VZ1.3'})-[:APPLIED_AT]->(ML1)
CREATE (VZ1_4:SpecificPractice {name: 'Visualize initial policies.', code: 'VZ1.4'})-[:APPLIED_AT]->(ML1)
CREATE (VZ1_5:SpecificPractice {name: 'Visualize teamwork by means of an emergent workflow kanban board.', code: 'VZ1.5'})-[:APPLIED_AT]->(ML1)
CREATE (VZ2_1:SpecificPractice {name: 'Visualize work items by means of a delivery kanban board with per- person WIP limits.', code: 'VZ2.1'})-[:APPLIED_AT]->(ML2)
CREATE (VZ2_2:SpecificPractice {name: 'Visualize work types by means of card colors or board rows.', code: 'VZ2.2'})-[:APPLIED_AT]->(ML2)
CREATE (VZ2_3:SpecificPractice {name: 'Visualize blocked work items.', code: 'VZ2.3'})-[:APPLIED_AT]->(ML2)
CREATE (VZ2_4:SpecificPractice {name: 'Visualize development of options by means of a discovery kanban board.', code: 'VZ2.4'})-[:APPLIED_AT]->(ML2)
CREATE (VZ2_5:SpecificPractice {name: 'Visualize individual workload on a discovery kanban board by means of per-person WIP limits, potentially implemented using avatars.', code: 'VZ2.5'})-[:APPLIED_AT]->(ML2)
CREATE (VZ2_6:SpecificPractice {name: 'Visualize basic policies.', code: 'VZ2.6'})-[:APPLIED_AT]->(ML2)
CREATE (VZ2_7:SpecificPractice {name: 'Ticket design: Visualize concurrent or unordered activities with checkboxes.', code: 'VZ2.7'})-[:APPLIED_AT]->(ML2)
CREATE (VZ2_8:SpecificPractice {name: 'Ticket design: Visualize concurrent activities performed by specialist teams using partial rows.', code: 'VZ2.8'})-[:APPLIED_AT]->(ML2)
CREATE (VZ2_9:SpecificPractice {name: 'Board design: Visualize sequential activities where no dependency or preferred sequence exists using rows or vertical spaces.', code: 'VZ2.9'})-[:APPLIED_AT]->(ML2)
CREATE (VZ2_10:SpecificPractice {name: 'Visualize defects and other rework types.', code: 'VZ2.10'})-[:APPLIED_AT]->(ML2)
CREATE (VZ2_11:SpecificPractice {name: 'Use CONWIP with an emergent workflow delivery kanban board to provide workflow-level relief from overburdening and basic mechanics of a pull system, with separate replenishment and delivery cadences.', code: 'VZ2.11'})-[:APPLIED_AT]->(ML2)
CREATE (VZ2_12:SpecificPractice {name: 'Visualize workflow by means of enhanced discovery/delivery boards.', code: 'VZ2.12'})-[:APPLIED_AT]->(ML2)
CREATE (VZ2_13:SpecificPractice {name: 'Visualize project progress on a portfolio kanban board.', code: 'VZ2.13'})-[:APPLIED_AT]->(ML2)
CREATE (VZ3_1:SpecificPractice {name: 'Visualize “ready to commit” status, also known as “ready to pull.”', code: 'VZ3.1'})-[:APPLIED_AT]->(ML3)
CREATE (VZ3_2:SpecificPractice {name: 'Visualize “ready to pull” criteria, also known as “definition of ready,” or “entry criteria.”', code: 'VZ3.2'})-[:APPLIED_AT]->(ML3)
CREATE (VZ3_3:SpecificPractice {name: 'Visualize workflow and teamwork items by means of aggregated team kanban board.', code: 'VZ3.3'})-[:APPLIED_AT]->(ML3)
CREATE (VZ3_4:SpecificPractice {name: 'Visualize project work items on a two-tiered project kanban board.', code: 'VZ3.4'})-[:APPLIED_AT]->(ML3)
CREATE (VZ3_5:SpecificPractice {name: 'Visualize parent–child and peer–peer dependencies.', code: 'VZ3.5'})-[:APPLIED_AT]->(ML3)
CREATE (VZ3_6:SpecificPractice {name: 'Use a parking lot to visualize dependent work requests of another service or system currently waiting or blocked.', code: 'VZ3.6'})-[:APPLIED_AT]->(ML3)
CREATE (VZ3_7:SpecificPractice {name: 'Visualize upstream options by means of an upstream/discovery kanban board.', code: 'VZ3.7'})-[:APPLIED_AT]->(ML3)
CREATE (VZ3_8:SpecificPractice {name: 'Visualize discarded options using a bin on an upstream/discovery kanban board.', code: 'VZ3.8'})-[:APPLIED_AT]->(ML3)
CREATE (VZ3_9:SpecificPractice {name: 'Visualize replenishment signals.', code: 'VZ3.9'})-[:APPLIED_AT]->(ML3)
CREATE (VZ3_10:SpecificPractice {name: 'Visualize pull signals.', code: 'VZ3.10'})-[:APPLIED_AT]->(ML3)
CREATE (VZ3_11:SpecificPractice {name: 'Visualize pull criteria (also known as “pull policies,” “definition of ready,” or “exit criteria”).', code: 'VZ3.11'})-[:APPLIED_AT]->(ML3)
CREATE (VZ3_12:SpecificPractice {name: 'Visualize available capacity.', code: 'VZ3.12'})-[:APPLIED_AT]->(ML3)
CREATE (VZ3_13:SpecificPractice {name: 'Visualize work item aging.', code: 'VZ3.13'})-[:APPLIED_AT]->(ML3)
CREATE (VZ3_14:SpecificPractice {name: 'Visualize target date or SLA.', code: 'VZ3.14'})-[:APPLIED_AT]->(ML3)
CREATE (VZ3_15:SpecificPractice {name: 'Visualize failure demand versus value demand.', code: 'VZ3.15'})-[:APPLIED_AT]->(ML3)
CREATE (VZ3_16:SpecificPractice {name: 'Visualize aborted work.', code: 'VZ3.16'})-[:APPLIED_AT]->(ML3)
CREATE (VZ3_17:SpecificPractice {name: 'Visualize class of service using ticket colors, board rows, or ticket decorators.', code: 'VZ3.17'})-[:APPLIED_AT]->(ML3)
CREATE (VZ3_18:SpecificPractice {name: 'Use Earned Value portfolio kanban board to visualize project progress and schedule or budget risk.', code: 'VZ3.18'})-[:APPLIED_AT]->(ML3)
CREATE (VZ4_1:SpecificPractice {name: 'Visualize local cycle time.', code: 'VZ4.1'})-[:APPLIED_AT]->(ML4)
CREATE (VZ4_2:SpecificPractice {name: 'Use ticket decorators to indicate risks.', code: 'VZ4.2'})-[:APPLIED_AT]->(ML4)
CREATE (VZ4_3:SpecificPractice {name: 'Visualize risk classes with different swim lanes', code: 'VZ4.3'})-[:APPLIED_AT]->(ML4)
CREATE (VZ4_4:SpecificPractice {name: 'Visualize split-and-merge workflows.', code: 'VZ4.4'})-[:APPLIED_AT]->(ML4)
CREATE (VZ4_5:SpecificPractice {name: 'Visualize WIP limits on dependencies parking lot.', code: 'VZ4.5'})-[:APPLIED_AT]->(ML4)
CREATE (VZ4_6:SpecificPractice {name: 'Visualize waiting time in dependencies parking lot.', code: 'VZ4.6'})-[:APPLIED_AT]->(ML4)
CREATE (VZ4_7:SpecificPractice {name: 'Visualize SLA exceeded in dependencies parking lot.', code: 'VZ4.7'})-[:APPLIED_AT]->(ML4)
CREATE (VZ5_1:SpecificPractice {name: 'Visualize fixed teams and floating workers (shared resources) across aggregated services.', code: 'VZ5.1'})-[:APPLIED_AT]->(ML5)

CREATE (VZ0_1)-[:SPECIALIZATION]->(VZ)
CREATE (VZ0_2)-[:SPECIALIZATION]->(VZ)
CREATE (VZ1_1)-[:SPECIALIZATION]->(VZ)
CREATE (VZ1_2)-[:SPECIALIZATION]->(VZ)
CREATE (VZ1_3)-[:SPECIALIZATION]->(VZ)
CREATE (VZ1_4)-[:SPECIALIZATION]->(VZ)
CREATE (VZ1_5)-[:SPECIALIZATION]->(VZ)
CREATE (VZ2_1)-[:SPECIALIZATION]->(VZ)
CREATE (VZ2_2)-[:SPECIALIZATION]->(VZ)
CREATE (VZ2_3)-[:SPECIALIZATION]->(VZ)
CREATE (VZ2_4)-[:SPECIALIZATION]->(VZ)
CREATE (VZ2_5)-[:SPECIALIZATION]->(VZ)
CREATE (VZ2_6)-[:SPECIALIZATION]->(VZ)
CREATE (VZ2_7)-[:SPECIALIZATION]->(VZ)
CREATE (VZ2_8)-[:SPECIALIZATION]->(VZ)
CREATE (VZ2_9)-[:SPECIALIZATION]->(VZ)
CREATE (VZ2_10)-[:SPECIALIZATION]->(VZ)
CREATE (VZ2_11)-[:SPECIALIZATION]->(VZ)
CREATE (VZ2_12)-[:SPECIALIZATION]->(VZ)
CREATE (VZ2_13)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_1)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_2)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_3)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_4)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_5)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_6)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_7)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_8)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_9)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_10)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_11)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_12)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_13)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_14)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_15)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_16)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_17)-[:SPECIALIZATION]->(VZ)
CREATE (VZ3_18)-[:SPECIALIZATION]->(VZ)
CREATE (VZ4_1)-[:SPECIALIZATION]->(VZ)
CREATE (VZ4_2)-[:SPECIALIZATION]->(VZ)
CREATE (VZ4_3)-[:SPECIALIZATION]->(VZ)
CREATE (VZ4_4)-[:SPECIALIZATION]->(VZ)
CREATE (VZ4_5)-[:SPECIALIZATION]->(VZ)
CREATE (VZ4_6)-[:SPECIALIZATION]->(VZ)
CREATE (VZ4_7)-[:SPECIALIZATION]->(VZ)
CREATE (VZ5_1)-[:SPECIALIZATION]->(VZ)

// CREATE (LW0_1)-[:SPECIALIZATION]->(LW)
// CREATE (LW1_1)-[:SPECIALIZATION]->(LW)
// CREATE (LW1_2)-[:SPECIALIZATION]->(LW)
// CREATE (LW2_1)-[:SPECIALIZATION]->(LW)
// CREATE (LW2_2)-[:SPECIALIZATION]->(LW)
// CREATE (LW3_1)-[:SPECIALIZATION]->(LW)
// CREATE (LW3_2)-[:SPECIALIZATION]->(LW)
// CREATE (LW3_3)-[:SPECIALIZATION]->(LW)
// CREATE (LW4_1)-[:SPECIALIZATION]->(LW)

CREATE (LW0_1:SpecificPractice {name: 'Establish personal WIP limits.', code: 'LW0.1'})-[:APPLIED_AT]->(ML0)
CREATE (LW1_1:SpecificPractice {name: 'Establish per-person WIP limits.', code: 'LW1.1'})-[:APPLIED_AT]->(ML1)
CREATE (LW1_2:SpecificPractice {name: 'Establish team WIP limits.', code: 'LW1.2'})-[:APPLIED_AT]->(ML1)
CREATE (LW2_1:SpecificPractice {name: 'Establish activity based WIP limits.', code: 'LW2.1'})-[:APPLIED_AT]->(ML2)
CREATE (LW2_2:SpecificPractice {name: 'Establish CONWIP limits on emergent workflow.', code: 'LW2.2'})-[:APPLIED_AT]->(ML2)
CREATE (LW3_1:SpecificPractice {name: 'Use an order point (min limit) for upstream replenishment.', code: 'LW3.1'})-[:APPLIED_AT]->(ML3)
CREATE (LW3_2:SpecificPractice {name: 'Use a max limit to define capacity.', code: 'LW3.2'})-[:APPLIED_AT]->(ML3)
CREATE (LW3_3:SpecificPractice {name: 'Bracket WIP limits for different states.', code: 'LW3.3'})-[:APPLIED_AT]->(ML3)
CREATE (LW4_1:SpecificPractice {name: 'Limit WIP on dependency parking lot.', code: 'LW4.1'})-[:APPLIED_AT]->(ML4)

CREATE (LW0_1)-[:SPECIALIZATION]->(LW)
CREATE (LW1_1)-[:SPECIALIZATION]->(LW)
CREATE (LW1_2)-[:SPECIALIZATION]->(LW)
CREATE (LW2_2)-[:SPECIALIZATION]->(LW)
CREATE (LW3_1)-[:SPECIALIZATION]->(LW)
CREATE (LW3_2)-[:SPECIALIZATION]->(LW)
CREATE (LW3_3)-[:SPECIALIZATION]->(LW)
CREATE (LW4_1)-[:SPECIALIZATION]->(LW)

// CREATE (MF0_1)-[:SPECIALIZATION]->(MF)
// CREATE (MF2_1)-[:SPECIALIZATION]->(MF)
// CREATE (MF2_2)-[:SPECIALIZATION]->(MF)
// CREATE (MF2_3)-[:SPECIALIZATION]->(MF)
// CREATE (MF2_4)-[:SPECIALIZATION]->(MF)
// CREATE (MF3_1)-[:SPECIALIZATION]->(MF)
// CREATE (MF3_2)-[:SPECIALIZATION]->(MF)
// CREATE (MF3_3)-[:SPECIALIZATION]->(MF)
// CREATE (MF3_4)-[:SPECIALIZATION]->(MF)
// CREATE (MF3_5)-[:SPECIALIZATION]->(MF)
// CREATE (MF3_6)-[:SPECIALIZATION]->(MF)
// CREATE (MF3_7)-[:SPECIALIZATION]->(MF)
// CREATE (MF3_8)-[:SPECIALIZATION]->(MF)
// CREATE (MF3_9)-[:SPECIALIZATION]->(MF)
// CREATE (MF3_10)-[:SPECIALIZATION]->(MF)
// CREATE (MF3_11)-[:SPECIALIZATION]->(MF)
// CREATE (MF3_12)-[:SPECIALIZATION]->(MF)
// CREATE (MF3_13)-[:SPECIALIZATION]->(MF)
// CREATE (MF4_1)-[:SPECIALIZATION]->(MF)
// CREATE (MF4_2)-[:SPECIALIZATION]->(MF)
// CREATE (MF4_3)-[:SPECIALIZATION]->(MF)
// CREATE (MF4_4)-[:SPECIALIZATION]->(MF)
// CREATE (MF4_5)-[:SPECIALIZATION]->(MF)
// CREATE (MF4_6)-[:SPECIALIZATION]->(MF)
// CREATE (MF4_7)-[:SPECIALIZATION]->(MF)
// CREATE (MF4_8)-[:SPECIALIZATION]->(MF)
// CREATE (MF4_9)-[:SPECIALIZATION]->(MF)
// CREATE (MF4_10)-[:SPECIALIZATION]->(MF)
// CREATE (MF4_11)-[:SPECIALIZATION]->(MF)
// CREATE (MF4_12)-[:SPECIALIZATION]->(MF)
// CREATE (MF5_1)-[:SPECIALIZATION]->(MF)

CREATE (MF0_1:SpecificPractice {name: 'Define work types based on nature of tasks.', code: 'MF0.1'})-[:APPLIED_AT]->(ML0)
CREATE (MF2_1:SpecificPractice {name: 'Define work types based on customer requests.', code: 'MF2.1'})-[:APPLIED_AT]->(ML2)
CREATE (MF2_2:SpecificPractice {name: 'Map upstream and downstream flow.', code: 'MF2.2'})-[:APPLIED_AT]->(ML2)
CREATE (MF2_3:SpecificPractice {name: 'Manage blocking issues.', code: 'MF2.3'})-[:APPLIED_AT]->(ML2)
CREATE (MF2_4:SpecificPractice {name: 'Manage defects and other rework types.', code: 'MF2.4'})-[:APPLIED_AT]->(ML2)
CREATE (MF3_1:SpecificPractice {name: 'Organize around the knowledge discovery process.', code: 'MF3.1'})-[:APPLIED_AT]->(ML3)
CREATE (MF3_2:SpecificPractice {name: 'Defer commitment (decide at the “last responsible moment.”)', code: 'MF3.2'})-[:APPLIED_AT]->(ML3)
CREATE (MF3_3:SpecificPractice {name: 'Use cumulative flow diagram to monitor queues.', code: 'MF3.3'})-[:APPLIED_AT]->(ML3)
CREATE (MF3_4:SpecificPractice {name: 'Use Little’s Law.', code: 'MF3.4'})-[:APPLIED_AT]->(ML3)
CREATE (MF3_5:SpecificPractice {name: 'Gradually eliminate infinite buffers.', code: 'MF3.5'})-[:APPLIED_AT]->(ML3)
CREATE (MF3_6:SpecificPractice {name: 'Report rudimentary flow efficiency to understand the value of reducing buffers and the leverage of eliminating sources of delay.', code: 'MF3.6'})-[:APPLIED_AT]->(ML3)
CREATE (MF3_7:SpecificPractice {name: 'Actively close upstream requests that meet the abandonment', code: 'MF3.7'})-[:APPLIED_AT]->(ML3)
CREATE (MF3_8:SpecificPractice {name: 'Develop triage discipline.', code: 'MF3.8'})-[:APPLIED_AT]->(ML3)
CREATE (MF3_9:SpecificPractice {name: 'Manage dependencies.', code: 'MF3.9'})-[:APPLIED_AT]->(ML3)
CREATE (MF3_10:SpecificPractice {name: 'Analyze and report aborted work items.', code: 'MF3.10'})-[:APPLIED_AT]->(ML3)
CREATE (MF3_11:SpecificPractice {name: 'Use classes of service to affect selection.', code: 'MF3.11'})-[:APPLIED_AT]->(ML3)
CREATE (MF3_12:SpecificPractice {name: 'Forecast delivery.', code: 'MF3.12'})-[:APPLIED_AT]->(ML3)
CREATE (MF3_13:SpecificPractice {name: 'Apply qualitative Real Options Thinking.', code: 'MF3.13'})-[:APPLIED_AT]->(ML3)
CREATE (MF4_1:SpecificPractice {name: 'Collect and report detailed flow efficiency analysis.', code: 'MF4.1'})-[:APPLIED_AT]->(ML4)
CREATE (MF4_2:SpecificPractice {name: 'Use explicit buffers to smooth flow.', code: 'MF4.2'})-[:APPLIED_AT]->(ML4)
CREATE (MF4_3:SpecificPractice {name: 'Use two-phase commit for delivery commitment.', code: 'MF4.3'})-[:APPLIED_AT]->(ML4)
CREATE (MF4_4:SpecificPractice {name: 'Analyze to anticipate dependencies.', code: 'MF4.4'})-[:APPLIED_AT]->(ML4)
CREATE (MF4_5:SpecificPractice {name: 'Establish refutable versus irrefutable demand.', code: 'MF4.5'})-[:APPLIED_AT]->(ML4)
CREATE (MF4_6:SpecificPractice {name: 'Determine reference class data set.', code: 'MF4.6'})-[:APPLIED_AT]->(ML4)
CREATE (MF4_7:SpecificPractice {name: 'Forecast using reference classes, Monte Carlo simulations, and other models.', code: 'MF4.7'})-[:APPLIED_AT]->(ML4)
CREATE (MF4_8:SpecificPractice {name: 'Allocate capacity across swim lanes.', code: 'MF4.8'})-[:APPLIED_AT]->(ML4)
CREATE (MF4_9:SpecificPractice {name: 'Allocate capacity by color of work item.', code: 'MF4.9'})-[:APPLIED_AT]->(ML4)
CREATE (MF4_10:SpecificPractice {name: 'Make appropriate use of forecasting.', code: 'MF4.10'})-[:APPLIED_AT]->(ML4)
CREATE (MF4_11:SpecificPractice {name: 'Assess forecasting models for robustness.', code: 'MF4.11'})-[:APPLIED_AT]->(ML4)
CREATE (MF4_12:SpecificPractice {name: 'Use statistical methods for decision making.', code: 'MF4.12'})-[:APPLIED_AT]->(ML4)
CREATE (MF5_1:SpecificPractice {name: 'Utilize hybrid fixed service teams together with a flexible labor pool.', code: 'MF5.1'})-[:APPLIED_AT]->(ML5)

CREATE (MF0_1)-[:SPECIALIZATION]->(MF)
CREATE (MF2_1)-[:SPECIALIZATION]->(MF)
CREATE (MF2_2)-[:SPECIALIZATION]->(MF)
CREATE (MF2_3)-[:SPECIALIZATION]->(MF)
CREATE (MF2_4)-[:SPECIALIZATION]->(MF)
CREATE (MF3_1)-[:SPECIALIZATION]->(MF)
CREATE (MF3_2)-[:SPECIALIZATION]->(MF)
CREATE (MF3_3)-[:SPECIALIZATION]->(MF)
CREATE (MF3_4)-[:SPECIALIZATION]->(MF)
CREATE (MF3_5)-[:SPECIALIZATION]->(MF)
CREATE (MF3_6)-[:SPECIALIZATION]->(MF)
CREATE (MF3_7)-[:SPECIALIZATION]->(MF)
CREATE (MF3_8)-[:SPECIALIZATION]->(MF)
CREATE (MF3_9)-[:SPECIALIZATION]->(MF)
CREATE (MF3_10)-[:SPECIALIZATION]->(MF)
CREATE (MF3_11)-[:SPECIALIZATION]->(MF)
CREATE (MF3_12)-[:SPECIALIZATION]->(MF)
CREATE (MF3_13)-[:SPECIALIZATION]->(MF)
CREATE (MF4_1)-[:SPECIALIZATION]->(MF)
CREATE (MF4_2)-[:SPECIALIZATION]->(MF)
CREATE (MF4_3)-[:SPECIALIZATION]->(MF)
CREATE (MF4_4)-[:SPECIALIZATION]->(MF)
CREATE (MF4_5)-[:SPECIALIZATION]->(MF)
CREATE (MF4_6)-[:SPECIALIZATION]->(MF)
CREATE (MF4_7)-[:SPECIALIZATION]->(MF)
CREATE (MF4_8)-[:SPECIALIZATION]->(MF)
CREATE (MF4_9)-[:SPECIALIZATION]->(MF)
CREATE (MF4_10)-[:SPECIALIZATION]->(MF)
CREATE (MF4_11)-[:SPECIALIZATION]->(MF)
CREATE (MF4_12)-[:SPECIALIZATION]->(MF)
CREATE (MF5_1)-[:SPECIALIZATION]->(MF)

// CREATE (XP0_1)-[:SPECIALIZATION]->(XP)
// CREATE (XP1_1)-[:SPECIALIZATION]->(XP)
// CREATE (XP2_1)-[:SPECIALIZATION]->(XP)
// CREATE (XP2_2)-[:SPECIALIZATION]->(XP)
// CREATE (XP2_3)-[:SPECIALIZATION]->(XP)
// CREATE (XP2_4)-[:SPECIALIZATION]->(XP)
// CREATE (XP3_1)-[:SPECIALIZATION]->(XP)
// CREATE (XP3_2)-[:SPECIALIZATION]->(XP)
// CREATE (XP3_3)-[:SPECIALIZATION]->(XP)
// CREATE (XP3_4)-[:SPECIALIZATION]->(XP)
// CREATE (XP3_5)-[:SPECIALIZATION]->(XP)
// CREATE (XP3_6)-[:SPECIALIZATION]->(XP)
// CREATE (XP3_7)-[:SPECIALIZATION]->(XP)
// CREATE (XP3_8)-[:SPECIALIZATION]->(XP)
// CREATE (XP4_1)-[:SPECIALIZATION]->(XP)
// CREATE (XP4_2)-[:SPECIALIZATION]->(XP)
// CREATE (XP4_3)-[:SPECIALIZATION]->(XP)
// CREATE (XP5_1)-[:SPECIALIZATION]->(XP)

CREATE (XP0_1:SpecificPractice {name: 'Define personal kanban policies.', code: 'XP0.1'})-[:APPLIED_AT]->(ML0)
CREATE (XP1_1:SpecificPractice {name: 'Define initial policies.', code: 'XP1.1'})-[:APPLIED_AT]->(ML1)
CREATE (XP2_1:SpecificPractice {name: 'Define initial services.', code: 'XP2.1'})-[:APPLIED_AT]->(ML2)
CREATE (XP2_2:SpecificPractice {name: 'Elaborate further policies.', code: 'XP2.2'})-[:APPLIED_AT]->(ML2)
CREATE (XP2_3:SpecificPractice {name: 'Define blocking issue escalation policies.', code: 'XP2.3'})-[:APPLIED_AT]->(ML2)
CREATE (XP2_4:SpecificPractice {name: 'Define policies for managing defects and other rework types.', code: 'XP2.4'})-[:APPLIED_AT]->(ML2)
CREATE (XP3_1:SpecificPractice {name: 'Establish explicit purpose of metrics.', code: 'XP3.1'})-[:APPLIED_AT]->(ML3)
CREATE (XP3_2:SpecificPractice {name: 'Establish initial request acceptance policies.', code: 'XP3.2'})-[:APPLIED_AT]->(ML3)
CREATE (XP3_3:SpecificPractice {name: 'Define work request abandonment policies.', code: 'XP3.3'})-[:APPLIED_AT]->(ML3)
CREATE (XP3_4:SpecificPractice {name: 'Establish replenishment commitment point.', code: 'XP3.4'})-[:APPLIED_AT]->(ML3)
CREATE (XP3_5:SpecificPractice {name: 'Establish pull criteria.', code: 'XP3.5'})-[:APPLIED_AT]->(ML3)
CREATE (XP3_6:SpecificPractice {name: 'Establish a delivery commitment point.', code: 'XP3.6'})-[:APPLIED_AT]->(ML3)
CREATE (XP3_7:SpecificPractice {name: 'Establish customer acceptance criteria for each work item or a class', code: 'XP3.7'})-[:APPLIED_AT]->(ML3)
CREATE (XP3_8:SpecificPractice {name: 'Define classes of service.', code: 'XP3.8'})-[:APPLIED_AT]->(ML3)
CREATE (XP4_1:SpecificPractice {name: 'Explicitly define fitness-for-purpose, and manage based on metrics.', code: 'XP4.1'})-[:APPLIED_AT]->(ML4)
CREATE (XP4_2:SpecificPractice {name: 'Establish demand shaping policies.', code: 'XP4.2'})-[:APPLIED_AT]->(ML4)
CREATE (XP4_3:SpecificPractice {name: 'Establish SLA on dependent services.', code: 'XP4.3'})-[:APPLIED_AT]->(ML4)
CREATE (XP5_1:SpecificPractice {name: 'Align strategy and capability.', code: 'XP5.1'})-[:APPLIED_AT]->(ML5)

CREATE (XP0_1)-[:SPECIALIZATION]->(XP)
CREATE (XP1_1)-[:SPECIALIZATION]->(XP)
CREATE (XP2_1)-[:SPECIALIZATION]->(XP)
CREATE (XP2_2)-[:SPECIALIZATION]->(XP)
CREATE (XP2_3)-[:SPECIALIZATION]->(XP)
CREATE (XP2_4)-[:SPECIALIZATION]->(XP)
CREATE (XP3_1)-[:SPECIALIZATION]->(XP)
CREATE (XP3_2)-[:SPECIALIZATION]->(XP)
CREATE (XP3_3)-[:SPECIALIZATION]->(XP)
CREATE (XP3_4)-[:SPECIALIZATION]->(XP)
CREATE (XP3_5)-[:SPECIALIZATION]->(XP)
CREATE (XP3_6)-[:SPECIALIZATION]->(XP)
CREATE (XP3_7)-[:SPECIALIZATION]->(XP)
CREATE (XP3_8)-[:SPECIALIZATION]->(XP)
CREATE (XP4_1)-[:SPECIALIZATION]->(XP)
CREATE (XP4_2)-[:SPECIALIZATION]->(XP)
CREATE (XP4_3)-[:SPECIALIZATION]->(XP)
CREATE (XP5_1)-[:SPECIALIZATION]->(XP)

// CREATE (FL0_1)-[:SPECIALIZATION]->(FL)
// CREATE (FL1_1)-[:SPECIALIZATION]->(FL)
// CREATE (FL2_1)-[:SPECIALIZATION]->(FL)
// CREATE (FL2_2)-[:SPECIALIZATION]->(FL)
// CREATE (FL3_1)-[:SPECIALIZATION]->(FL)
// CREATE (FL3_2)-[:SPECIALIZATION]->(FL)
// CREATE (FL3_3)-[:SPECIALIZATION]->(FL)
// CREATE (FL3_4)-[:SPECIALIZATION]->(FL)
// CREATE (FL3_5)-[:SPECIALIZATION]->(FL)
// CREATE (FL3_6)-[:SPECIALIZATION]->(FL)
// CREATE (FL4_1)-[:SPECIALIZATION]->(FL)
// CREATE (FL4_2)-[:SPECIALIZATION]->(FL)
// CREATE (FL4_3)-[:SPECIALIZATION]->(FL)
// CREATE (FL5_1)-[:SPECIALIZATION]->(FL)

CREATE (FL0_1:SpecificPractice {name: 'Engage in personal reflection.', code: 'FL0.1'})-[:APPLIED_AT]->(ML0)
CREATE (FL1_1:SpecificPractice {name: 'Conduct Kanban Meeting.', code: 'FL1.1'})-[:APPLIED_AT]->(ML1)
CREATE (FL2_1:SpecificPractice {name: 'Conduct internal team Replenishment Meeting.', code: 'FL2.1'})-[:APPLIED_AT]->(ML2)
CREATE (FL2_2:SpecificPractice {name: 'Hold a Team Retrospective.', code: 'FL2.2'})-[:APPLIED_AT]->(ML2)
CREATE (FL3_1:SpecificPractice {name: 'Conduct Replenishment Meeting.', code: 'FL3.1'})-[:APPLIED_AT]->(ML3)
CREATE (FL3_2:SpecificPractice {name: 'Conduct Suggestion Box Review.', code: 'FL3.2'})-[:APPLIED_AT]->(ML3)
CREATE (FL3_3:SpecificPractice {name: 'Conduct System Capability Review.', code: 'FL3.3'})-[:APPLIED_AT]->(ML3)
CREATE (FL3_4:SpecificPractice {name: 'Conduct Delivery Planning Meeting.', code: 'FL3.4'})-[:APPLIED_AT]->(ML3)
CREATE (FL3_5:SpecificPractice {name: 'Conduct Service Delivery Review.', code: 'FL3.5'})-[:APPLIED_AT]->(ML3)
CREATE (FL3_6:SpecificPractice {name: 'Conduct Options Review (upstream).', code: 'FL3.6'})-[:APPLIED_AT]->(ML3)
CREATE (FL4_1:SpecificPractice {name: 'Conduct Risk Review.', code: 'FL4.1'})-[:APPLIED_AT]->(ML4)
CREATE (FL4_2:SpecificPractice {name: 'Conduct Portfolio Review.', code: 'FL4.2'})-[:APPLIED_AT]->(ML4)
CREATE (FL4_3:SpecificPractice {name: 'Conduct Operations Review.', code: 'FL4.3'})-[:APPLIED_AT]->(ML4)
CREATE (FL5_1:SpecificPractice {name: 'Conduct Strategy Review.', code: 'FL5.1'})-[:APPLIED_AT]->(ML5)

CREATE (FL0_1)-[:SPECIALIZATION]->(FL)
CREATE (FL1_1)-[:SPECIALIZATION]->(FL)
CREATE (FL2_1)-[:SPECIALIZATION]->(FL)
CREATE (FL2_2)-[:SPECIALIZATION]->(FL)
CREATE (FL3_1)-[:SPECIALIZATION]->(FL)
CREATE (FL3_2)-[:SPECIALIZATION]->(FL)
CREATE (FL3_3)-[:SPECIALIZATION]->(FL)
CREATE (FL3_4)-[:SPECIALIZATION]->(FL)
CREATE (FL3_5)-[:SPECIALIZATION]->(FL)
CREATE (FL3_6)-[:SPECIALIZATION]->(FL)
CREATE (FL4_1)-[:SPECIALIZATION]->(FL)
CREATE (FL4_2)-[:SPECIALIZATION]->(FL)
CREATE (FL4_3)-[:SPECIALIZATION]->(FL)
CREATE (FL5_1)-[:SPECIALIZATION]->(FL)

// IE2.1 Identify sources of dissatisfaction.
// IE2.2 Identify problematic policies.
// IE3.1 Suggest improvements using a suggestion box.
// IE3.2 Identify sources of delay.
// IE3.3 Analyze blocker likelihood and impact.
// IE3.4 Analyze lead time tail risk.
// IE3.5 After meetings: discuss a problem spontaneously, and bring it to the Service Delivery Review.
// IE4.1 Develop qualitative understanding of common versus special cause for process performance variation.
// IE4.2 Identify the impact of shared resources.
// IE4.3 Identify bottleneck and resolve it.
// IE4.4 Identify transaction and coordination costs.
// IE4.5 Develop quantitative understanding of common versus chance cause for process performance variation.
// IE5.1 After meetings: Discuss – Suggest – Take actions – Seek forgiveness.
// IE6.1 After meetings: Take congruent actions with confidence.

CREATE (IE2_1:SpecificPractice {name: 'Identify sources of dissatisfaction.', code: 'IE2.1'})-[:APPLIED_AT]->(ML2)
CREATE (IE2_2:SpecificPractice {name: 'Identify problematic policies.', code: 'IE2.2'})-[:APPLIED_AT]->(ML2)
CREATE (IE3_1:SpecificPractice {name: 'Suggest improvements using a suggestion box.', code: 'IE3.1'})-[:APPLIED_AT]->(ML3)
CREATE (IE3_2:SpecificPractice {name: 'Identify sources of delay.', code: 'IE3.2'})-[:APPLIED_AT]->(ML3)
CREATE (IE3_3:SpecificPractice {name: 'Analyze blocker likelihood and impact.', code: 'IE3.3'})-[:APPLIED_AT]->(ML3)
CREATE (IE3_4:SpecificPractice {name: 'Analyze lead time tail risk.', code: 'IE3.4'})-[:APPLIED_AT]->(ML3)
CREATE (IE3_5:SpecificPractice {name: 'After meetings: discuss a problem spontaneously, and bring it to the Service Delivery Review', code: 'IE3.5'})-[:APPLIED_AT]->(ML3)
CREATE (IE4_1:SpecificPractice {name: 'Develop qualitative understanding of common versus special cause for process performance variation.', code: 'IE4.1'})-[:APPLIED_AT]->(ML4)
CREATE (IE4_2:SpecificPractice {name: 'Identify the impact of shared resources.', code: 'IE4.2'})-[:APPLIED_AT]->(ML4)
CREATE (IE4_3:SpecificPractice {name: 'Identify bottleneck and resolve it.', code: 'IE4.3'})-[:APPLIED_AT]->(ML4)
CREATE (IE4_4:SpecificPractice {name: 'Identify transaction and coordination costs.', code: 'IE4.4'})-[:APPLIED_AT]->(ML4)
CREATE (IE4_5:SpecificPractice {name: 'Develop quantitative understanding of common versus chance cause for process performance variation.', code: 'IE4.5'})-[:APPLIED_AT]->(ML4)
CREATE (IE5_1:SpecificPractice {name: 'After meetings: Discuss – Suggest – Take actions – Seek forgiveness.', code: 'IE5.1'})-[:APPLIED_AT]->(ML5)
CREATE (IE6_1:SpecificPractice {name: 'After meetings: Take congruent actions with confidence.', code: 'IE6.1'})-[:APPLIED_AT]->(ML6)

CREATE (IE2_1)-[:SPECIALIZATION]->(IE)
CREATE (IE2_2)-[:SPECIALIZATION]->(IE)
CREATE (IE3_1)-[:SPECIALIZATION]->(IE)
CREATE (IE3_2)-[:SPECIALIZATION]->(IE)
CREATE (IE3_3)-[:SPECIALIZATION]->(IE)
CREATE (IE3_4)-[:SPECIALIZATION]->(IE)
CREATE (IE3_5)-[:SPECIALIZATION]->(IE)
CREATE (IE4_1)-[:SPECIALIZATION]->(IE)
CREATE (IE4_2)-[:SPECIALIZATION]->(IE)
CREATE (IE4_3)-[:SPECIALIZATION]->(IE)
CREATE (IE4_4)-[:SPECIALIZATION]->(IE)
CREATE (IE4_5)-[:SPECIALIZATION]->(IE)
CREATE (IE5_1)-[:SPECIALIZATION]->(IE)
CREATE (IE6_1)-[:SPECIALIZATION]->(IE)

// ([A-Z]{2})([0-5])\.([0-9]+) (.*)
// CREATE ($1$2_$3:SpecificPractice {name: '$4', code: '$1$2.$3'})-[:APPLIED_AT]->(ML$2)
// CREATE ($1$2_$3)-[:SPECIALIZATION]->($1)