{
  description = ''Wrapper-less C/C++ interop for Nim'';
  inputs.src-nimline-v0_1_4.flake = false;
  inputs.src-nimline-v0_1_4.type = "github";
  inputs.src-nimline-v0_1_4.owner = "fragcolor-xyz";
  inputs.src-nimline-v0_1_4.repo = "nimline";
  inputs.src-nimline-v0_1_4.ref = "refs/tags/v0.1.4";
  
  outputs = { self, nixpkgs, src-nimline-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimline-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimline-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}