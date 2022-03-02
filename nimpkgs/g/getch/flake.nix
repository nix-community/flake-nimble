{
  description = ''getch() for Windows and Unix'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."getch-master".type = "github";
  inputs."getch-master".owner = "riinr";
  inputs."getch-master".repo = "flake-nimble";
  inputs."getch-master".ref = "flake-pinning";
  inputs."getch-master".dir = "nimpkgs/g/getch/master";
  inputs."getch-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."getch-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}