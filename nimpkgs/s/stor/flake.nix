{
  description = ''Efficient object storage system'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."stor-master".type = "github";
  inputs."stor-master".owner = "riinr";
  inputs."stor-master".repo = "flake-nimble";
  inputs."stor-master".ref = "flake-pinning";
  inputs."stor-master".dir = "nimpkgs/s/stor/master";
  inputs."stor-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stor-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}