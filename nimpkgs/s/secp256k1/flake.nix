{
  description = ''A wrapper for the libsecp256k1 C library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."secp256k1-master".type = "github";
  inputs."secp256k1-master".owner = "riinr";
  inputs."secp256k1-master".repo = "flake-nimble";
  inputs."secp256k1-master".ref = "flake-pinning";
  inputs."secp256k1-master".dir = "nimpkgs/s/secp256k1/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}