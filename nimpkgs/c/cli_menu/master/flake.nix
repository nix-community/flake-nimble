{
  description = ''A library to create interactive commandline menus without writing boilerplate code.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-cli_menu-master.flake = false;
  inputs.src-cli_menu-master.type = "github";
  inputs.src-cli_menu-master.owner = "MnlPhlp";
  inputs.src-cli_menu-master.repo = "cli_menu";
  inputs.src-cli_menu-master.ref = "refs/heads/master";
  inputs.src-cli_menu-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cli_menu-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cli_menu-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cli_menu-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}