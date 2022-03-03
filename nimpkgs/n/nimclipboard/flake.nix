{
  description = ''Nim wrapper for libclipboard'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimclipboard-master".type = "github";
  inputs."nimclipboard-master".owner = "riinr";
  inputs."nimclipboard-master".repo = "flake-nimble";
  inputs."nimclipboard-master".ref = "flake-pinning";
  inputs."nimclipboard-master".dir = "nimpkgs/n/nimclipboard/master";
  inputs."nimclipboard-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimclipboard-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimclipboard-v0_1_0".type = "github";
  inputs."nimclipboard-v0_1_0".owner = "riinr";
  inputs."nimclipboard-v0_1_0".repo = "flake-nimble";
  inputs."nimclipboard-v0_1_0".ref = "flake-pinning";
  inputs."nimclipboard-v0_1_0".dir = "nimpkgs/n/nimclipboard/v0_1_0";
  inputs."nimclipboard-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimclipboard-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimclipboard-v0_1_1".type = "github";
  inputs."nimclipboard-v0_1_1".owner = "riinr";
  inputs."nimclipboard-v0_1_1".repo = "flake-nimble";
  inputs."nimclipboard-v0_1_1".ref = "flake-pinning";
  inputs."nimclipboard-v0_1_1".dir = "nimpkgs/n/nimclipboard/v0_1_1";
  inputs."nimclipboard-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimclipboard-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimclipboard-v0_1_2".type = "github";
  inputs."nimclipboard-v0_1_2".owner = "riinr";
  inputs."nimclipboard-v0_1_2".repo = "flake-nimble";
  inputs."nimclipboard-v0_1_2".ref = "flake-pinning";
  inputs."nimclipboard-v0_1_2".dir = "nimpkgs/n/nimclipboard/v0_1_2";
  inputs."nimclipboard-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimclipboard-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}