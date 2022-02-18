{
  description = ''Ethereum bloom filter (deprecated, now part of the 'eth' package)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."eth_bloom-master".type = "github";
  inputs."eth_bloom-master".owner = "riinr";
  inputs."eth_bloom-master".repo = "flake-nimble";
  inputs."eth_bloom-master".ref = "flake-pinning";
  inputs."eth_bloom-master".dir = "nimpkgs/e/eth_bloom/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}