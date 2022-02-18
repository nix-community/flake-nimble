{
  description = ''Nim wrapper for (and with) Celtoys's Remotery'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."Remotery-master".type = "github";
  inputs."Remotery-master".owner = "riinr";
  inputs."Remotery-master".repo = "flake-nimble";
  inputs."Remotery-master".ref = "flake-pinning";
  inputs."Remotery-master".dir = "nimpkgs/r/remotery/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
