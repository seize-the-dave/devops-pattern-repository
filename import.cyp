// MATCH (n) DETACH DELETE (n)

// CREATE (VersonControl:Capability {
//     name: 'Use version control for all production artifacts'
// })-[:IN_CATEGORY]->(CD:Category {
//     name: 'Continuous Delivery'
// })
// CREATE (DeploymentAutomation:Capability {
//     name: 'Automate your deployment process'
// })-[:IN_CATEGORY]->(CD)
// CREATE (CI:Capability {
//     name: 'Implement continuous ingration'
// })-[:IN_CATEGORY]->(CD)
// CREATE (TrunkBased:Capability {
//     name: 'Use trunk-based development methods'
// })-[:IN_CATEGORY]->(CD)
// CREATE (TestAutomation:Capability {
//     name: 'Implement test automation'
// })-[:IN_CATEGORY]->(CD)
// CREATE (TestData:Capability {
//     name: 'Support test data management'
// })-[:IN_CATEGORY]->(CD)
// CREATE (ShiftLeft:Capability {
//     name: 'Shift left on security'
// })-[:IN_CATEGORY]->(CD)
// CREATE (ImplementCD:Capability {
//     name: 'Implement continuous delivery (CD)'
// })-[:IN_CATEGORY]->(CD)

// CREATE (LooselyCoupledArchitecture:Capability {
//     name: 'Automate your deployment process'
// })-[:IN_CATEGORY]->(Architecture:Category {
//     name: 'Architecture'
// })
// CREATE (EmpoweredTeams:Capability {
//     name: 'Automate your deployment process'
// })-[:IN_CATEGORY]->(Architecture)

// CREATE (GatherCustomerFeedback:Capability {
//     name: 'Automate your deployment process'
// })-[:IN_CATEGORY]->(ProductProcess:Category {
//     name: 'Product and Process'
// })
// CREATE (MakeWorkVisible:Capability {
//     name: 'Automate your deployment process'
// })-[:IN_CATEGORY]->(ProductProcess)
// CREATE (SmallBatches:Capability {
//     name: 'Automate your deployment process'
// })-[:IN_CATEGORY]->(ProductProcess)
// CREATE (TeamExperimentation:Capability {
//     name: 'Foster and enable team experimentation'
// })-[:IN_CATEGORY]->(ProductProcess)

// CREATE (LightweightCAB:Capability {
//     name: 'Have a lightweight change approval process'
// })-[:IN_CATEGORY]->(LeanManagement:Category {
//     name: 'Lean Management and Monitoring'
// })
// CREATE (Monitor:Capability {
//     name: 'Monitor across application and infrastructure to inform business decisions'
// })-[:IN_CATEGORY]->(LeanManagement)
// CREATE (SystemHealth:Capability {
//     name: 'Check system health proactively'
// })-[:IN_CATEGORY]->(LeanManagement)
// CREATE (WipLimits:Capability {
//     name: 'Improve procesess and manage work with work-in-progress limits'
// })-[:IN_CATEGORY]->(LeanManagement)
// CREATE (MonitorQuality:Capability {
//     name: 'Visualise work to monitor quality and communicate through the team'
// })-[:IN_CATEGORY]->(LeanManagement)

// CREATE (Westrum:Capability {
//     name: 'Support a generative culture (as outlined by Westrum)'
// })-[:IN_CATEGORY]->(Cultural:Category {
//     name: 'Cultural'
// })
// CREATE (SupportLearning:Capability {
//     name: 'Encourage and support learning'
// })-[:IN_CATEGORY]->(Cultural)
// CREATE (FacilitateCollaboration:Capability {
//     name: 'Support and facilitate collaboration among teams'
// })-[:IN_CATEGORY]->(Cultural)
// CREATE (MakeWorkMeaningful:Capability {
//     name: 'Provide resources and tools that make work meaningful'
// })-[:IN_CATEGORY]->(Cultural)
// CREATE (TransformationalLeadership:Capability {
//     name: 'Support or embody transformational leadership'
// })-[:IN_CATEGORY]->(Cultural)


// CREATE (SoftwareDeliveryPerformance:Construct {
//     name: 'Software Delivery Performance'
// })-[:MEASURED_BY]->(LeadTime:Measure {
//     name: 'Lead Time'
// })
// CREATE (SoftwareDeliveryPerformance)-[:MEASURED_BY]->(ReleaseFrequency:Measure {
//     name: 'Release Frequency'
// })
// CREATE (SoftwareDeliveryPerformance)-[:MEASURED_BY]->(MeanTimeToRecovery:Measure {
//     name: 'MTTR'
// })
// CREATE (SoftwareDeliveryPerformance)-[:PREDICTS]->(OrganisationalPerformance:Construct {
//     name: 'Organisational Performance'
// })
// CREATE (SoftwareDeliveryPerformance)-[:PREDICTS]->(NonCommercialPerformance:Construct {
//     name: 'Non-Commercial Performance'
// })
// CREATE (Identity:Construct {
//     name: 'Identity'
// })-[:PREDICTS]->(OrganisationalPerformance)
// CREATE (JobSatisfaction:Construct {
//     name: 'Job Satisfaction'
// })-[:PREDICTS]->(OrganisationalPerformance)
// CREATE (LeanProductDevelopment:Construct {
//     name: 'Job Satisfaction'
// })-[:PREDICTS]->(OrganisationalPerformance)

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
    name: 'Visualize'
})

CREATE (VZ0_1:SpecificPractice {
    name: 'Visualize an individual\\’s work by means of a personal kanban board.'
})-[:APPLIES_AT]->(ML0)
CREATE (VZ0_2:SpecificPractice {
    name: 'Visualize basic work item related information on a ticket.'
})-[:APPLIES_AT]->(ML0)

CREATE (VZ0_1)-[:SPECIALIZATION]->(VZ)
CREATE (VZ0_2)-[:SPECIALIZATION]->(VZ)

CREATE (VZ1_1:SpecificPractice {
    name: 'Visualize work for several individuals by means of an aggregated personal kanban board.'
})-[:APPLIES_AT]->(ML1)
CREATE (VZ1_2:SpecificPractice {
    name: 'Visualize the work carried out by a team by means of a team kanban board.'
})-[:APPLIES_AT]->(ML1)
CREATE (VZ1_3:SpecificPractice {
    name: 'Use avatars to visualize an individual’s workload.'
})-[:APPLIES_AT]->(ML1)
CREATE (VZ1_4:SpecificPractice {
    name: 'Visualize initial policies.'
})-[:APPLIES_AT]->(ML1)
CREATE (VZ1_5:SpecificPractice {
    name: 'Visualize teamwork by means of an emergent workflow kanban board.'
})-[:APPLIES_AT]->(ML1)

CREATE (VZ1_1)-[:SPECIALIZATION]->(VZ)
CREATE (VZ1_2)-[:SPECIALIZATION]->(VZ)
CREATE (VZ1_3)-[:SPECIALIZATION]->(VZ)
CREATE (VZ1_4)-[:SPECIALIZATION]->(VZ)
CREATE (VZ1_5)-[:SPECIALIZATION]->(VZ)

CREATE (VZ2_1:SpecificPractice {
    name: 'Visualize work items by means of a delivery kanban board with per- person WIP limits.'
})-[:APPLIES_AT]->(ML2)
CREATE (VZ2_2:SpecificPractice {
    name: 'Visualize work types by means of card colors or board rows.'
})-[:APPLIES_AT]->(ML2)
CREATE (VZ2_3:SpecificPractice {
    name:  'Visualize blocked work items.'
})-[:APPLIES_AT]->(ML2)
CREATE (VZ2_4:SpecificPractice {
    name:  'Visualize development of options by means of a discovery kanban board.'
})-[:APPLIES_AT]->(ML2)
CREATE (VZ2_5:SpecificPractice {
    name:  'Visualize individual workload on a discovery kanban board by means of per-person WIP limits, potentially implemented using avatars.'
})-[:APPLIES_AT]->(ML2)
CREATE (VZ2_6:SpecificPractice {
    name:  'Visualize basic policies.'
})-[:APPLIES_AT]->(ML2)

CREATE (VZ2_7:SpecificPractice {
    name:  'Ticket design: Visualize concurrent or unordered activities with checkboxes.'
})-[:APPLIES_AT]->(ML2)
CREATE (VZ2_8:SpecificPractice {
    name:  'Ticket design: Visualize concurrent activities performed by specialist teams using partial rows.'
})-[:APPLIES_AT]->(ML2)
CREATE (VZ2_9:SpecificPractice {
    name:  'Board design: Visualize sequential activities where no dependency or preferred sequence exists using rows or vertical spaces.'
})-[:APPLIES_AT]->(ML2)
CREATE (VZ2_10:SpecificPractice {
    name:  'Visualize defects and other rework types.'
})-[:APPLIES_AT]->(ML2)
CREATE (VZ2_11:SpecificPractice {
    name:  'Use CONWIP with an emergent workflow delivery kanban board to provide workflow-level relief from overburdening and basic mechanics of a pull system, with separate replenishment and delivery cadences.'
})-[:APPLIES_AT]->(ML2)
CREATE (VZ2_12:SpecificPractice {
    name:  'Visualize workflow by means of enhanced discovery/delivery boards.'
})-[:APPLIES_AT]->(ML2)
CREATE (VZ2_13:SpecificPractice {
    name:  'Visualize project progress on a portfolio kanban board.'
})-[:APPLIES_AT]->(ML2)

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


CREATE (VZ3_1:SpecificPractice {
    name:  'Visualize “ready to commit” status, also known as “ready to pull.”'
})-[:APPLIES_AT]->(ML3)
CREATE (VZ3_2:SpecificPractice {
    name:  'Visualize “ready to pull” criteria, also known as “definition of ready,” or “entry criteria.”'
})-[:APPLIES_AT]->(ML3)
CREATE (VZ3_3:SpecificPractice {
    name:  'Visualize workflow and teamwork items by means of aggregated team kanban board.'
})-[:APPLIES_AT]->(ML3)
CREATE (VZ3_4:SpecificPractice {
    name:  'Visualize project work items on a two-tiered project kanban board.'
})-[:APPLIES_AT]->(ML3)
CREATE (VZ3_5:SpecificPractice {
    name:  'Visualize parent–child and peer–peer dependencies.'
})-[:APPLIES_AT]->(ML3)
CREATE (VZ3_6:SpecificPractice {
    name:  'Use a parking lot to visualize dependent work requests of another service or system currently waiting or blocked.'
})-[:APPLIES_AT]->(ML3)
CREATE (VZ3_7:SpecificPractice {
    name:  'Visualize upstream options by means of an upstream/discovery kanban board.'
})-[:APPLIES_AT]->(ML3)
CREATE (VZ3_8:SpecificPractice {
    name:  'Visualize discarded options using a bin on an upstream/discovery kanban board.'
})-[:APPLIES_AT]->(ML3)
CREATE (VZ3_9:SpecificPractice {
    name:  'Visualize replenishment signals.'
})-[:APPLIES_AT]->(ML3)
CREATE (VZ3_10:SpecificPractice {
    name:  'Visualize pull signals.'
})-[:APPLIES_AT]->(ML3)
CREATE (VZ3_11:SpecificPractice {
    name:  'Visualize pull criteria (also known as “pull policies,” “definition of ready,” or “exit criteria”).'
})-[:APPLIES_AT]->(ML3)
CREATE (VZ3_12:SpecificPractice {
    name:  'Visualize available capacity.'
})-[:APPLIES_AT]->(ML3)
CREATE (VZ3_13:SpecificPractice {
    name:  'Visualize work item aging.'
})-[:APPLIES_AT]->(ML3)
CREATE (VZ3_14:SpecificPractice {
    name:  'Visualize target date or SLA.'
})-[:APPLIES_AT]->(ML3)
CREATE (VZ3_15:SpecificPractice {
    name:  'Visualize failure demand versus value demand.'
})-[:APPLIES_AT]->(ML3)
CREATE (VZ3_16:SpecificPractice {
    name:  'Visualize aborted work.'
})-[:APPLIES_AT]->(ML3)
CREATE (VZ3_17:SpecificPractice {
    name:  'Visualize class of service using ticket colors, board rows, or ticket decorators.'
})-[:APPLIES_AT]->(ML3)
CREATE (VZ3_18:SpecificPractice {
    name:  'Use Earned Value portfolio kanban board to visualize project progress and schedule or budget risk.'
})-[:APPLIES_AT]->(ML3)

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

CREATE (VZ4_1:SpecificPractice {
    name:  'Visualize local cycle time.'
})-[:APPLIES_AT]->(ML4)
CREATE (VZ4_2:SpecificPractice {
    name:  'Use ticket decorators to indicate risks.'
})-[:APPLIES_AT]->(ML4)
CREATE (VZ4_3:SpecificPractice {
    name:  'Visualize risk classes with different swim lanes'
})-[:APPLIES_AT]->(ML4)
CREATE (VZ4_4:SpecificPractice {
    name:  'Visualize split-and-merge workflows.'
})-[:APPLIES_AT]->(ML4)
CREATE (VZ4_5:SpecificPractice {
    name:  'Visualize WIP limits on dependencies parking lot.'
})-[:APPLIES_AT]->(ML4)
CREATE (VZ4_6:SpecificPractice {
    name:  'Visualize waiting time in dependencies parking lot.'
})-[:APPLIES_AT]->(ML4)
CREATE (VZ4_7:SpecificPractice {
    name:  'Visualize SLA exceeded in dependencies parking lot.'
})-[:APPLIES_AT]->(ML4)

CREATE (VZ4_1)-[:SPECIALIZATION]->(VZ)
CREATE (VZ4_2)-[:SPECIALIZATION]->(VZ)
CREATE (VZ4_3)-[:SPECIALIZATION]->(VZ)
CREATE (VZ4_4)-[:SPECIALIZATION]->(VZ)
CREATE (VZ4_5)-[:SPECIALIZATION]->(VZ)
CREATE (VZ4_6)-[:SPECIALIZATION]->(VZ)
CREATE (VZ4_7)-[:SPECIALIZATION]->(VZ)

CREATE(VZ5_1:SpecificPractice {
    name: 'Visualize fixed teams and floating workers (shared resources) across aggregated services.'
})-[:APPLIES_AT]->(ML5)

CREATE(VZ5_1)-[:SPECIALIZATION]->(VZ)

CREATE (KMM)-[:PRACTICE]->(VZ)