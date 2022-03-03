{
  description = ''Nim cryptographic library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimcrypto-master".type = "github";
  inputs."nimcrypto-master".owner = "riinr";
  inputs."nimcrypto-master".repo = "flake-nimble";
  inputs."nimcrypto-master".ref = "flake-pinning";
  inputs."nimcrypto-master".dir = "nimpkgs/n/nimcrypto/master";
  inputs."nimcrypto-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}