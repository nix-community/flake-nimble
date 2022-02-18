{
  description = ''Bindings for golib - a library that (ab)uses gccgo to bring Go's channels and goroutines to the rest of the world'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."golib-master".type = "github";
  inputs."golib-master".owner = "riinr";
  inputs."golib-master".repo = "flake-nimble";
  inputs."golib-master".ref = "flake-pinning";
  inputs."golib-master".dir = "nimpkgs/g/golib/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}