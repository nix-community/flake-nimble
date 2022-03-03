{
  description = ''buffer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."buffer-master".type = "github";
  inputs."buffer-master".owner = "riinr";
  inputs."buffer-master".repo = "flake-nimble";
  inputs."buffer-master".ref = "flake-pinning";
  inputs."buffer-master".dir = "nimpkgs/b/buffer/master";
  inputs."buffer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."buffer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}