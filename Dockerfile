FROM debian:buster-slim

ARG GITHUB_RUNNER_VERSION="2.165.2"
v2.296.1
ENV RUNNER_NAME "runner"
ENV GITHUB_PAT "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"
ENV GITHUB_ORG "ECSTC"
ENV RUNNER_WORKDIR "_work"

RUN apt-get update \
    && apt-get install -y \
        curl \
        sudo \
        git \
        jq \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && useradd -m github \
    && usermod -aG sudo github \
    && echo "%sudo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER github
WORKDIR /home/github

RUN curl -o actions-runner-linux-x64-2.296.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.296.1/actions-runner-linux-x64-2.296.1.tar.gz
RUN tar xzf ./actions-runner-linux-x64-2.296.1.tar.gz
COPY --chown=github:github entrypoint.sh ./entrypoint.sh
RUN sudo chmod u+x ./entrypoint.sh

ENTRYPOINT ["/home/github/entrypoint.sh"]