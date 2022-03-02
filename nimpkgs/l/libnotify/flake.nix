{
  description = ''Minimalistic libnotify wrapper for desktop notifications'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."libnotify-master".type = "github";
  inputs."libnotify-master".owner = "riinr";
  inputs."libnotify-master".repo = "flake-nimble";
  inputs."libnotify-master".ref = "flake-pinning";
  inputs."libnotify-master".dir = "nimpkgs/l/libnotify/master";
  inputs."libnotify-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libnotify-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}