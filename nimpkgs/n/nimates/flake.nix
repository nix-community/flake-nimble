{
  description = ''Client library for the Postmates API'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimates-master".type = "github";
  inputs."nimates-master".owner = "riinr";
  inputs."nimates-master".repo = "flake-nimble";
  inputs."nimates-master".ref = "flake-pinning";
  inputs."nimates-master".dir = "nimpkgs/n/nimates/master";
  inputs."nimates-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimates-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}