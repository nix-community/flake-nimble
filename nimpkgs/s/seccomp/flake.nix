{
  description = ''Linux Seccomp sandbox library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."seccomp-master".type = "github";
  inputs."seccomp-master".owner = "riinr";
  inputs."seccomp-master".repo = "flake-nimble";
  inputs."seccomp-master".ref = "flake-pinning";
  inputs."seccomp-master".dir = "nimpkgs/s/seccomp/master";

    inputs."seccomp-0_2_0".type = "github";
  inputs."seccomp-0_2_0".owner = "riinr";
  inputs."seccomp-0_2_0".repo = "flake-nimble";
  inputs."seccomp-0_2_0".ref = "flake-pinning";
  inputs."seccomp-0_2_0".dir = "nimpkgs/s/seccomp/0_2_0";

    inputs."seccomp-0_2_1".type = "github";
  inputs."seccomp-0_2_1".owner = "riinr";
  inputs."seccomp-0_2_1".repo = "flake-nimble";
  inputs."seccomp-0_2_1".ref = "flake-pinning";
  inputs."seccomp-0_2_1".dir = "nimpkgs/s/seccomp/0_2_1";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}