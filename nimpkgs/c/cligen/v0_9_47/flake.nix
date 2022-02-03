{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_47.flake = false;
  inputs.src-cligen-v0_9_47.type = "github";
  inputs.src-cligen-v0_9_47.owner = "c-blake";
  inputs.src-cligen-v0_9_47.repo = "cligen";
  inputs.src-cligen-v0_9_47.ref = "refs/tags/v0.9.47";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_47, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_47;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_47"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}