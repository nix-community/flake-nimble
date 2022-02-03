{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_22.flake = false;
  inputs.src-cligen-v0_9_22.type = "github";
  inputs.src-cligen-v0_9_22.owner = "c-blake";
  inputs.src-cligen-v0_9_22.repo = "cligen";
  inputs.src-cligen-v0_9_22.ref = "refs/tags/v0.9.22";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_22, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_22;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_22"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}