{
  description = ''FNV-1 and FNV-1a non-cryptographic hash functions (documentation hosted at: http://ryuk.ooo/nimdocs/fnv/fnv.html)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fnv-master".type = "github";
  inputs."fnv-master".owner = "riinr";
  inputs."fnv-master".repo = "flake-nimble";
  inputs."fnv-master".ref = "flake-pinning";
  inputs."fnv-master".dir = "nimpkgs/f/fnv/master";
  inputs."fnv-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fnv-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."fnv-0_1_0".type = "github";
  inputs."fnv-0_1_0".owner = "riinr";
  inputs."fnv-0_1_0".repo = "flake-nimble";
  inputs."fnv-0_1_0".ref = "flake-pinning";
  inputs."fnv-0_1_0".dir = "nimpkgs/f/fnv/0_1_0";
  inputs."fnv-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fnv-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}