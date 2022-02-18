{
  description = ''Youtube data extractor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."ytextractor-master".type = "github";
  inputs."ytextractor-master".owner = "riinr";
  inputs."ytextractor-master".repo = "flake-nimble";
  inputs."ytextractor-master".ref = "flake-pinning";
  inputs."ytextractor-master".dir = "nimpkgs/y/ytextractor/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}