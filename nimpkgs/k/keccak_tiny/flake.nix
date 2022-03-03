{
  description = ''A wrapper for the keccak-tiny C library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."keccak_tiny-master".type = "github";
  inputs."keccak_tiny-master".owner = "riinr";
  inputs."keccak_tiny-master".repo = "flake-nimble";
  inputs."keccak_tiny-master".ref = "flake-pinning";
  inputs."keccak_tiny-master".dir = "nimpkgs/k/keccak_tiny/master";
  inputs."keccak_tiny-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."keccak_tiny-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}