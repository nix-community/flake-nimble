{
  description = ''A tiny calendar program'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."calendar-master".type = "github";
  inputs."calendar-master".owner = "riinr";
  inputs."calendar-master".repo = "flake-nimble";
  inputs."calendar-master".ref = "flake-pinning";
  inputs."calendar-master".dir = "nimpkgs/c/calendar/master";
  inputs."calendar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."calendar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}