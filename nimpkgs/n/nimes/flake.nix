{
  description = ''NES emulator using SDL2, also compiles to JavaScript with emscripten.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimes-master".type = "github";
  inputs."nimes-master".owner = "riinr";
  inputs."nimes-master".repo = "flake-nimble";
  inputs."nimes-master".ref = "flake-pinning";
  inputs."nimes-master".dir = "nimpkgs/n/nimes/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}