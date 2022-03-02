{
  description = ''iterate through files and lines'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."fileinput-master".type = "github";
  inputs."fileinput-master".owner = "riinr";
  inputs."fileinput-master".repo = "flake-nimble";
  inputs."fileinput-master".ref = "flake-pinning";
  inputs."fileinput-master".dir = "nimpkgs/f/fileinput/master";
  inputs."fileinput-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fileinput-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}