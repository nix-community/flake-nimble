{
  description = ''ski is library for SKI combinator.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ski-master".type = "github";
  inputs."ski-master".owner = "riinr";
  inputs."ski-master".repo = "flake-nimble";
  inputs."ski-master".ref = "flake-pinning";
  inputs."ski-master".dir = "nimpkgs/s/ski/master";
  inputs."ski-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ski-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}