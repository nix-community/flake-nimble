{
  description = ''blake2 - cryptographic hash function'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."blake2-master".type = "github";
  inputs."blake2-master".owner = "riinr";
  inputs."blake2-master".repo = "flake-nimble";
  inputs."blake2-master".ref = "flake-pinning";
  inputs."blake2-master".dir = "nimpkgs/b/blake2/master";
  inputs."blake2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blake2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}