{
  description = ''C Tox core wrapper'';
  inputs.src-toxcore-v0_3_1.flake = false;
  inputs.src-toxcore-v0_3_1.type = "other";
  inputs.src-toxcore-v0_3_1.owner = "~ehmry";
  inputs.src-toxcore-v0_3_1.repo = "nim_tox";
  inputs.src-toxcore-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-toxcore-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-toxcore-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-toxcore-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}