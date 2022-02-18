{
  description = ''Rapid serial text presenter'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  
    inputs."hottext-v1_2".type = "github";
  inputs."hottext-v1_2".owner = "riinr";
  inputs."hottext-v1_2".repo = "flake-nimble";
  inputs."hottext-v1_2".ref = "flake-pinning";
  inputs."hottext-v1_2".dir = "nimpkgs/h/hottext/v1_2";

    inputs."hottext-v1_3".type = "github";
  inputs."hottext-v1_3".owner = "riinr";
  inputs."hottext-v1_3".repo = "flake-nimble";
  inputs."hottext-v1_3".ref = "flake-pinning";
  inputs."hottext-v1_3".dir = "nimpkgs/h/hottext/v1_3";

    inputs."hottext-v1_4".type = "github";
  inputs."hottext-v1_4".owner = "riinr";
  inputs."hottext-v1_4".repo = "flake-nimble";
  inputs."hottext-v1_4".ref = "flake-pinning";
  inputs."hottext-v1_4".dir = "nimpkgs/h/hottext/v1_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}