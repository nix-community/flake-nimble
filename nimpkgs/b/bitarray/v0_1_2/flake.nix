{
  description = ''mmap-backed bitarray implementation in Nim.'';
  inputs.src-bitarray-v0_1_2.flake = false;
  inputs.src-bitarray-v0_1_2.type = "github";
  inputs.src-bitarray-v0_1_2.owner = "onecodex";
  inputs.src-bitarray-v0_1_2.repo = "nim-bitarray";
  inputs.src-bitarray-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-bitarray-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitarray-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bitarray-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}