# claude --dangerously-skip-permissions
alias cc="claude"


# Function to unset DeepSeek environment variables
unset_ds() {
  unset ANTHROPIC_BASE_URL
  unset ANTHROPIC_AUTH_TOKEN
  unset ANTHROPIC_MODEL
  unset ANTHROPIC_SMALL_FAST_MODEL
  echo "DeepSeek environment variables unset"
}

# Function to set DeepSeek environment variables
set_ds() {
  export ANTHROPIC_BASE_URL=https://api.deepseek.com/anthropic
  export ANTHROPIC_AUTH_TOKEN=${DEEPSEEK_API_KEY}
  export ANTHROPIC_MODEL=deepseek-chat
  export ANTHROPIC_SMALL_FAST_MODEL=deepseek-chat
  export CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=1
  echo "DeepSeek environment variables set"
}

