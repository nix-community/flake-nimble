{
  description = ''Amazon Simple Storage Service (AWS S3) basic API support.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."awsS3-main".type = "github";
  inputs."awsS3-main".owner = "riinr";
  inputs."awsS3-main".repo = "flake-nimble";
  inputs."awsS3-main".ref = "flake-pinning";
  inputs."awsS3-main".dir = "nimpkgs/a/awsS3/main";

    inputs."awsS3-v1_0_0".type = "github";
  inputs."awsS3-v1_0_0".owner = "riinr";
  inputs."awsS3-v1_0_0".repo = "flake-nimble";
  inputs."awsS3-v1_0_0".ref = "flake-pinning";
  inputs."awsS3-v1_0_0".dir = "nimpkgs/a/awsS3/v1_0_0";

    inputs."awsS3-v1_0_1".type = "github";
  inputs."awsS3-v1_0_1".owner = "riinr";
  inputs."awsS3-v1_0_1".repo = "flake-nimble";
  inputs."awsS3-v1_0_1".ref = "flake-pinning";
  inputs."awsS3-v1_0_1".dir = "nimpkgs/a/awsS3/v1_0_1";

    inputs."awsS3-v1_0_2".type = "github";
  inputs."awsS3-v1_0_2".owner = "riinr";
  inputs."awsS3-v1_0_2".repo = "flake-nimble";
  inputs."awsS3-v1_0_2".ref = "flake-pinning";
  inputs."awsS3-v1_0_2".dir = "nimpkgs/a/awsS3/v1_0_2";

    inputs."awsS3-v1_0_3".type = "github";
  inputs."awsS3-v1_0_3".owner = "riinr";
  inputs."awsS3-v1_0_3".repo = "flake-nimble";
  inputs."awsS3-v1_0_3".ref = "flake-pinning";
  inputs."awsS3-v1_0_3".dir = "nimpkgs/a/awsS3/v1_0_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}