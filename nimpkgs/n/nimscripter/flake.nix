{
  description = ''Easy to use Nim/Nimscript interop, for scripting logic in compiled binaries.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimscripter-master".type = "github";
  inputs."nimscripter-master".owner = "riinr";
  inputs."nimscripter-master".repo = "flake-nimble";
  inputs."nimscripter-master".ref = "flake-pinning";
  inputs."nimscripter-master".dir = "nimpkgs/n/nimscripter/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
