{
  description = ''Calculation caching library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."kashae-master".type = "github";
  inputs."kashae-master".owner = "riinr";
  inputs."kashae-master".repo = "flake-nimble";
  inputs."kashae-master".ref = "flake-pinning";
  inputs."kashae-master".dir = "nimpkgs/k/kashae/master";
  inputs."kashae-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kashae-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}