{
  description = ''Library for shell scripting in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimshell-master".type = "github";
  inputs."nimshell-master".owner = "riinr";
  inputs."nimshell-master".repo = "flake-nimble";
  inputs."nimshell-master".ref = "flake-pinning";
  inputs."nimshell-master".dir = "nimpkgs/n/nimshell/master";

    inputs."nimshell-v0_0_1".type = "github";
  inputs."nimshell-v0_0_1".owner = "riinr";
  inputs."nimshell-v0_0_1".repo = "flake-nimble";
  inputs."nimshell-v0_0_1".ref = "flake-pinning";
  inputs."nimshell-v0_0_1".dir = "nimpkgs/n/nimshell/v0_0_1";

    inputs."nimshell-v0_0_2".type = "github";
  inputs."nimshell-v0_0_2".owner = "riinr";
  inputs."nimshell-v0_0_2".repo = "flake-nimble";
  inputs."nimshell-v0_0_2".ref = "flake-pinning";
  inputs."nimshell-v0_0_2".dir = "nimpkgs/n/nimshell/v0_0_2";

    inputs."nimshell-v0_0_3".type = "github";
  inputs."nimshell-v0_0_3".owner = "riinr";
  inputs."nimshell-v0_0_3".repo = "flake-nimble";
  inputs."nimshell-v0_0_3".ref = "flake-pinning";
  inputs."nimshell-v0_0_3".dir = "nimpkgs/n/nimshell/v0_0_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}