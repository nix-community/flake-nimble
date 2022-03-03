{
  description = ''lolcat implementation in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."lolcat-master".type = "github";
  inputs."lolcat-master".owner = "riinr";
  inputs."lolcat-master".repo = "flake-nimble";
  inputs."lolcat-master".ref = "flake-pinning";
  inputs."lolcat-master".dir = "nimpkgs/l/lolcat/master";
  inputs."lolcat-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lolcat-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}