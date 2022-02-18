{
  description = ''Wrapper for VMProtect SDK'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."vmprotect-master".type = "github";
  inputs."vmprotect-master".owner = "riinr";
  inputs."vmprotect-master".repo = "flake-nimble";
  inputs."vmprotect-master".ref = "flake-pinning";
  inputs."vmprotect-master".dir = "nimpkgs/v/vmprotect/master";

    inputs."vmprotect-0_1_0".type = "github";
  inputs."vmprotect-0_1_0".owner = "riinr";
  inputs."vmprotect-0_1_0".repo = "flake-nimble";
  inputs."vmprotect-0_1_0".ref = "flake-pinning";
  inputs."vmprotect-0_1_0".dir = "nimpkgs/v/vmprotect/0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}