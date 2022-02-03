{
  description = ''Provides a small command line parsing DSL (domain specific language)'';
  inputs.src-commandeer-0_2_0.flake = false;
  inputs.src-commandeer-0_2_0.type = "github";
  inputs.src-commandeer-0_2_0.owner = "fenekku";
  inputs.src-commandeer-0_2_0.repo = "commandeer";
  inputs.src-commandeer-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-commandeer-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-commandeer-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-commandeer-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}