{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_4.flake = false;
  inputs.src-cligen-v0_9_4.type = "github";
  inputs.src-cligen-v0_9_4.owner = "c-blake";
  inputs.src-cligen-v0_9_4.repo = "cligen";
  inputs.src-cligen-v0_9_4.ref = "refs/tags/v0.9.4";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}