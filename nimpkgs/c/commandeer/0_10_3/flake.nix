{
  description = ''Provides a small command line parsing DSL (domain specific language)'';
  inputs.src-commandeer-0_10_3.flake = false;
  inputs.src-commandeer-0_10_3.type = "github";
  inputs.src-commandeer-0_10_3.owner = "fenekku";
  inputs.src-commandeer-0_10_3.repo = "commandeer";
  inputs.src-commandeer-0_10_3.ref = "refs/tags/0.10.3";
  
  outputs = { self, nixpkgs, src-commandeer-0_10_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-commandeer-0_10_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-commandeer-0_10_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}