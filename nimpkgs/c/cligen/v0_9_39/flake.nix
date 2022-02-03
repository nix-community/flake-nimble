{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_39.flake = false;
  inputs.src-cligen-v0_9_39.type = "github";
  inputs.src-cligen-v0_9_39.owner = "c-blake";
  inputs.src-cligen-v0_9_39.repo = "cligen";
  inputs.src-cligen-v0_9_39.ref = "refs/tags/v0.9.39";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_39, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_39;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_39"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}