{
  description = ''Duckduckgo search'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."duckduckgo-master".type = "github";
  inputs."duckduckgo-master".owner = "riinr";
  inputs."duckduckgo-master".repo = "flake-nimble";
  inputs."duckduckgo-master".ref = "flake-pinning";
  inputs."duckduckgo-master".dir = "nimpkgs/d/duckduckgo/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}