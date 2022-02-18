{
  description = ''⚡️ Just... yellin' for changes! File System Monitor for devs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."watchout-main".type = "github";
  inputs."watchout-main".owner = "riinr";
  inputs."watchout-main".repo = "flake-nimble";
  inputs."watchout-main".ref = "flake-pinning";
  inputs."watchout-main".dir = "nimpkgs/w/watchout/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}