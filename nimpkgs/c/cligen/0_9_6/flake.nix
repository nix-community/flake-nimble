{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-0_9_6.flake = false;
  inputs.src-cligen-0_9_6.type = "github";
  inputs.src-cligen-0_9_6.owner = "c-blake";
  inputs.src-cligen-0_9_6.repo = "cligen";
  inputs.src-cligen-0_9_6.ref = "refs/tags/0.9.6";
  
  outputs = { self, nixpkgs, src-cligen-0_9_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-0_9_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-0_9_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}