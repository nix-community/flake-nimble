{
  description = ''Cross platform system information.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sysinfo-master".type = "github";
  inputs."sysinfo-master".owner = "riinr";
  inputs."sysinfo-master".repo = "flake-nimble";
  inputs."sysinfo-master".ref = "flake-pinning";
  inputs."sysinfo-master".dir = "nimpkgs/s/sysinfo/master";
  inputs."sysinfo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sysinfo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sysinfo-v0_1_0".type = "github";
  inputs."sysinfo-v0_1_0".owner = "riinr";
  inputs."sysinfo-v0_1_0".repo = "flake-nimble";
  inputs."sysinfo-v0_1_0".ref = "flake-pinning";
  inputs."sysinfo-v0_1_0".dir = "nimpkgs/s/sysinfo/v0_1_0";
  inputs."sysinfo-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sysinfo-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."sysinfo-v0_2_1".type = "github";
  inputs."sysinfo-v0_2_1".owner = "riinr";
  inputs."sysinfo-v0_2_1".repo = "flake-nimble";
  inputs."sysinfo-v0_2_1".ref = "flake-pinning";
  inputs."sysinfo-v0_2_1".dir = "nimpkgs/s/sysinfo/v0_2_1";
  inputs."sysinfo-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sysinfo-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}