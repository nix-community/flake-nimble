{
  description = ''Sparkline library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sparkline-master".type = "github";
  inputs."sparkline-master".owner = "riinr";
  inputs."sparkline-master".repo = "flake-nimble";
  inputs."sparkline-master".ref = "flake-pinning";
  inputs."sparkline-master".dir = "nimpkgs/s/sparkline/master";
  inputs."sparkline-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sparkline-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}