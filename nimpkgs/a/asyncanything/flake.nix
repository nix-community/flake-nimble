{
  description = ''make anything async [to be honest, fake async]'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."asyncanything-main".type = "github";
  inputs."asyncanything-main".owner = "riinr";
  inputs."asyncanything-main".repo = "flake-nimble";
  inputs."asyncanything-main".ref = "flake-pinning";
  inputs."asyncanything-main".dir = "nimpkgs/a/asyncanything/main";
  inputs."asyncanything-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncanything-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}