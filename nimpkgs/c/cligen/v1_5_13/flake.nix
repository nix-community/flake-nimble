{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v1_5_13.flake = false;
  inputs.src-cligen-v1_5_13.type = "github";
  inputs.src-cligen-v1_5_13.owner = "c-blake";
  inputs.src-cligen-v1_5_13.repo = "cligen";
  inputs.src-cligen-v1_5_13.ref = "refs/tags/v1.5.13";
  
  outputs = { self, nixpkgs, src-cligen-v1_5_13, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_5_13;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v1_5_13"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}