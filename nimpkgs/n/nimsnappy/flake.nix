{
  description = ''Nim wrapper for the snappy compression library. there is also a high-level API for easy use'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimsnappy-master".type = "github";
  inputs."nimsnappy-master".owner = "riinr";
  inputs."nimsnappy-master".repo = "flake-nimble";
  inputs."nimsnappy-master".ref = "flake-pinning";
  inputs."nimsnappy-master".dir = "nimpkgs/n/nimsnappy/master";
  inputs."nimsnappy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsnappy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}