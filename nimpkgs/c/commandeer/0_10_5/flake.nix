{
  description = ''Provides a small command line parsing DSL (domain specific language)'';
  inputs.src-commandeer-0_10_5.flake = false;
  inputs.src-commandeer-0_10_5.type = "github";
  inputs.src-commandeer-0_10_5.owner = "fenekku";
  inputs.src-commandeer-0_10_5.repo = "commandeer";
  inputs.src-commandeer-0_10_5.ref = "refs/tags/0.10.5";
  
  outputs = { self, nixpkgs, src-commandeer-0_10_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-commandeer-0_10_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-commandeer-0_10_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}