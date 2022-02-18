{
  description = ''Nim wrapper for the Chromium Embedded Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimCEF-master".type = "github";
  inputs."nimCEF-master".owner = "riinr";
  inputs."nimCEF-master".repo = "flake-nimble";
  inputs."nimCEF-master".ref = "flake-pinning";
  inputs."nimCEF-master".dir = "nimpkgs/n/nimCEF/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}