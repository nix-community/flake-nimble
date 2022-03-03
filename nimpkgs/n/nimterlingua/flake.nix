{
  description = ''Internationalization at Compile Time for Nim. Macro to translate unmodified code from 1 INI file. NimScript compatible.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimterlingua-master".type = "github";
  inputs."nimterlingua-master".owner = "riinr";
  inputs."nimterlingua-master".repo = "flake-nimble";
  inputs."nimterlingua-master".ref = "flake-pinning";
  inputs."nimterlingua-master".dir = "nimpkgs/n/nimterlingua/master";
  inputs."nimterlingua-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterlingua-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}