{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_27.flake = false;
  inputs.src-cligen-v0_9_27.type = "github";
  inputs.src-cligen-v0_9_27.owner = "c-blake";
  inputs.src-cligen-v0_9_27.repo = "cligen";
  inputs.src-cligen-v0_9_27.ref = "refs/tags/v0.9.27";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_27, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_27;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_27"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}