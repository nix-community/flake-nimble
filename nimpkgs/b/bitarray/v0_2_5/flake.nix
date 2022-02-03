{
  description = ''mmap-backed bitarray implementation in Nim.'';
  inputs.src-bitarray-v0_2_5.flake = false;
  inputs.src-bitarray-v0_2_5.type = "github";
  inputs.src-bitarray-v0_2_5.owner = "onecodex";
  inputs.src-bitarray-v0_2_5.repo = "nim-bitarray";
  inputs.src-bitarray-v0_2_5.ref = "refs/tags/v0.2.5";
  
  
  inputs."nimrod".url = "path:../../../n/nimrod";
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-bitarray-v0_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitarray-v0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bitarray-v0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}