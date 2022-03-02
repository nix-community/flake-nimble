{
  description = ''A library to create interactive commandline menus without writing boilerplate code.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."cli_menu-master".type = "github";
  inputs."cli_menu-master".owner = "riinr";
  inputs."cli_menu-master".repo = "flake-nimble";
  inputs."cli_menu-master".ref = "flake-pinning";
  inputs."cli_menu-master".dir = "nimpkgs/c/cli_menu/master";
  inputs."cli_menu-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cli_menu-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}