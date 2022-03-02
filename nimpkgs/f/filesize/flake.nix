{
  description = ''A Nim package to convert filesizes into other units, and turns filesizes into human readable strings.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."filesize-master".type = "github";
  inputs."filesize-master".owner = "riinr";
  inputs."filesize-master".repo = "flake-nimble";
  inputs."filesize-master".ref = "flake-pinning";
  inputs."filesize-master".dir = "nimpkgs/f/filesize/master";
  inputs."filesize-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filesize-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}