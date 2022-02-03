{
  description = ''Provides a small command line parsing DSL (domain specific language)'';
  inputs.src-commandeer-0_10_4.flake = false;
  inputs.src-commandeer-0_10_4.type = "github";
  inputs.src-commandeer-0_10_4.owner = "fenekku";
  inputs.src-commandeer-0_10_4.repo = "commandeer";
  inputs.src-commandeer-0_10_4.ref = "refs/tags/0.10.4";
  
  outputs = { self, nixpkgs, src-commandeer-0_10_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-commandeer-0_10_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-commandeer-0_10_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}