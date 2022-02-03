{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v1_2_1.flake = false;
  inputs.src-cligen-v1_2_1.type = "github";
  inputs.src-cligen-v1_2_1.owner = "c-blake";
  inputs.src-cligen-v1_2_1.repo = "cligen";
  inputs.src-cligen-v1_2_1.ref = "refs/tags/v1.2.1";
  
  outputs = { self, nixpkgs, src-cligen-v1_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v1_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}