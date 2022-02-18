{
  description = ''Amazon Simple Storage Service (AWS S3) basic API support.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-awss3-main.flake = false;
  inputs.src-awss3-main.type = "github";
  inputs.src-awss3-main.owner = "ThomasTJdev";
  inputs.src-awss3-main.repo = "nim_awsS3";
  inputs.src-awss3-main.ref = "refs/heads/main";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-awss3-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-awss3-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-awss3-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}