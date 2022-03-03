{
  description = ''High-level libsodium bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sodium-master".type = "github";
  inputs."sodium-master".owner = "riinr";
  inputs."sodium-master".repo = "flake-nimble";
  inputs."sodium-master".ref = "flake-pinning";
  inputs."sodium-master".dir = "nimpkgs/s/sodium/master";
  inputs."sodium-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sodium-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}