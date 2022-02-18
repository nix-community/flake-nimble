{
  description = ''Set implementation of disjoint intervals'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."intervalsets-master".type = "github";
  inputs."intervalsets-master".owner = "riinr";
  inputs."intervalsets-master".repo = "flake-nimble";
  inputs."intervalsets-master".ref = "flake-pinning";
  inputs."intervalsets-master".dir = "nimpkgs/i/intervalsets/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}