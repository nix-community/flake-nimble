{
  description = ''Configurable Nim code linter / formatter / style checker with heuristics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimfmt-0_2_0.flake = false;
  inputs.src-nimfmt-0_2_0.type = "github";
  inputs.src-nimfmt-0_2_0.owner = "FedericoCeratto";
  inputs.src-nimfmt-0_2_0.repo = "nimfmt";
  inputs.src-nimfmt-0_2_0.ref = "refs/tags/0.2.0";
  inputs.src-nimfmt-0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";
  inputs."compiler".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfmt-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfmt-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfmt-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}