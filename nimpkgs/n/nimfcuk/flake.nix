{
  description = ''A brainfuck interpreter & compiler implemented in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimfcuk-main".type = "github";
  inputs."nimfcuk-main".owner = "riinr";
  inputs."nimfcuk-main".repo = "flake-nimble";
  inputs."nimfcuk-main".ref = "flake-pinning";
  inputs."nimfcuk-main".dir = "nimpkgs/n/nimfcuk/main";
  inputs."nimfcuk-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfcuk-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nimfcuk-0_1_1".type = "github";
  inputs."nimfcuk-0_1_1".owner = "riinr";
  inputs."nimfcuk-0_1_1".repo = "flake-nimble";
  inputs."nimfcuk-0_1_1".ref = "flake-pinning";
  inputs."nimfcuk-0_1_1".dir = "nimpkgs/n/nimfcuk/0_1_1";
  inputs."nimfcuk-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfcuk-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}