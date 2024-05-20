#!/bin/bash

gh repo list lucasaugustodeveloper --limit 200 | while read -r repo _; do
  gh repo clone "$repo" "$HOME/Repositories/$repo"
done

