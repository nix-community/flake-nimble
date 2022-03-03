{
  description = ''Wrapper for ENet UDP networking library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."enet-master".type = "github";
  inputs."enet-master".owner = "riinr";
  inputs."enet-master".repo = "flake-nimble";
  inputs."enet-master".ref = "flake-pinning";
  inputs."enet-master".dir = "nimpkgs/e/enet/master";
  inputs."enet-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."enet-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}