send_completions() {
  echo $'#!/usr/bin/env bash'
  echo $''
  echo $'# This bash completions script was generated by'
  echo $'# completely (https://github.com/dannyben/completely)'
  echo $'# Modifying it manually is not recommended'
  echo $'_luthor_completions() {'
  echo $'  local cur=${COMP_WORDS[COMP_CWORD]}'
  echo $'  local comp_line="${COMP_WORDS[*]:1}"'
  echo $''
  echo $'  case "$comp_line" in'
  echo $'    \'doctor\'*) COMPREPLY=($(compgen -W "--help -h" -- "$cur")) ;;'
  echo $'    \'delete\'*) COMPREPLY=($(compgen -W "--help -h" -- "$cur")) ;;'
  echo $'    \'build\'*) COMPREPLY=($(compgen -W "--help -h" -- "$cur")) ;;'
  echo $'    \'shell\'*) COMPREPLY=($(compgen -W "--help -h" -- "$cur")) ;;'
  echo $'    \'list\'*) COMPREPLY=($(compgen -W "--help -h" -- "$cur")) ;;'
  echo $'    \'stop\'*) COMPREPLY=($(compgen -W "--help -h" -- "$cur")) ;;'
  echo $'    \'run\'*) COMPREPLY=($(compgen -W "--help -h" -- "$cur")) ;;'
  echo $'    \'\'*) COMPREPLY=($(compgen -W "--help --version -h -v build delete doctor list run shell stop" -- "$cur")) ;;'
  echo $'  esac'
  echo $'}'
  echo $''
  echo $'complete -F _luthor_completions luthor'
}