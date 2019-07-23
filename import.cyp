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