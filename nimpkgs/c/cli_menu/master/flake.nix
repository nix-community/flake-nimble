{
  description = ''A library to create interactive commandline menus without writing boilerplate code.'';
  inputs.src-cli_menu-master.flake = false;
  inputs.src-cli_menu-master.type = "github";
  inputs.src-cli_menu-master.owner = "MnlPhlp";
  inputs.src-cli_menu-master.repo = "cli_menu";
  inputs.src-cli_menu-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-cli_menu-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cli_menu-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cli_menu-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}