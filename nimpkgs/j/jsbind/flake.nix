{
  description = ''Define bindings to JavaScript and Emscripten'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."jsbind-master".type = "github";
  inputs."jsbind-master".owner = "riinr";
  inputs."jsbind-master".repo = "flake-nimble";
  inputs."jsbind-master".ref = "flake-pinning";
  inputs."jsbind-master".dir = "nimpkgs/j/jsbind/master";
  inputs."jsbind-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsbind-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}