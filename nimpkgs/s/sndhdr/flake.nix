{
  description = ''Library for detecting the format of a sound file'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sndhdr-master".type = "github";
  inputs."sndhdr-master".owner = "riinr";
  inputs."sndhdr-master".repo = "flake-nimble";
  inputs."sndhdr-master".ref = "flake-pinning";
  inputs."sndhdr-master".dir = "nimpkgs/s/sndhdr/master";
  inputs."sndhdr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sndhdr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}