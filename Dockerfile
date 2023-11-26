FROM hashicorp/terraform:1.6.4

LABEL repository="https://github.com/SoaB1/terraform-pr-commenter" \
    homepage="https://github.com/SoaB1/terraform-pr-commenter" \
    maintainer="SoaB1" \
    com.github.actions.name="Terraform PR Commenter" \
    com.github.actions.description="Adds opinionated comments to a PR from Terraform fmt/init/plan output" \
    com.github.actions.icon="git-pull-request" \
    com.github.actions.color="purple"

RUN apk add --no-cache -q \
    bash \
    curl \
    jq && \
    apk upgrade --no-cache -q curl

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
