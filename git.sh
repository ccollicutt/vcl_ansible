git filter-branch --force --index-filter \
  'git rm --cached --ignore-unmatch group_vars/example_all' \
    --prune-empty --tag-name-filter cat -- --all
