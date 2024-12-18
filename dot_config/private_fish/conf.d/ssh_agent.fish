ensure_ssh_agent_started

# Add keys if there are none added already.
if not ssh-add -l > /dev/null
  ssh-add
end
