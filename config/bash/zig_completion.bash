# This file is generated by [bash-completor](https://github.com/adoyle-h/bash-completor/tree/v0.1.0). Do not modify it manually.
#
# [Usage]
# Put "source _zig.bash" in your bashrc.
#
# If you want to debug the completion.
# Search '# Uncomment this line for debug' line in this file.
#
# [Update Script]
# bash-completor -c ./zig.completor.bash
#
# [Maintainers]
# ADoyle (adoyle.h@gmail.com)
#
# [Notice]
# Current no completions for zig commands: cc c++ lib

# shellcheck disable=2207
# editorconfig-checker-disable

_zig_comp_cmd_opts=( -h --help )


_zig_comp_subcmd_opts__fallback=( --help )

_zig_comp_subcmd_opts_ar=( --format --plugin= -h --help --output --rsp-quoting --thin --version -X32 -X64 -X32_64 -X @ )

_zig_comp_subcmd_opts_ast_check=( -h --help --color -t )

_zig_comp_subcmd_opts_build=( -p --prefix --prefix-exe-dir --prefix-include-dir --prefix-lib-dir --sysroot --search-prefix --libc --glibc-runtimes -h --help --color --verbose --prominent-compile-errors -fstage1 -fno-stage1 -fdarling -fno-darling -fqemu -fno-qemu -fwine -fno-wine -frosetta -fno-rosetta -fwasmtime -fno-wasmtime -freference-trace -fno-reference-trace -Dcpu= -Drelease-fast= -Drelease-safe= -Drelease-small= -Dtarget= --build-file --cache-dir --global-cache-dir --zig-lib-dir --debug-log --verbose-link --verbose-air --verbose-llvm-ir --verbose-cimport --verbose-cc --verbose-llvm-cpu-features )

_zig_comp_subcmd_opts_build_fallback=( @files )

_zig_comp_subcmd_opts_dlltool=( -D -d -f -k -l -m -S )

_zig_comp_subcmd_opts_fmt=( -h --help --color --stdin --check --ast-check --exclude )

_zig_comp_subcmd_opts_libc=( -h --help -target )

_zig_comp_subcmd_opts_ranlib=( -h --help -v --version -D -U )

_zig_comp_subcmd_opts_run=( -- -h --help --watch --color -femit-bin -fno-emit-bin -femit-asm -fno-emit-asm -femit-llvm-ir -fno-emit-llvm-ir -femit-llvm-bc -fno-emit-llvm-bc -femit-h -fno-emit-h -femit-docs -fno-emit-docs -femit-analysis -fno-emit-analysis -femit-implib -fno-emit-implib --show-builtin --cache-dir --global-cache-dir --zig-lib-dir --enable-cache -target -mcpu -mcmodel= -mred-zone -mno-red-zone -fomit-frame-pointer -fno-omit-frame-pointer -mexec-model= --name -O --pkg-begin --pkg-end --main-pkg-path -fPIC -fno-PIC -fPIE -fno-PIE -flto -fno-lto -fstack-check -fno-stack-check -fstack-protector -fno-stack-protector -fsanitize-c -fno-sanitize-c -fvalgrind -fno-valgrind -fsanitize-thread -fno-sanitize-thread -fdll-export-fns -fno-dll-export-fns -funwind-tables -fno-unwind-tables -fLLVM -fno-LLVM -fClang -fno-Clang -fstage1 -fno-stage1 -freference-trace -fno-reference-trace -fsingle-threaded -fno-single-threaded -fbuiltin -fno-builtin -ffunction-sections -fno-function-sections -fstrip -fno-strip -ofmt= -idirafter -isystem -I -D --libc -cflags -l --library -needed-l --needed-library -L --library-directory -T --script --version-script --dynamic-linker --sysroot --version --entry -fsoname -fno-soname -fLLD -fno-LLD -fcompiler-rt -fno-compiler-rt -rdynamic -rpath -feach-lib-rpath -fno-each-lib-rpath -fallow-shlib-undefined -fno-allow-shlib-undefined -fbuild-id -fno-build-id --eh-frame-hdr --emit-relocs -z -dynamic -static -Bsymbolic --compress-debug-sections= --gc-sections --no-gc-sections --subsystem --stack --image-base -weak-l -weak_library -framework -needed_framework -needed_library -weak_framework -F -install_name= --entitlements -pagezero_size -search_paths_first -search_dylibs_first -headerpad -headerpad_max_install_names -dead_strip -dead_strip_dylibs --import-memory --import-table --export-table --initial-memory= --max-memory= --shared-memory --global-base= --export= -ftime-report -fstack-report --verbose-link --verbose-cc --verbose-air --verbose-llvm-ir --verbose-cimport --verbose-llvm-cpu-features --debug-log --debug-compile-errors --debug-link-snapshot )

_zig_comp_subcmd_opts_test=( --test-filter --test-name-prefix --test-cmd --test-cmd-bin --test-evented-io --test-no-exec -h --help --watch --color -femit-bin -fno-emit-bin -femit-asm -fno-emit-asm -femit-llvm-ir -fno-emit-llvm-ir -femit-llvm-bc -fno-emit-llvm-bc -femit-h -fno-emit-h -femit-docs -fno-emit-docs -femit-analysis -fno-emit-analysis -femit-implib -fno-emit-implib --show-builtin --cache-dir --global-cache-dir --zig-lib-dir --enable-cache -target -mcpu -mcmodel= -mred-zone -mno-red-zone -fomit-frame-pointer -fno-omit-frame-pointer -mexec-model= --name -O --pkg-begin --pkg-end --main-pkg-path -fPIC -fno-PIC -fPIE -fno-PIE -flto -fno-lto -fstack-check -fno-stack-check -fstack-protector -fno-stack-protector -fsanitize-c -fno-sanitize-c -fvalgrind -fno-valgrind -fsanitize-thread -fno-sanitize-thread -fdll-export-fns -fno-dll-export-fns -funwind-tables -fno-unwind-tables -fLLVM -fno-LLVM -fClang -fno-Clang -fstage1 -fno-stage1 -freference-trace -fno-reference-trace -fsingle-threaded -fno-single-threaded -fbuiltin -fno-builtin -ffunction-sections -fno-function-sections -fstrip -fno-strip -ofmt= -idirafter -isystem -I -D --libc -cflags -l --library -needed-l --needed-library -L --library-directory -T --script --version-script --dynamic-linker --sysroot --version --entry -fsoname -fno-soname -fLLD -fno-LLD -fcompiler-rt -fno-compiler-rt -rdynamic -rpath -feach-lib-rpath -fno-each-lib-rpath -fallow-shlib-undefined -fno-allow-shlib-undefined -fbuild-id -fno-build-id --eh-frame-hdr --emit-relocs -z -dynamic -static -Bsymbolic --compress-debug-sections= --gc-sections --no-gc-sections --subsystem --stack --image-base -weak-l -weak_library -framework -needed_framework -needed_library -weak_framework -F -install_name= --entitlements -pagezero_size -search_paths_first -search_dylibs_first -headerpad -headerpad_max_install_names -dead_strip -dead_strip_dylibs --import-memory --import-table --export-table --initial-memory= --max-memory= --shared-memory --global-base= --export= -ftime-report -fstack-report --verbose-link --verbose-cc --verbose-air --verbose-llvm-ir --verbose-cimport --verbose-llvm-cpu-features --debug-log --debug-compile-errors --debug-link-snapshot )

declare -A _zig_comp_word_to_varname=([c++]="cpp" )
_zig_comp_util_get_varname ()
{
    local name=${1:-};
    local encoded=${_zig_comp_word_to_varname[$name]:-};
    if [[ -z ${encoded} ]]; then
        encoded=${name//[^a-zA-Z_]/_};
    fi;
    echo "${encoded}"
}

_zig_comp_reply_dirs ()
{
    local IFS=$'\n';
    compopt -o nospace -o filenames;
    COMPREPLY=($(compgen -A directory -- "$cur"))
}

_zig_comp_reply_files ()
{
    local IFS=$'\n';
    compopt -o nospace -o filenames;
    COMPREPLY=($(compgen -A file -- "$cur"))
}

_zig_comp_reply_files_in_pattern ()
{
    compopt -o nospace -o filenames;
    local path;
    while read -r path; do
        if [[ $path =~ $1 ]] || [[ -d $path ]]; then
            COMPREPLY+=("$path");
        fi;
    done < <(compgen -A file -- "$cur")
}

_zig_comp_reply_list ()
{
    local IFS=', ';
    local array_list="" array_name;
    for array_name in $@;
    do
        array_list="$array_list \${${array_name}[*]}";
    done;
    array_list="${array_list[*]:1}";
    IFS=$'\n'' ';
    eval "COMPREPLY=( \$(compgen -W \"$array_list\" -- \"\$cur\") )"
}

_zig_comp_reply_words ()
{
    local IFS=$'\n';
    COMPREPLY=($(IFS=', ' compgen -W "$*" -- "${cur#=}"))
}

_zig_comp_reply_set() {
  local IFS=', '
  local array_list="" array_name
  # shellcheck disable=2068
  for array_name in $@; do
    array_list="$array_list \${_zig_comp_var_${array_name}[*]}"
  done
  array_list="${array_list[*]:1}"

  IFS=$'\n'' '
  eval "COMPREPLY=( \$(compgen -W \"$array_list\" -- \"\$cur\") )"
}

_zig_comp_reply_zig_file() {
  _zig_comp_reply_files_in_pattern '\.(zig|zir|o|obj|lib|a|so|dll|dylib|tbd|s|S|c|cxx|cc|C|cpp|stub|m|mm|bc|cu)$'
}

_zig_comp_subcmds=( build init-exe init-lib ast-check build-exe build-lib build-obj fmt run test translate-c ar cc c++ dlltool lib ranlib env help libc targets version zen )

_zig_comp_equal_sign_subcmd_opts_build() {
  case "${1}=" in
    -Dcpu=)  ;;
    -Drelease-fast=)  ;;
    -Drelease-safe=)  ;;
    -Drelease-small=)  ;;
    -Dtarget=)  ;;
  esac
}

_zig_completions_build() {
  if [[ ${cur:0:1} == [-+] ]]; then
    # rely options of command
    _zig_comp_reply_list _zig_comp_subcmd_opts_build
    if [[ ${COMPREPLY[*]} =~ =$ ]]; then compopt -o nospace; fi
  elif [[ ${cur} == = ]]; then
    _zig_comp_equal_sign_subcmd_opts_build "$prev"
  elif [[ ${prev:0:1} == [-+] ]]; then
    case "${prev}" in
      # rely the value of command option
      -p) _zig_comp_reply_dirs ;;
      --prefix) _zig_comp_reply_dirs ;;
      --prefix-exe-dir) _zig_comp_reply_dirs ;;
      --prefix-include-dir) _zig_comp_reply_dirs ;;
      --prefix-lib-dir) _zig_comp_reply_dirs ;;
      --sysroot) _zig_comp_reply_dirs ;;
      --search-prefix) _zig_comp_reply_dirs ;;
      --color) _zig_comp_reply_words 'auto,off,on' ;;
      -freference-trace)  ;;
      --cache-dir) _zig_comp_reply_dirs ;;
      --global-cache-dir) _zig_comp_reply_dirs ;;
      --zig-lib-dir) _zig_comp_reply_dirs ;;
      --debug-log)  ;;
      *) _zig_comp_reply_files ;;
    esac
  elif [[ ${prev} == = ]]; then
    _zig_comp_equal_sign_subcmd_opts_build "${COMP_WORDS[$(( COMP_CWORD - 2 ))]}"
  else
    # rely the argument of command
    _zig_comp_reply_words 'install,uninstall,run,test'
  fi
}

_zig_completions_ast_check() {
  if [[ ${cur:0:1} == [-+] ]]; then
    # rely options of command
    _zig_comp_reply_list _zig_comp_subcmd_opts_ast_check
  elif [[ ${prev:0:1} == [-+] ]]; then
    case "${prev}" in
      # rely the value of command option
      --color) _zig_comp_reply_words 'auto,off,on' ;;
      *) _zig_comp_reply_zig_file ;;
    esac
  else
    # rely the argument of command
    _zig_comp_reply_zig_file
  fi
}

_zig_completions_fmt() {
  if [[ ${cur:0:1} == [-+] ]]; then
    # rely options of command
    _zig_comp_reply_list _zig_comp_subcmd_opts_fmt
  elif [[ ${prev:0:1} == [-+] ]]; then
    case "${prev}" in
      # rely the value of command option
      --color) _zig_comp_reply_words 'auto,off,on' ;;
      *) _zig_comp_reply_zig_file ;;
    esac
  else
    # rely the argument of command
    _zig_comp_reply_zig_file
  fi
}

_zig_comp_equal_sign_subcmd_opts_run() {
  case "${1}=" in
    -mcmodel=) _zig_comp_reply_words 'default,tiny,small,kernel,medium,large' ;;
    -mexec-model=)  ;;
    -ofmt=) _zig_comp_reply_words 'elf,c,wasm,coff,macho,spirv,plan9,hex,raw' ;;
    --compress-debug-sections=) _zig_comp_reply_words 'none,zlib' ;;
    -install_name=)  ;;
    --initial-memory=)  ;;
    --max-memory=)  ;;
    --global-base=)  ;;
    --export=)  ;;
  esac
}

_zig_completions_run() {
  if [[ $COMP_LINE == *' -- '* ]]; then
    # When current command line contains the "--" option, other options are forbidden.
    _zig_comp_reply_zig_file
  elif [[ ${cur:0:1} == [-+] ]]; then
    # rely options of command
    _zig_comp_reply_list _zig_comp_subcmd_opts_run
    if [[ ${COMPREPLY[*]} =~ =$ ]]; then compopt -o nospace; fi
  elif [[ ${cur} == = ]]; then
    _zig_comp_equal_sign_subcmd_opts_run "$prev"
  elif [[ ${prev:0:1} == [-+] ]]; then
    case "${prev}" in
      # rely the value of command option
      --color) _zig_comp_reply_words 'auto,off,on' ;;
      -femit-bin) _zig_comp_reply_files ;;
      -femit-asm) _zig_comp_reply_files ;;
      -femit-llvm-ir) _zig_comp_reply_files ;;
      -femit-llvm-bc) _zig_comp_reply_files ;;
      -femit-h) _zig_comp_reply_files ;;
      -femit-docs) _zig_comp_reply_dirs ;;
      -femit-analysis) _zig_comp_reply_files ;;
      -femit-implib) _zig_comp_reply_files ;;
      --cache-dir) _zig_comp_reply_dirs ;;
      --global-cache-dir) _zig_comp_reply_dirs ;;
      --zig-lib-dir) _zig_comp_reply_dirs ;;
      -target)  ;;
      -mcpu)  ;;
      -fomit-frame-pointer)  ;;
      --name)  ;;
      -O) _zig_comp_reply_words 'Debug,ReleaseFast,ReleaseSafe,ReleaseSmall' ;;
      --pkg-begin)  ;;
      --main-pkg-path) _zig_comp_reply_dirs ;;
      -idirafter) _zig_comp_reply_dirs ;;
      -isystem) _zig_comp_reply_dirs ;;
      -I) _zig_comp_reply_dirs ;;
      -cflags)  ;;
      -l) _zig_comp_reply_files ;;
      --library) _zig_comp_reply_files ;;
      -needed-l) _zig_comp_reply_files ;;
      --needed-library) _zig_comp_reply_files ;;
      -L) _zig_comp_reply_dirs ;;
      --library-directory) _zig_comp_reply_dirs ;;
      -T) _zig_comp_reply_files ;;
      --script) _zig_comp_reply_files ;;
      --version-script) _zig_comp_reply_files ;;
      --dynamic-linker) _zig_comp_reply_files ;;
      --sysroot) _zig_comp_reply_dirs ;;
      --version)  ;;
      --entry)  ;;
      -fsoname)  ;;
      -rpath) _zig_comp_reply_dirs ;;
      -z) _zig_comp_reply_words 'nodelete,notext,defs,origin,nocopyreloc,now,lazy,relro,norelro' ;;
      --subsystem)  ;;
      --stack)  ;;
      --image-base)  ;;
      -weak-l) _zig_comp_reply_files ;;
      -weak_library) _zig_comp_reply_files ;;
      -framework)  ;;
      -needed_framework)  ;;
      -needed_library) _zig_comp_reply_files ;;
      -weak_framework)  ;;
      -F) _zig_comp_reply_dirs ;;
      --entitlements) _zig_comp_reply_files ;;
      -pagezero_size)  ;;
      -headerpad)  ;;
      --debug-log)  ;;
      *) _zig_comp_reply_zig_file ;;
    esac
  elif [[ ${prev} == = ]]; then
    _zig_comp_equal_sign_subcmd_opts_run "${COMP_WORDS[$(( COMP_CWORD - 2 ))]}"
  else
    # rely the argument of command
    _zig_comp_reply_zig_file
  fi
}

_zig_comp_equal_sign_subcmd_opts_test() {
  case "${1}=" in
    -mcmodel=) _zig_comp_reply_words 'default,tiny,small,kernel,medium,large' ;;
    -mexec-model=)  ;;
    -ofmt=) _zig_comp_reply_words 'elf,c,wasm,coff,macho,spirv,plan9,hex,raw' ;;
    --compress-debug-sections=) _zig_comp_reply_words 'none,zlib' ;;
    -install_name=)  ;;
    --initial-memory=)  ;;
    --max-memory=)  ;;
    --global-base=)  ;;
    --export=)  ;;
  esac
}

_zig_completions_test() {
  if [[ ${cur:0:1} == [-+] ]]; then
    # rely options of command
    _zig_comp_reply_list _zig_comp_subcmd_opts_test
    if [[ ${COMPREPLY[*]} =~ =$ ]]; then compopt -o nospace; fi
  elif [[ ${cur} == = ]]; then
    _zig_comp_equal_sign_subcmd_opts_test "$prev"
  elif [[ ${prev:0:1} == [-+] ]]; then
    case "${prev}" in
      # rely the value of command option
      --test-filter)  ;;
      --test-name-prefix)  ;;
      --test-cmd)  ;;
      --color) _zig_comp_reply_words 'auto,off,on' ;;
      -femit-bin) _zig_comp_reply_files ;;
      -femit-asm) _zig_comp_reply_files ;;
      -femit-llvm-ir) _zig_comp_reply_files ;;
      -femit-llvm-bc) _zig_comp_reply_files ;;
      -femit-h) _zig_comp_reply_files ;;
      -femit-docs) _zig_comp_reply_dirs ;;
      -femit-analysis) _zig_comp_reply_files ;;
      -femit-implib) _zig_comp_reply_files ;;
      --cache-dir) _zig_comp_reply_dirs ;;
      --global-cache-dir) _zig_comp_reply_dirs ;;
      --zig-lib-dir) _zig_comp_reply_dirs ;;
      -target)  ;;
      -mcpu)  ;;
      -fomit-frame-pointer)  ;;
      --name)  ;;
      -O) _zig_comp_reply_words 'Debug,ReleaseFast,ReleaseSafe,ReleaseSmall' ;;
      --pkg-begin)  ;;
      --main-pkg-path) _zig_comp_reply_dirs ;;
      -idirafter) _zig_comp_reply_dirs ;;
      -isystem) _zig_comp_reply_dirs ;;
      -I) _zig_comp_reply_dirs ;;
      -cflags)  ;;
      -l) _zig_comp_reply_files ;;
      --library) _zig_comp_reply_files ;;
      -needed-l) _zig_comp_reply_files ;;
      --needed-library) _zig_comp_reply_files ;;
      -L) _zig_comp_reply_dirs ;;
      --library-directory) _zig_comp_reply_dirs ;;
      -T) _zig_comp_reply_files ;;
      --script) _zig_comp_reply_files ;;
      --version-script) _zig_comp_reply_files ;;
      --dynamic-linker) _zig_comp_reply_files ;;
      --sysroot) _zig_comp_reply_dirs ;;
      --version)  ;;
      --entry)  ;;
      -fsoname)  ;;
      -rpath) _zig_comp_reply_dirs ;;
      -z) _zig_comp_reply_words 'nodelete,notext,defs,origin,nocopyreloc,now,lazy,relro,norelro' ;;
      --subsystem)  ;;
      --stack)  ;;
      --image-base)  ;;
      -weak-l) _zig_comp_reply_files ;;
      -weak_library) _zig_comp_reply_files ;;
      -framework)  ;;
      -needed_framework)  ;;
      -needed_library) _zig_comp_reply_files ;;
      -weak_framework)  ;;
      -F) _zig_comp_reply_dirs ;;
      --entitlements) _zig_comp_reply_files ;;
      -pagezero_size)  ;;
      -headerpad)  ;;
      --debug-log)  ;;
      *) _zig_comp_reply_zig_file ;;
    esac
  elif [[ ${prev} == = ]]; then
    _zig_comp_equal_sign_subcmd_opts_test "${COMP_WORDS[$(( COMP_CWORD - 2 ))]}"
  else
    # rely the argument of command
    _zig_comp_reply_zig_file
  fi
}

_zig_comp_equal_sign_subcmd_opts_ar() {
  case "${1}=" in
    --plugin=)  ;;
  esac
}

_zig_completions_ar() {
  if [[ ${cur:0:1} == [-+] ]]; then
    # rely options of command
    _zig_comp_reply_list _zig_comp_subcmd_opts_ar
    if [[ ${COMPREPLY[*]} =~ =$ ]]; then compopt -o nospace; fi
  elif [[ ${cur} == = ]]; then
    _zig_comp_equal_sign_subcmd_opts_ar "$prev"
  elif [[ ${prev:0:1} == [-+] ]]; then
    case "${prev}" in
      # rely the value of command option
      --format) _zig_comp_reply_words 'default,gnu,darwin,bsd,bigarchive' ;;
      --rsp-quoting) _zig_comp_reply_words 'posix,windows' ;;
      -X)  ;;
      @) _zig_comp_reply_files ;;
      *) _zig_comp_reply_zig_file ;;
    esac
  elif [[ ${prev} == = ]]; then
    _zig_comp_equal_sign_subcmd_opts_ar "${COMP_WORDS[$(( COMP_CWORD - 2 ))]}"
  else
    # rely the argument of command
    _zig_comp_reply_zig_file
  fi
}

_zig_completions_dlltool() {
  if [[ ${cur:0:1} == [-+] ]]; then
    # rely options of command
    _zig_comp_reply_list _zig_comp_subcmd_opts_dlltool
  elif [[ ${prev:0:1} == [-+] ]]; then
    case "${prev}" in
      # rely the value of command option
      -D)  ;;
      -f)  ;;
      -l)  ;;
      -m)  ;;
      -S)  ;;
      *) _zig_comp_reply_files ;;
    esac
  else
    # rely the argument of command
    _zig_comp_reply_files
  fi
}

_zig_completions_ranlib() {
  if [[ ${cur:0:1} == [-+] ]]; then
    # rely options of command
    _zig_comp_reply_list _zig_comp_subcmd_opts_ranlib
  elif [[ ${prev:0:1} == [-+] ]]; then
    case "${prev}" in
      # rely the value of command option
      *) _zig_comp_reply_files ;;
    esac
  else
    # rely the argument of command
    _zig_comp_reply_files
  fi
}

_zig_completions_libc() {
  if [[ ${cur:0:1} == [-+] ]]; then
    # rely options of command
    _zig_comp_reply_list _zig_comp_subcmd_opts_libc
  elif [[ ${prev:0:1} == [-+] ]]; then
    case "${prev}" in
      # rely the value of command option
      -target)  ;;
      *) _zig_comp_reply_zig_file ;;
    esac
  else
    # rely the argument of command
    _zig_comp_reply_zig_file
  fi
}
_zig_completions_build_lib() { _zig_completions_run; }
_zig_completions_build_translate_c() { _zig_completions_run; }
_zig_completions_build_exe() { _zig_completions_run; }
_zig_completions_build_obj() { _zig_completions_run; }

_zig_completions__fallback() {
  if [[ ${cur:0:1} == [-+] ]]; then
    # rely options of command
    _zig_comp_reply_list _zig_comp_subcmd_opts__fallback
  elif [[ ${prev:0:1} == [-+] ]]; then
    case "${prev}" in
      # rely the value of command option
      *) _zig_comp_reply_files ;;
    esac
  else
    # rely the argument of command
    _zig_comp_reply_files
  fi
}

_zig_completions() {
  COMPREPLY=()
  local cur=${COMP_WORDS[COMP_CWORD]}
  local prev=${COMP_WORDS[COMP_CWORD-1]}

  # Uncomment this line for debug
  # echo "[COMP_CWORD:$COMP_CWORD][cur:$cur][prev:$prev][WORD_COUNT:${#COMP_WORDS[*]}][COMP_WORDS:${COMP_WORDS[*]}]" >> bash-debug.log

  if (( COMP_CWORD > 1 )); then
    # Enter the subcmd completion
    local subcmd_varname
    subcmd_varname="$(_zig_comp_util_get_varname "${COMP_WORDS[1]}")"
    if type "_zig_completions_$subcmd_varname" &>/dev/null; then
      "_zig_completions_$subcmd_varname"
    else
      # If subcmd completion function not defined, use the fallback
      "_zig_completions__fallback"
    fi
    return 0
  fi

  # Enter the cmd completion
  if [[ ${cur:0:1} == [-+] ]]; then
    # rely options of command
    _zig_comp_reply_list _zig_comp_cmd_opts
  elif [[ ${prev:0:1} == [-+] ]]; then
    case "${prev}" in
      # rely the value of command option
      *) _zig_comp_reply_files ;;
    esac
  else
    # rely the argument of command
    _zig_comp_reply_list _zig_comp_subcmds
  fi
}

complete -F _zig_completions -o bashdefault zig
# vi: sw=2 ts=2

