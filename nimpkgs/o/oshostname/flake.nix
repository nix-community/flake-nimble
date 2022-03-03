{
  description = ''Get the current hostname with gethostname(2)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."oshostname-master".type = "github";
  inputs."oshostname-master".owner = "riinr";
  inputs."oshostname-master".repo = "flake-nimble";
  inputs."oshostname-master".ref = "flake-pinning";
  inputs."oshostname-master".dir = "nimpkgs/o/oshostname/master";
  inputs."oshostname-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oshostname-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}