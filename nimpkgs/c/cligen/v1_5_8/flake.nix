{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v1_5_8.flake = false;
  inputs.src-cligen-v1_5_8.type = "github";
  inputs.src-cligen-v1_5_8.owner = "c-blake";
  inputs.src-cligen-v1_5_8.repo = "cligen";
  inputs.src-cligen-v1_5_8.ref = "refs/tags/v1.5.8";
  
  outputs = { self, nixpkgs, src-cligen-v1_5_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_5_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v1_5_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}