ensure_ssh_agent_started

if test -n "$SSH_AGENT_PID"
  # Add keys if there are none added already.
  if not ssh-add -l > /dev/null
    echo "ssh-add..."
    ssh-add
  end
end
