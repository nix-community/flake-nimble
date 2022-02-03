{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_38.flake = false;
  inputs.src-cligen-v0_9_38.type = "github";
  inputs.src-cligen-v0_9_38.owner = "c-blake";
  inputs.src-cligen-v0_9_38.repo = "cligen";
  inputs.src-cligen-v0_9_38.ref = "refs/tags/v0.9.38";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_38, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_38;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_38"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}