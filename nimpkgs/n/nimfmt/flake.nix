{
  description = ''Configurable Nim code linter / formatter / style checker with heuristics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimfmt-master".type = "github";
  inputs."nimfmt-master".owner = "riinr";
  inputs."nimfmt-master".repo = "flake-nimble";
  inputs."nimfmt-master".ref = "flake-pinning";
  inputs."nimfmt-master".dir = "nimpkgs/n/nimfmt/master";
  inputs."nimfmt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfmt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimfmt-0_2_0".type = "github";
  inputs."nimfmt-0_2_0".owner = "riinr";
  inputs."nimfmt-0_2_0".repo = "flake-nimble";
  inputs."nimfmt-0_2_0".ref = "flake-pinning";
  inputs."nimfmt-0_2_0".dir = "nimpkgs/n/nimfmt/0_2_0";
  inputs."nimfmt-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfmt-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}