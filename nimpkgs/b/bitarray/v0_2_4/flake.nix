{
  description = ''mmap-backed bitarray implementation in Nim.'';
  inputs.src-bitarray-v0_2_4.flake = false;
  inputs.src-bitarray-v0_2_4.type = "github";
  inputs.src-bitarray-v0_2_4.owner = "onecodex";
  inputs.src-bitarray-v0_2_4.repo = "nim-bitarray";
  inputs.src-bitarray-v0_2_4.ref = "refs/tags/v0.2.4";
  
  
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-bitarray-v0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitarray-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bitarray-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}