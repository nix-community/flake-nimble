{
  description = ''A tiny immediate-mode UI library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mui-master".type = "github";
  inputs."mui-master".owner = "riinr";
  inputs."mui-master".repo = "flake-nimble";
  inputs."mui-master".ref = "flake-pinning";
  inputs."mui-master".dir = "nimpkgs/m/mui/master";
  inputs."mui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}