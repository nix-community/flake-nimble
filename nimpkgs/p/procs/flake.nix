{
  description = ''Unix process&system query&formatting library&multi-command CLI in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."procs-master".type = "github";
  inputs."procs-master".owner = "riinr";
  inputs."procs-master".repo = "flake-nimble";
  inputs."procs-master".ref = "flake-pinning";
  inputs."procs-master".dir = "nimpkgs/p/procs/master";

    inputs."procs-v0_2_1".type = "github";
  inputs."procs-v0_2_1".owner = "riinr";
  inputs."procs-v0_2_1".repo = "flake-nimble";
  inputs."procs-v0_2_1".ref = "flake-pinning";
  inputs."procs-v0_2_1".dir = "nimpkgs/p/procs/v0_2_1";

    inputs."procs-v0_3_0".type = "github";
  inputs."procs-v0_3_0".owner = "riinr";
  inputs."procs-v0_3_0".repo = "flake-nimble";
  inputs."procs-v0_3_0".ref = "flake-pinning";
  inputs."procs-v0_3_0".dir = "nimpkgs/p/procs/v0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}