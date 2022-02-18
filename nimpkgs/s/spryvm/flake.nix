{
  description = ''Homoiconic dynamic language interpreter in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."spryvm-master".type = "github";
  inputs."spryvm-master".owner = "riinr";
  inputs."spryvm-master".repo = "flake-nimble";
  inputs."spryvm-master".ref = "flake-pinning";
  inputs."spryvm-master".dir = "nimpkgs/s/spryvm/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}