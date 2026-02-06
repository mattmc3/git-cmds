#
# git-cmds: extra commands for git
# version: 1.0.1
#

0=${(%):-%N}
path+=(${0:A:h}/bin)

clone() {
  local dest rc
  dest="$(git cloner "$@")"
  rc=$?
  if (( rc == 150 )); then
    printf '%s\n' "Already cloned. Taking you there." >&2
  elif (( rc != 0 )); then
    return rc
  fi
  [[ -d "$dest" ]] && cd "$dest"
}
