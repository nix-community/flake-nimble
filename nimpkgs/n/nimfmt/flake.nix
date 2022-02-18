{
  description = ''Configurable Nim code linter / formatter / style checker with heuristics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimfmt-master".type = "github";
  inputs."nimfmt-master".owner = "riinr";
  inputs."nimfmt-master".repo = "flake-nimble";
  inputs."nimfmt-master".ref = "flake-pinning";
  inputs."nimfmt-master".dir = "nimpkgs/n/nimfmt/master";

    inputs."nimfmt-0_2_0".type = "github";
  inputs."nimfmt-0_2_0".owner = "riinr";
  inputs."nimfmt-0_2_0".repo = "flake-nimble";
  inputs."nimfmt-0_2_0".ref = "flake-pinning";
  inputs."nimfmt-0_2_0".dir = "nimpkgs/n/nimfmt/0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}