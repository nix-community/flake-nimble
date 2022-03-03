{
  description = ''The Blackvas CLI'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."blackvas_cli-master".type = "github";
  inputs."blackvas_cli-master".owner = "riinr";
  inputs."blackvas_cli-master".repo = "flake-nimble";
  inputs."blackvas_cli-master".ref = "flake-pinning";
  inputs."blackvas_cli-master".dir = "nimpkgs/b/blackvas_cli/master";
  inputs."blackvas_cli-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blackvas_cli-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}