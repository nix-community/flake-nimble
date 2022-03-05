{
  description = ''An implementation of cat in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimcat-master".type = "github";
  inputs."nimcat-master".owner = "riinr";
  inputs."nimcat-master".repo = "flake-nimble";
  inputs."nimcat-master".ref = "flake-pinning";
  inputs."nimcat-master".dir = "nimpkgs/n/nimcat/master";
  inputs."nimcat-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcat-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}