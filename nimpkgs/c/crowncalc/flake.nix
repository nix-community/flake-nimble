{
  description = ''Basic calculator in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."crowncalc-master".type = "github";
  inputs."crowncalc-master".owner = "riinr";
  inputs."crowncalc-master".repo = "flake-nimble";
  inputs."crowncalc-master".ref = "flake-pinning";
  inputs."crowncalc-master".dir = "nimpkgs/c/crowncalc/master";
  inputs."crowncalc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crowncalc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}