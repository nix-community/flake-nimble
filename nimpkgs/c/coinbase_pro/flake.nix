{
  description = ''Coinbase pro client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."coinbase_pro-master".type = "github";
  inputs."coinbase_pro-master".owner = "riinr";
  inputs."coinbase_pro-master".repo = "flake-nimble";
  inputs."coinbase_pro-master".ref = "flake-pinning";
  inputs."coinbase_pro-master".dir = "nimpkgs/c/coinbase_pro/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}