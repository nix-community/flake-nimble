{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_31.flake = false;
  inputs.src-cligen-v0_9_31.type = "github";
  inputs.src-cligen-v0_9_31.owner = "c-blake";
  inputs.src-cligen-v0_9_31.repo = "cligen";
  inputs.src-cligen-v0_9_31.ref = "refs/tags/v0.9.31";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_31, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_31;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_31"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}