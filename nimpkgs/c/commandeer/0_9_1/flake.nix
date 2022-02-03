{
  description = ''Provides a small command line parsing DSL (domain specific language)'';
  inputs.src-commandeer-0_9_1.flake = false;
  inputs.src-commandeer-0_9_1.type = "github";
  inputs.src-commandeer-0_9_1.owner = "fenekku";
  inputs.src-commandeer-0_9_1.repo = "commandeer";
  inputs.src-commandeer-0_9_1.ref = "refs/tags/0.9.1";
  
  outputs = { self, nixpkgs, src-commandeer-0_9_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-commandeer-0_9_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-commandeer-0_9_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}