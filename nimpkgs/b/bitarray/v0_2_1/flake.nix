{
  description = ''mmap-backed bitarray implementation in Nim.'';
  inputs.src-bitarray-v0_2_1.flake = false;
  inputs.src-bitarray-v0_2_1.type = "github";
  inputs.src-bitarray-v0_2_1.owner = "onecodex";
  inputs.src-bitarray-v0_2_1.repo = "nim-bitarray";
  inputs.src-bitarray-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-bitarray-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitarray-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bitarray-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}