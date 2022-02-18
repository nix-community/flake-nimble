{
  description = ''A pure nim port of the open simplex noise algorithm from Kurt Spencer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."opensimplexnoise-main".type = "github";
  inputs."opensimplexnoise-main".owner = "riinr";
  inputs."opensimplexnoise-main".repo = "flake-nimble";
  inputs."opensimplexnoise-main".ref = "flake-pinning";
  inputs."opensimplexnoise-main".dir = "nimpkgs/o/opensimplexnoise/main";

    inputs."opensimplexnoise-0_1_0".type = "github";
  inputs."opensimplexnoise-0_1_0".owner = "riinr";
  inputs."opensimplexnoise-0_1_0".repo = "flake-nimble";
  inputs."opensimplexnoise-0_1_0".ref = "flake-pinning";
  inputs."opensimplexnoise-0_1_0".dir = "nimpkgs/o/opensimplexnoise/0_1_0";

    inputs."opensimplexnoise-0_2_0".type = "github";
  inputs."opensimplexnoise-0_2_0".owner = "riinr";
  inputs."opensimplexnoise-0_2_0".repo = "flake-nimble";
  inputs."opensimplexnoise-0_2_0".ref = "flake-pinning";
  inputs."opensimplexnoise-0_2_0".dir = "nimpkgs/o/opensimplexnoise/0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}