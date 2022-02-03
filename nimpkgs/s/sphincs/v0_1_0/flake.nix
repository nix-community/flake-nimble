{
  description = ''SPHINCS⁺ stateless hash-based signature scheme'';
  inputs.src-sphincs-v0_1_0.flake = false;
  inputs.src-sphincs-v0_1_0.type = "other";
  inputs.src-sphincs-v0_1_0.owner = "~ehmry";
  inputs.src-sphincs-v0_1_0.repo = "nim_sphincs";
  inputs.src-sphincs-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-sphincs-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sphincs-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sphincs-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}