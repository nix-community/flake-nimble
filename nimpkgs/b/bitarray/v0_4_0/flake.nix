{
  description = ''mmap-backed bitarray implementation in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bitarray-v0_4_0.flake = false;
  inputs.src-bitarray-v0_4_0.type = "github";
  inputs.src-bitarray-v0_4_0.owner = "onecodex";
  inputs.src-bitarray-v0_4_0.repo = "nim-bitarray";
  inputs.src-bitarray-v0_4_0.ref = "refs/tags/v0.4.0";
  inputs.src-bitarray-v0_4_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";
  inputs."nimrod".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrod".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bitarray-v0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitarray-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bitarray-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}