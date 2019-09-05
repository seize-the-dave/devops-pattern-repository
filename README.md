# Agile & DevOps Pattern Repository

This project is a pattern repository and knowledge graph of Agile and DevOps practices and capabilities.  The fundamental goal of this project is to be able to look up "smells" or metrics in the repository and find suggested practice patterns to overcome the smells or improve the metrics.

## Other Pattern Repositories

- [WikiWikiWeb](http://wiki.c2.com/?WelcomeVisitors)
- [Scrum PLoP](https://sites.google.com/a/scrumplop.org/published-patterns/home)

## Getting Started

- Install [Neo4J Desktop](https://neo4j.com/developer/neo4j-desktop/)
- Paste [import.cyp](/import.cyp) into Neo4J Browser

## Building

- On MacOS, run `build-macos.sh` to lint the cypher file (`import.cyp`)

## Navigating the Graph

Most root nodes in our graph are of paradigms of type `Model`, `Framework` or `Method`.  The distinction between these node types is based on the level of rigor or practical advice: a `Model` is more abstract than a `Framework`, which is in turn more abstract than a `Method`.  This is best illustrated as the difference between Agile (a `Model`), Scrum (a `Framework`) and Extreme Programming (a `Method`).

```cypher
MATCH (n) WHERE n:Model OR n:Framework OR n:Method RETURN (n)
```

Each of these three nodes (especially `Model`s and `Framework`s) are typically guided by `Principal`s.

```cypher
MATCH (n)-[:GUIDED_BY]->(p:Principle) WHERE n:Model OR n:Framework OR n:Method RETURN (n), (p)
```

They also contain core `Practice`s.

```cypher
MATCH (n)<-[:PRACTICE_OF]->(p:Practice) WHERE n:Model OR n:Framework OR n:Method RETURN (n), (p)
```

### Roles

Who does what within the frameworks and methods?

```cypher
MATCH (n)<-[:ROLE_OF]-(r:Role) RETURN (n), (r)
```

### Meetings, Meetings, Meetings

Most of the frameworks and methods have plenty of meetings:

```cypher
MATCH (n)<-[:MEETING_OF]-(e:Event) RETURN (n), (e)
```

### Artifacts of Paradigms

The artifacts of certain paradigms -- such as the Sprint Backlog in Scrum -- can be found in the graph:

```cypher
MATCH (n)<-[:ARTIFACT_OF]-(a:Artifact) RETURN (n), (a)
```

### Sources of Information

The following query will show you all the `Book` and `Link`s cited for any node in the graph:

```cypher
MATCH (n)-[:DESCRIBED_BY]->(r) WHERE r:Book OR r:Link RETURN (n), (r)
```

If you want to know who wrote a particular `Book`, that information is available too:

```cypher
MATCH (n)-[:DESCRIBED_BY]->(r)-[:WRITTEN_BY]->(p:Person) WHERE r:Book OR r:Link RETURN (n), (r), (p)
```

Additionally, you can see if there is an `Activity` (e.g. a workshop) defined for the thing you're trying to demonstrate:

```cypher
MATCH (n)<-[:DEMONSTRATES]-(a:Activity) RETURN (n), (a)
```

### Measurements

The graph contains a bunch of `Measure`s:

```cypher
MATCH (n:Measure) RETURN (n)
```

### A Note on Complexity

The above gives a reasonable introduction to the top tier of the graph, but the graph is fractal.  As an example, the graph contains a `Method` (Kanban), the adoption of which is measured by a `Model` (the Kanban Maturity model).  It's currently the only relationship of this type in the graph:

```cypher
MATCH (m)<-[:MEASUREMENT_OF]-(n) WHERE (m:Model OR m:Framework OR m:Method) AND (n:Model OR n:Framework OR n:Method) RETURN (m), (n)
```

## To Do

Most of the work needed revolves around the questions we want to answer.  For example:

- What practices can I use to improve a particular metric?
- What activities can I use to demonstrate a particular principle or set of principles?
- What resources are available to learn more about a particular practice, method or framework?
- Get rid of `:RELATES_TO` relationships, which are not descriptive
