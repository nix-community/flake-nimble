{
  description = ''Record and replay your HTTP sessions!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."cassette-master".type = "github";
  inputs."cassette-master".owner = "riinr";
  inputs."cassette-master".repo = "flake-nimble";
  inputs."cassette-master".ref = "flake-pinning";
  inputs."cassette-master".dir = "nimpkgs/c/cassette/master";
  inputs."cassette-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cassette-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}