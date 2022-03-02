{
  description = ''ed25519 key crypto bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ed25519-master".type = "github";
  inputs."ed25519-master".owner = "riinr";
  inputs."ed25519-master".repo = "flake-nimble";
  inputs."ed25519-master".ref = "flake-pinning";
  inputs."ed25519-master".dir = "nimpkgs/e/ed25519/master";
  inputs."ed25519-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ed25519-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}