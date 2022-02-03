{
  description = ''Additions to the Nim's standard library, like boost for C++'';
  inputs.src-nimboost-v0_3_4.flake = false;
  inputs.src-nimboost-v0_3_4.type = "github";
  inputs.src-nimboost-v0_3_4.owner = "vegansk";
  inputs.src-nimboost-v0_3_4.repo = "nimboost";
  inputs.src-nimboost-v0_3_4.ref = "refs/tags/v0.3.4";
  
  outputs = { self, nixpkgs, src-nimboost-v0_3_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimboost-v0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimboost-v0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}