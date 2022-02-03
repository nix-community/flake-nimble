{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_11.flake = false;
  inputs.src-cligen-v0_9_11.type = "github";
  inputs.src-cligen-v0_9_11.owner = "c-blake";
  inputs.src-cligen-v0_9_11.repo = "cligen";
  inputs.src-cligen-v0_9_11.ref = "refs/tags/v0.9.11";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_11, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}