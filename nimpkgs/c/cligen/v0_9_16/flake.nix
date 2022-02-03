{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_16.flake = false;
  inputs.src-cligen-v0_9_16.type = "github";
  inputs.src-cligen-v0_9_16.owner = "c-blake";
  inputs.src-cligen-v0_9_16.repo = "cligen";
  inputs.src-cligen-v0_9_16.ref = "refs/tags/v0.9.16";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_16, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_16;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_16"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}