{
  description = ''Provides a small command line parsing DSL (domain specific language)'';
  inputs.src-commandeer-0_8_0.flake = false;
  inputs.src-commandeer-0_8_0.type = "github";
  inputs.src-commandeer-0_8_0.owner = "fenekku";
  inputs.src-commandeer-0_8_0.repo = "commandeer";
  inputs.src-commandeer-0_8_0.ref = "refs/tags/0.8.0";
  
  outputs = { self, nixpkgs, src-commandeer-0_8_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-commandeer-0_8_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-commandeer-0_8_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}