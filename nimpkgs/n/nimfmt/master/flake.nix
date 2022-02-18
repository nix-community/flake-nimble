{
  description = ''Configurable Nim code linter / formatter / style checker with heuristics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimfmt-master.flake = false;
  inputs.src-nimfmt-master.type = "github";
  inputs.src-nimfmt-master.owner = "FedericoCeratto";
  inputs.src-nimfmt-master.repo = "nimfmt";
  inputs.src-nimfmt-master.ref = "refs/heads/master";
  
  
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimfmt-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfmt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimfmt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}