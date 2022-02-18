{
  description = ''reCAPTCHA support for Nim, supporting rendering a capctcha and verifying a user's response.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."recaptcha-master".type = "github";
  inputs."recaptcha-master".owner = "riinr";
  inputs."recaptcha-master".repo = "flake-nimble";
  inputs."recaptcha-master".ref = "flake-pinning";
  inputs."recaptcha-master".dir = "nimpkgs/r/recaptcha/master";

    inputs."recaptcha-v1_0_0".type = "github";
  inputs."recaptcha-v1_0_0".owner = "riinr";
  inputs."recaptcha-v1_0_0".repo = "flake-nimble";
  inputs."recaptcha-v1_0_0".ref = "flake-pinning";
  inputs."recaptcha-v1_0_0".dir = "nimpkgs/r/recaptcha/v1_0_0";

    inputs."recaptcha-v1_0_1".type = "github";
  inputs."recaptcha-v1_0_1".owner = "riinr";
  inputs."recaptcha-v1_0_1".repo = "flake-nimble";
  inputs."recaptcha-v1_0_1".ref = "flake-pinning";
  inputs."recaptcha-v1_0_1".dir = "nimpkgs/r/recaptcha/v1_0_1";

    inputs."recaptcha-v1_0_2".type = "github";
  inputs."recaptcha-v1_0_2".owner = "riinr";
  inputs."recaptcha-v1_0_2".repo = "flake-nimble";
  inputs."recaptcha-v1_0_2".ref = "flake-pinning";
  inputs."recaptcha-v1_0_2".dir = "nimpkgs/r/recaptcha/v1_0_2";

    inputs."recaptcha-v1_0_3".type = "github";
  inputs."recaptcha-v1_0_3".owner = "riinr";
  inputs."recaptcha-v1_0_3".repo = "flake-nimble";
  inputs."recaptcha-v1_0_3".ref = "flake-pinning";
  inputs."recaptcha-v1_0_3".dir = "nimpkgs/r/recaptcha/v1_0_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}