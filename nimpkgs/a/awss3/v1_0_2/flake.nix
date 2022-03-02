{
  description = ''Amazon Simple Storage Service (AWS S3) basic API support.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-awsS3-v1_0_2.flake = false;
  inputs.src-awsS3-v1_0_2.type = "github";
  inputs.src-awsS3-v1_0_2.owner = "ThomasTJdev";
  inputs.src-awsS3-v1_0_2.repo = "nim_awsS3";
  inputs.src-awsS3-v1_0_2.ref = "refs/tags/v1.0.2";
  inputs.src-awsS3-v1_0_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."sigv4".type = "github";
  # inputs."sigv4".owner = "riinr";
  # inputs."sigv4".repo = "flake-nimble";
  # inputs."sigv4".ref = "flake-pinning";
  # inputs."sigv4".dir = "nimpkgs/s/sigv4";
  # inputs."sigv4".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."sigv4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."awssts".type = "github";
  # inputs."awssts".owner = "riinr";
  # inputs."awssts".repo = "flake-nimble";
  # inputs."awssts".ref = "flake-pinning";
  # inputs."awssts".dir = "nimpkgs/a/awssts";
  # inputs."awssts".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."awssts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-awsS3-v1_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-awsS3-v1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-awsS3-v1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}