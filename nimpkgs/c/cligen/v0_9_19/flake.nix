{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_19.flake = false;
  inputs.src-cligen-v0_9_19.type = "github";
  inputs.src-cligen-v0_9_19.owner = "c-blake";
  inputs.src-cligen-v0_9_19.repo = "cligen";
  inputs.src-cligen-v0_9_19.ref = "refs/tags/v0.9.19";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_19, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_19;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_19"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}