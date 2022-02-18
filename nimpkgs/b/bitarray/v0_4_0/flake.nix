{
  description = ''mmap-backed bitarray implementation in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bitarray-v0_4_0.flake = false;
  inputs.src-bitarray-v0_4_0.type = "github";
  inputs.src-bitarray-v0_4_0.owner = "onecodex";
  inputs.src-bitarray-v0_4_0.repo = "nim-bitarray";
  inputs.src-bitarray-v0_4_0.ref = "refs/tags/v0.4.0";
  
  
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, flakeNimbleLib, src-bitarray-v0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitarray-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bitarray-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}