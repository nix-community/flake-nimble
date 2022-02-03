{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v1_5_14.flake = false;
  inputs.src-cligen-v1_5_14.type = "github";
  inputs.src-cligen-v1_5_14.owner = "c-blake";
  inputs.src-cligen-v1_5_14.repo = "cligen";
  inputs.src-cligen-v1_5_14.ref = "refs/tags/v1.5.14";
  
  outputs = { self, nixpkgs, src-cligen-v1_5_14, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_5_14;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v1_5_14"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}