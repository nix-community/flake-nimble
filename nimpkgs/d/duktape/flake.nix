{
  description = ''wrapper for the Duktape embeddable Javascript engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."duktape-master".type = "github";
  inputs."duktape-master".owner = "riinr";
  inputs."duktape-master".repo = "flake-nimble";
  inputs."duktape-master".ref = "flake-pinning";
  inputs."duktape-master".dir = "nimpkgs/d/duktape/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}