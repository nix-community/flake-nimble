{
  description = ''Additions to the Nim's standard library, like boost for C++'';
  inputs.src-nimboost-v0_4_5.flake = false;
  inputs.src-nimboost-v0_4_5.type = "github";
  inputs.src-nimboost-v0_4_5.owner = "vegansk";
  inputs.src-nimboost-v0_4_5.repo = "nimboost";
  inputs.src-nimboost-v0_4_5.ref = "refs/tags/v0.4.5";
  
  outputs = { self, nixpkgs, src-nimboost-v0_4_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimboost-v0_4_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimboost-v0_4_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}