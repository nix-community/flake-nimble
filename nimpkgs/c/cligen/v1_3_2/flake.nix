{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v1_3_2.flake = false;
  inputs.src-cligen-v1_3_2.type = "github";
  inputs.src-cligen-v1_3_2.owner = "c-blake";
  inputs.src-cligen-v1_3_2.repo = "cligen";
  inputs.src-cligen-v1_3_2.ref = "refs/tags/v1.3.2";
  
  outputs = { self, nixpkgs, src-cligen-v1_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v1_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}