{
  description = ''mmap-persistent SymSpell spell checking algorithm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."suggest-master".type = "github";
  inputs."suggest-master".owner = "riinr";
  inputs."suggest-master".repo = "flake-nimble";
  inputs."suggest-master".ref = "flake-pinning";
  inputs."suggest-master".dir = "nimpkgs/s/suggest/master";
  inputs."suggest-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suggest-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."suggest-v1_0".type = "github";
  inputs."suggest-v1_0".owner = "riinr";
  inputs."suggest-v1_0".repo = "flake-nimble";
  inputs."suggest-v1_0".ref = "flake-pinning";
  inputs."suggest-v1_0".dir = "nimpkgs/s/suggest/v1_0";
  inputs."suggest-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suggest-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."suggest-v1_1".type = "github";
  inputs."suggest-v1_1".owner = "riinr";
  inputs."suggest-v1_1".repo = "flake-nimble";
  inputs."suggest-v1_1".ref = "flake-pinning";
  inputs."suggest-v1_1".dir = "nimpkgs/s/suggest/v1_1";
  inputs."suggest-v1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suggest-v1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}