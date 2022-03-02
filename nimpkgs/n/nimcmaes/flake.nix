{
  description = ''Nim CMAES library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimcmaes-master".type = "github";
  inputs."nimcmaes-master".owner = "riinr";
  inputs."nimcmaes-master".repo = "flake-nimble";
  inputs."nimcmaes-master".ref = "flake-pinning";
  inputs."nimcmaes-master".dir = "nimpkgs/n/nimcmaes/master";
  inputs."nimcmaes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcmaes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}