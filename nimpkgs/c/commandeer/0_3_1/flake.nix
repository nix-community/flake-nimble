{
  description = ''Provides a small command line parsing DSL (domain specific language)'';
  inputs.src-commandeer-0_3_1.flake = false;
  inputs.src-commandeer-0_3_1.type = "github";
  inputs.src-commandeer-0_3_1.owner = "fenekku";
  inputs.src-commandeer-0_3_1.repo = "commandeer";
  inputs.src-commandeer-0_3_1.ref = "refs/tags/0.3.1";
  
  outputs = { self, nixpkgs, src-commandeer-0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-commandeer-0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-commandeer-0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}