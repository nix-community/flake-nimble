{
  description = ''Library for parsing, stringifying, reading, and writing CSV (comma separated value) files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."csv-master".type = "github";
  inputs."csv-master".owner = "riinr";
  inputs."csv-master".repo = "flake-nimble";
  inputs."csv-master".ref = "flake-pinning";
  inputs."csv-master".dir = "nimpkgs/c/csv/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}