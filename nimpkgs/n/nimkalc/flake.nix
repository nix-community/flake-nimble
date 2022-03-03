{
  description = ''An advanced parsing library for mathematical expressions and equations'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimkalc-main".type = "github";
  inputs."nimkalc-main".owner = "riinr";
  inputs."nimkalc-main".repo = "flake-nimble";
  inputs."nimkalc-main".ref = "flake-pinning";
  inputs."nimkalc-main".dir = "nimpkgs/n/nimkalc/main";
  inputs."nimkalc-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimkalc-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimkalc-master".type = "github";
  inputs."nimkalc-master".owner = "riinr";
  inputs."nimkalc-master".repo = "flake-nimble";
  inputs."nimkalc-master".ref = "flake-pinning";
  inputs."nimkalc-master".dir = "nimpkgs/n/nimkalc/master";
  inputs."nimkalc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimkalc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}