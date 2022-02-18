{
  description = ''Wrapper for the C[++] library BearLibTerminal'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."bearlibterminal-master".type = "github";
  inputs."bearlibterminal-master".owner = "riinr";
  inputs."bearlibterminal-master".repo = "flake-nimble";
  inputs."bearlibterminal-master".ref = "flake-pinning";
  inputs."bearlibterminal-master".dir = "nimpkgs/b/bearlibterminal/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}