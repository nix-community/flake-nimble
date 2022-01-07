{
  imports = [ ./nim-pkgs-config.nix ];
  nim-pkgs = builtins.fromJSON (builtins.readFile ./packages.json);

  files.cmds.nimble-unwrapped = true;
  files.cmds.nim-unwrapped = true;
  files.cmds.yj = true;
  files.cmds.git = true;
  files.alias.pkgs-list = ''
    curl https://raw.githubusercontent.com/nim-lang/packages/master/packages.json
  '';
  files.alias.update-pkgs-json = ''
    pkgs-list > $(git rev-parse --show-toplevel)/nimpkgs/packages.json
  '';
}
