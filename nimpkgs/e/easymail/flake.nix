{
  description = ''wrapper for the sendmail command'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."easymail-master".type = "github";
  inputs."easymail-master".owner = "riinr";
  inputs."easymail-master".repo = "flake-nimble";
  inputs."easymail-master".ref = "flake-pinning";
  inputs."easymail-master".dir = "nimpkgs/e/easymail/master";

    inputs."easymail-v0_1_0".type = "github";
  inputs."easymail-v0_1_0".owner = "riinr";
  inputs."easymail-v0_1_0".repo = "flake-nimble";
  inputs."easymail-v0_1_0".ref = "flake-pinning";
  inputs."easymail-v0_1_0".dir = "nimpkgs/e/easymail/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}