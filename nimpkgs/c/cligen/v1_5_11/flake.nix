{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v1_5_11.flake = false;
  inputs.src-cligen-v1_5_11.type = "github";
  inputs.src-cligen-v1_5_11.owner = "c-blake";
  inputs.src-cligen-v1_5_11.repo = "cligen";
  inputs.src-cligen-v1_5_11.ref = "refs/tags/v1.5.11";
  
  outputs = { self, nixpkgs, src-cligen-v1_5_11, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_5_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v1_5_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}