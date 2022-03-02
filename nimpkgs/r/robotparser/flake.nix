{
  description = ''Determine if a useragent can access a URL using robots.txt'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."robotparser-master".type = "github";
  inputs."robotparser-master".owner = "riinr";
  inputs."robotparser-master".repo = "flake-nimble";
  inputs."robotparser-master".ref = "flake-pinning";
  inputs."robotparser-master".dir = "nimpkgs/r/robotparser/master";
  inputs."robotparser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."robotparser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}