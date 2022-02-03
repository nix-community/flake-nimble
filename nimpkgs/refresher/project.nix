{
  files.cmds.nimble-unwrapped = true;
  files.cmds.nim-unwrapped = true;
  files.cmds.yj = true;
  files.cmds.jq = true;
  files.cmds.git = true;
  files.cmds.mercurial = true;
  files.alias.update-pkg-of-name = ''
    curl -s "https://raw.githubusercontent.com/nim-lang/packages/master/packages.json"|jq '.[]|select(.name == "'$1'")'|./updatePkg.nims
  '';
  files.alias.clean-head-cache = ''
    rm -f ../**/master/meta.json
    rm -f ../**/main/meta.json
    rm -f ../**/unstable/meta.json
    rm -f ../**/develop/meta.json
    rm -f ../**/staging/meta.json
  '';
  files.alias.clean-cache = ''rm -f ../**/meta.json'';
}
