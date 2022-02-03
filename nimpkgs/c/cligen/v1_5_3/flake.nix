{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v1_5_3.flake = false;
  inputs.src-cligen-v1_5_3.type = "github";
  inputs.src-cligen-v1_5_3.owner = "c-blake";
  inputs.src-cligen-v1_5_3.repo = "cligen";
  inputs.src-cligen-v1_5_3.ref = "refs/tags/v1.5.3";
  
  outputs = { self, nixpkgs, src-cligen-v1_5_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_5_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v1_5_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}