{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v1_5_7.flake = false;
  inputs.src-cligen-v1_5_7.type = "github";
  inputs.src-cligen-v1_5_7.owner = "c-blake";
  inputs.src-cligen-v1_5_7.repo = "cligen";
  inputs.src-cligen-v1_5_7.ref = "refs/tags/v1.5.7";
  
  outputs = { self, nixpkgs, src-cligen-v1_5_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_5_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v1_5_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}