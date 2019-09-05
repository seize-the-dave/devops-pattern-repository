#! /bin/sh -x

export CYPHER_LINT_PACKAGE="cleishm/neo4j/cypher-lint"

if brew ls --versions $CYPHER_LINT_PACKAGE > /dev/null; then
  echo $CYPHER_LINT_PACKAGE " is already installed"
else
  brew install $CYPHER_LINT_PACKAGE
fi

cypher-lint < import.cyp

exit $?