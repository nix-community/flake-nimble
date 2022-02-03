{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_44.flake = false;
  inputs.src-cligen-v0_9_44.type = "github";
  inputs.src-cligen-v0_9_44.owner = "c-blake";
  inputs.src-cligen-v0_9_44.repo = "cligen";
  inputs.src-cligen-v0_9_44.ref = "refs/tags/v0.9.44";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_44, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_44;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_44"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}