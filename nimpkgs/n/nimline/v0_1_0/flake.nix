{
  description = ''Wrapper-less C/C++ interop for Nim'';
  inputs.src-nimline-v0_1_0.flake = false;
  inputs.src-nimline-v0_1_0.type = "github";
  inputs.src-nimline-v0_1_0.owner = "fragcolor-xyz";
  inputs.src-nimline-v0_1_0.repo = "nimline";
  inputs.src-nimline-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-nimline-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimline-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimline-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}