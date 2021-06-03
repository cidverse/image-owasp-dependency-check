# Base
FROM owasp/dependency-check:6.1.6

# Installation
USER root
RUN ln -s /usr/share/dependency-check/bin/dependency-check.sh /usr/local/bin/dependency-check &&\
	dependency-check --enableExperimental --updateonly
USER ${UID}

# Execution
ENTRYPOINT []
