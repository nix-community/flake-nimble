{
  description = ''OwO text convewtew fow Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."owo-master".type = "github";
  inputs."owo-master".owner = "riinr";
  inputs."owo-master".repo = "flake-nimble";
  inputs."owo-master".ref = "flake-pinning";
  inputs."owo-master".dir = "nimpkgs/o/owo/master";
  inputs."owo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."owo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}