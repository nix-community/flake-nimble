{
  description = ''Nim module for generating URL identifiers for Tiny URL and bit.ly-like URLs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."shorturl-master".type = "github";
  inputs."shorturl-master".owner = "riinr";
  inputs."shorturl-master".repo = "flake-nimble";
  inputs."shorturl-master".ref = "flake-pinning";
  inputs."shorturl-master".dir = "nimpkgs/s/shorturl/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}