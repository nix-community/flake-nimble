{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_45.flake = false;
  inputs.src-cligen-v0_9_45.type = "github";
  inputs.src-cligen-v0_9_45.owner = "c-blake";
  inputs.src-cligen-v0_9_45.repo = "cligen";
  inputs.src-cligen-v0_9_45.ref = "refs/tags/v0.9.45";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_45, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_45;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_45"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}