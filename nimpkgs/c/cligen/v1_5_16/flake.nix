{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v1_5_16.flake = false;
  inputs.src-cligen-v1_5_16.type = "github";
  inputs.src-cligen-v1_5_16.owner = "c-blake";
  inputs.src-cligen-v1_5_16.repo = "cligen";
  inputs.src-cligen-v1_5_16.ref = "refs/tags/v1.5.16";
  
  outputs = { self, nixpkgs, src-cligen-v1_5_16, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_5_16;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v1_5_16"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}