{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_15.flake = false;
  inputs.src-cligen-v0_9_15.type = "github";
  inputs.src-cligen-v0_9_15.owner = "c-blake";
  inputs.src-cligen-v0_9_15.repo = "cligen";
  inputs.src-cligen-v0_9_15.ref = "refs/tags/v0.9.15";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_15, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_15;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_15"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}