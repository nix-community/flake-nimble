{
  description = ''Internationalization at Compile Time for Nim. Macro to translate unmodified code from 1 INI file. NimScript compatible.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimterlingua-master".type = "github";
  inputs."nimterlingua-master".owner = "riinr";
  inputs."nimterlingua-master".repo = "flake-nimble";
  inputs."nimterlingua-master".ref = "flake-pinning";
  inputs."nimterlingua-master".dir = "nimpkgs/n/nimterlingua/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}