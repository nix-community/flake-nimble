{
  description = ''mmap-backed bitarray implementation in Nim.'';
  inputs.src-bitarray-v0_1_4.flake = false;
  inputs.src-bitarray-v0_1_4.type = "github";
  inputs.src-bitarray-v0_1_4.owner = "onecodex";
  inputs.src-bitarray-v0_1_4.repo = "nim-bitarray";
  inputs.src-bitarray-v0_1_4.ref = "refs/tags/v0.1.4";
  
  outputs = { self, nixpkgs, src-bitarray-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitarray-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bitarray-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}