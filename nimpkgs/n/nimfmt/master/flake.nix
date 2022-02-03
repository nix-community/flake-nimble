{
  description = ''Configurable Nim code linter / formatter / style checker with heuristics'';
  inputs.src-nimfmt-master.flake = false;
  inputs.src-nimfmt-master.type = "github";
  inputs.src-nimfmt-master.owner = "FedericoCeratto";
  inputs.src-nimfmt-master.repo = "nimfmt";
  inputs.src-nimfmt-master.ref = "refs/heads/master";
  
  
  inputs."compiler".url = "path:../../../c/compiler";
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, src-nimfmt-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfmt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfmt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}