{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_28.flake = false;
  inputs.src-cligen-v0_9_28.type = "github";
  inputs.src-cligen-v0_9_28.owner = "c-blake";
  inputs.src-cligen-v0_9_28.repo = "cligen";
  inputs.src-cligen-v0_9_28.ref = "refs/tags/v0.9.28";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_28, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_28;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_28"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}