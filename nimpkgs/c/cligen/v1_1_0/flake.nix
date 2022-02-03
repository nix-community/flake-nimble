{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v1_1_0.flake = false;
  inputs.src-cligen-v1_1_0.type = "github";
  inputs.src-cligen-v1_1_0.owner = "c-blake";
  inputs.src-cligen-v1_1_0.repo = "cligen";
  inputs.src-cligen-v1_1_0.ref = "refs/tags/v1.1.0";
  
  outputs = { self, nixpkgs, src-cligen-v1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}