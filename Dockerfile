FROM debian:bookworm-slim as base
ENV PATH=$PATH:/root/.bun/bin
RUN apt update -y && apt install curl unzip -y

FROM base
RUN curl -fsSL https://bun.sh/install | bash
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip && rm awscliv2.zip
RUN ./aws/install && rm -rf awscliv2