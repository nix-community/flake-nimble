{
  description = ''Low level bindings for GTK3 related libraries'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."oldgtk3-master".type = "github";
  inputs."oldgtk3-master".owner = "riinr";
  inputs."oldgtk3-master".repo = "flake-nimble";
  inputs."oldgtk3-master".ref = "flake-pinning";
  inputs."oldgtk3-master".dir = "nimpkgs/o/oldgtk3/master";
  inputs."oldgtk3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oldgtk3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}