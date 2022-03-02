{
  description = ''Lightweight audio mixer for games'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."cmixer-master".type = "github";
  inputs."cmixer-master".owner = "riinr";
  inputs."cmixer-master".repo = "flake-nimble";
  inputs."cmixer-master".ref = "flake-pinning";
  inputs."cmixer-master".dir = "nimpkgs/c/cmixer/master";
  inputs."cmixer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cmixer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}