{
  description = ''Rain simulation in your terminal'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rain-master".type = "github";
  inputs."rain-master".owner = "riinr";
  inputs."rain-master".repo = "flake-nimble";
  inputs."rain-master".ref = "flake-pinning";
  inputs."rain-master".dir = "nimpkgs/r/rain/master";
  inputs."rain-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rain-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}