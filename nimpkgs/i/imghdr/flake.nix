{
  description = ''Library for detecting the format of an image'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."imghdr-master".type = "github";
  inputs."imghdr-master".owner = "riinr";
  inputs."imghdr-master".repo = "flake-nimble";
  inputs."imghdr-master".ref = "flake-pinning";
  inputs."imghdr-master".dir = "nimpkgs/i/imghdr/master";
  inputs."imghdr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imghdr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}