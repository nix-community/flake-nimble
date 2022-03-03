{
  description = ''A wrapper of libsndfile'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sndfile-master".type = "github";
  inputs."sndfile-master".owner = "riinr";
  inputs."sndfile-master".repo = "flake-nimble";
  inputs."sndfile-master".ref = "flake-pinning";
  inputs."sndfile-master".dir = "nimpkgs/s/sndfile/master";
  inputs."sndfile-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sndfile-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}