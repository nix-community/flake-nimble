{
  description = ''Amazon Simple Storage Service (AWS S3) basic API support.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-awss3-v1_0_0.flake = false;
  inputs.src-awss3-v1_0_0.type = "github";
  inputs.src-awss3-v1_0_0.owner = "ThomasTJdev";
  inputs.src-awss3-v1_0_0.repo = "nim_awsS3";
  inputs.src-awss3-v1_0_0.ref = "refs/tags/v1.0.0";
  
  
  inputs."sigv4".type = "github";
  inputs."sigv4".owner = "riinr";
  inputs."sigv4".repo = "flake-nimble";
  inputs."sigv4".ref = "flake-pinning";
  inputs."sigv4".dir = "nimpkgs/s/sigv4";

  
  inputs."awssts".type = "github";
  inputs."awssts".owner = "riinr";
  inputs."awssts".repo = "flake-nimble";
  inputs."awssts".ref = "flake-pinning";
  inputs."awssts".dir = "nimpkgs/a/awssts";

  outputs = { self, nixpkgs, flakeNimbleLib, src-awss3-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-awss3-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-awss3-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}