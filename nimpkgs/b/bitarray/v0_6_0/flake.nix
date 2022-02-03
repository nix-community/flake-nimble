{
  description = ''mmap-backed bitarray implementation in Nim.'';
  inputs.src-bitarray-v0_6_0.flake = false;
  inputs.src-bitarray-v0_6_0.type = "github";
  inputs.src-bitarray-v0_6_0.owner = "onecodex";
  inputs.src-bitarray-v0_6_0.repo = "nim-bitarray";
  inputs.src-bitarray-v0_6_0.ref = "refs/tags/v0.6.0";
  
  outputs = { self, nixpkgs, src-bitarray-v0_6_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitarray-v0_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bitarray-v0_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}