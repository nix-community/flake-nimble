{
  description = ''Additions to the Nim's standard library, like boost for C++'';
  inputs.src-nimboost-v0_3_6.flake = false;
  inputs.src-nimboost-v0_3_6.type = "github";
  inputs.src-nimboost-v0_3_6.owner = "vegansk";
  inputs.src-nimboost-v0_3_6.repo = "nimboost";
  inputs.src-nimboost-v0_3_6.ref = "refs/tags/v0.3.6";
  
  outputs = { self, nixpkgs, src-nimboost-v0_3_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimboost-v0_3_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimboost-v0_3_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}