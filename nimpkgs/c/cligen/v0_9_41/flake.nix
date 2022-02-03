{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_41.flake = false;
  inputs.src-cligen-v0_9_41.type = "github";
  inputs.src-cligen-v0_9_41.owner = "c-blake";
  inputs.src-cligen-v0_9_41.repo = "cligen";
  inputs.src-cligen-v0_9_41.ref = "refs/tags/v0.9.41";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_41, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_41;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_41"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}