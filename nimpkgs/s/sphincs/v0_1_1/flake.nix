{
  description = ''SPHINCS⁺ stateless hash-based signature scheme'';
  inputs.src-sphincs-v0_1_1.flake = false;
  inputs.src-sphincs-v0_1_1.type = "other";
  inputs.src-sphincs-v0_1_1.owner = "~ehmry";
  inputs.src-sphincs-v0_1_1.repo = "nim_sphincs";
  inputs.src-sphincs-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-sphincs-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sphincs-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sphincs-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}