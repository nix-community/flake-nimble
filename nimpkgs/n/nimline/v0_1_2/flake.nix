{
  description = ''Wrapper-less C/C++ interop for Nim'';
  inputs.src-nimline-v0_1_2.flake = false;
  inputs.src-nimline-v0_1_2.type = "github";
  inputs.src-nimline-v0_1_2.owner = "fragcolor-xyz";
  inputs.src-nimline-v0_1_2.repo = "nimline";
  inputs.src-nimline-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-nimline-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimline-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimline-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}