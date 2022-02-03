{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_10.flake = false;
  inputs.src-cligen-v0_9_10.type = "github";
  inputs.src-cligen-v0_9_10.owner = "c-blake";
  inputs.src-cligen-v0_9_10.repo = "cligen";
  inputs.src-cligen-v0_9_10.ref = "refs/tags/v0.9.10";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_10, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}