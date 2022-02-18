{
  description = ''MongoDB driver in pure Nim language with synchronous and asynchronous I/O support'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimongo-master".type = "github";
  inputs."nimongo-master".owner = "riinr";
  inputs."nimongo-master".repo = "flake-nimble";
  inputs."nimongo-master".ref = "flake-pinning";
  inputs."nimongo-master".dir = "nimpkgs/n/nimongo/master";

    inputs."nimongo-v0_1_0".type = "github";
  inputs."nimongo-v0_1_0".owner = "riinr";
  inputs."nimongo-v0_1_0".repo = "flake-nimble";
  inputs."nimongo-v0_1_0".ref = "flake-pinning";
  inputs."nimongo-v0_1_0".dir = "nimpkgs/n/nimongo/v0_1_0";

    inputs."nimongo-v0_2_0".type = "github";
  inputs."nimongo-v0_2_0".owner = "riinr";
  inputs."nimongo-v0_2_0".repo = "flake-nimble";
  inputs."nimongo-v0_2_0".ref = "flake-pinning";
  inputs."nimongo-v0_2_0".dir = "nimpkgs/n/nimongo/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}