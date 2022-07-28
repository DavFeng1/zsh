# https://github.com/99designs/aws-vault/issues/890
export AWS_VAULT_BACKEND=file



# Devops tools
export KUBECONFIG_DIR="$HOME/kubeconfig" # The folder where your kubeconfig files will live (will be created in the next step)

export DEVOPS_TOOLS_DIR="/home/dfeng/documents/work/devops-tools"

export ENABLE_CUSTOM_PROMPT="0" # Optional: Adds current kctxt and arch to prompt: [arm64] tim@Tims-MacBook-Pro devops-tools [prod]

export QA_DB_REMOTE_PORT=15432
export QA_REPORTING_DB_REMOTE_PORT=15433

export QA2_DB_REMOTE_PORT=15432
export QA2_REPORTING_DB_REMOTE_PORT=15433

source $DEVOPS_TOOLS_DIR/toolsrc
