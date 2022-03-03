{
  description = ''Libravatar library for Nim, Gravatar alternative. Libravatar is an open source free federated avatar api & service.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."libravatar-master".type = "github";
  inputs."libravatar-master".owner = "riinr";
  inputs."libravatar-master".repo = "flake-nimble";
  inputs."libravatar-master".ref = "flake-pinning";
  inputs."libravatar-master".dir = "nimpkgs/l/libravatar/master";
  inputs."libravatar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libravatar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}