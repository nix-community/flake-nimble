{
  description = ''A fork of John Novak (john@johnnovak.net)'s illwill package that is less safe numbers wise'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."illwill_unsafe-master".type = "github";
  inputs."illwill_unsafe-master".owner = "riinr";
  inputs."illwill_unsafe-master".repo = "flake-nimble";
  inputs."illwill_unsafe-master".ref = "flake-pinning";
  inputs."illwill_unsafe-master".dir = "nimpkgs/i/illwill_unsafe/master";

    inputs."illwill_unsafe-0_1_0".type = "github";
  inputs."illwill_unsafe-0_1_0".owner = "riinr";
  inputs."illwill_unsafe-0_1_0".repo = "flake-nimble";
  inputs."illwill_unsafe-0_1_0".ref = "flake-pinning";
  inputs."illwill_unsafe-0_1_0".dir = "nimpkgs/i/illwill_unsafe/0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}