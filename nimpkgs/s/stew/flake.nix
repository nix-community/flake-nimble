{
  description = ''stew is collection of utilities, std library extensions and budding libraries that are frequently used at Status, but are too small to deserve their own git repository.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."stew-master".type = "github";
  inputs."stew-master".owner = "riinr";
  inputs."stew-master".repo = "flake-nimble";
  inputs."stew-master".ref = "flake-pinning";
  inputs."stew-master".dir = "nimpkgs/s/stew/master";
  inputs."stew-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}