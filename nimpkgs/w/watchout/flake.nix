{
  description = ''⚡️ Just... yellin' for changes! File System Monitor for devs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."watchout-main".type = "github";
  inputs."watchout-main".owner = "riinr";
  inputs."watchout-main".repo = "flake-nimble";
  inputs."watchout-main".ref = "flake-pinning";
  inputs."watchout-main".dir = "nimpkgs/w/watchout/main";
  inputs."watchout-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."watchout-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}