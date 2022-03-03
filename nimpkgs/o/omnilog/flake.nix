{
  description = ''Advanced logging library for Nim with structured logging, formatters, filters and writers.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."omnilog-master".type = "github";
  inputs."omnilog-master".owner = "riinr";
  inputs."omnilog-master".repo = "flake-nimble";
  inputs."omnilog-master".ref = "flake-pinning";
  inputs."omnilog-master".dir = "nimpkgs/o/omnilog/master";
  inputs."omnilog-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnilog-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}