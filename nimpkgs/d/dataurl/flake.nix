{
  description = ''Easily create data urls! CLI included'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."dataurl-master".type = "github";
  inputs."dataurl-master".owner = "riinr";
  inputs."dataurl-master".repo = "flake-nimble";
  inputs."dataurl-master".ref = "flake-pinning";
  inputs."dataurl-master".dir = "nimpkgs/d/dataurl/master";
  inputs."dataurl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dataurl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}