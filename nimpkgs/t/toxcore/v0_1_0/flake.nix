{
  description = ''C Tox core wrapper'';
  inputs.src-toxcore-v0_1_0.flake = false;
  inputs.src-toxcore-v0_1_0.type = "other";
  inputs.src-toxcore-v0_1_0.owner = "~ehmry";
  inputs.src-toxcore-v0_1_0.repo = "nim_tox";
  inputs.src-toxcore-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-toxcore-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-toxcore-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-toxcore-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}