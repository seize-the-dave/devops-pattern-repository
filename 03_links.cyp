// KMM -> Accelerate
MATCH (n:Practice), (m:Capability)
WHERE (n.code = 'VZ' AND m.name = 'Make the flow of work visible through the value stream')
CREATE (m)-[:REALIZED_BY]->(n)

MATCH (n:Practice), (m:Capability)
WHERE (n.code = 'LW' AND m.name = 'Improve procesess and manage work with work-in-progress limits')
CREATE (m)-[:REALIZED_BY]->(n)

MATCH (n:Practice), (m:Capability)
WHERE (n.code = 'IE' AND m.name = 'Improve procesess and manage work with work-in-progress limits')
CREATE (m)-[:REALIZED_BY]->(n)

MATCH (n:Practice), (m:Capability)
WHERE (n.code = 'IE' AND m.name = 'Foster and enable team experimentation')
CREATE (m)-[:REALIZED_BY]->(n)