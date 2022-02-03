{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v1_5_20.flake = false;
  inputs.src-cligen-v1_5_20.type = "github";
  inputs.src-cligen-v1_5_20.owner = "c-blake";
  inputs.src-cligen-v1_5_20.repo = "cligen";
  inputs.src-cligen-v1_5_20.ref = "refs/tags/v1.5.20";
  
  outputs = { self, nixpkgs, src-cligen-v1_5_20, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_5_20;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v1_5_20"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}