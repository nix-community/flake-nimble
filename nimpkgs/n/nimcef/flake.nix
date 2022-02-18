{
  description = ''Nim wrapper for the Chromium Embedded Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimcef-master".type = "github";
  inputs."nimcef-master".owner = "riinr";
  inputs."nimcef-master".repo = "flake-nimble";
  inputs."nimcef-master".ref = "flake-pinning";
  inputs."nimcef-master".dir = "nimpkgs/n/nimcef/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
