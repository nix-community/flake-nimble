{
  description = ''Nim wrapper for the LZ4 library. There is also a high-level API for easy use'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimlz4-master".type = "github";
  inputs."nimlz4-master".owner = "riinr";
  inputs."nimlz4-master".repo = "flake-nimble";
  inputs."nimlz4-master".ref = "flake-pinning";
  inputs."nimlz4-master".dir = "nimpkgs/n/nimlz4/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}