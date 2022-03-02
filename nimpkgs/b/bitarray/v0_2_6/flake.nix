{
  description = ''mmap-backed bitarray implementation in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-bitarray-v0_2_6.flake = false;
  inputs.src-bitarray-v0_2_6.type = "github";
  inputs.src-bitarray-v0_2_6.owner = "onecodex";
  inputs.src-bitarray-v0_2_6.repo = "nim-bitarray";
  inputs.src-bitarray-v0_2_6.ref = "refs/tags/v0.2.6";
  inputs.src-bitarray-v0_2_6.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimrod".type = "github";
  # inputs."nimrod".owner = "riinr";
  # inputs."nimrod".repo = "flake-nimble";
  # inputs."nimrod".ref = "flake-pinning";
  # inputs."nimrod".dir = "nimpkgs/n/nimrod";
  # inputs."nimrod".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimrod".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bitarray-v0_2_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitarray-v0_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bitarray-v0_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}