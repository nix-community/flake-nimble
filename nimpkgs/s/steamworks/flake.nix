{
  description = ''Steamworks SDK API for shipping games on Steam.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."steamworks-master".type = "github";
  inputs."steamworks-master".owner = "riinr";
  inputs."steamworks-master".repo = "flake-nimble";
  inputs."steamworks-master".ref = "flake-pinning";
  inputs."steamworks-master".dir = "nimpkgs/s/steamworks/master";
  inputs."steamworks-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."steamworks-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."steamworks-v0_1_1".type = "github";
  inputs."steamworks-v0_1_1".owner = "riinr";
  inputs."steamworks-v0_1_1".repo = "flake-nimble";
  inputs."steamworks-v0_1_1".ref = "flake-pinning";
  inputs."steamworks-v0_1_1".dir = "nimpkgs/s/steamworks/v0_1_1";
  inputs."steamworks-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."steamworks-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}