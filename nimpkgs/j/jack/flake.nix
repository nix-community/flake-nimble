{
  description = ''Shiny bindings to the JACK Audio Connection Kit.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."jack-master".type = "github";
  inputs."jack-master".owner = "riinr";
  inputs."jack-master".repo = "flake-nimble";
  inputs."jack-master".ref = "flake-pinning";
  inputs."jack-master".dir = "nimpkgs/j/jack/master";
  inputs."jack-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jack-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}