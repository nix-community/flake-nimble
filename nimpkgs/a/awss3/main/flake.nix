{
  description = ''Amazon Simple Storage Service (AWS S3) basic API support.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-awsS3-main.flake = false;
  inputs.src-awsS3-main.type = "github";
  inputs.src-awsS3-main.owner = "ThomasTJdev";
  inputs.src-awsS3-main.repo = "nim_awsS3";
  inputs.src-awsS3-main.ref = "refs/heads/main";
  inputs.src-awsS3-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."sigv4".type = "github";
  inputs."sigv4".owner = "riinr";
  inputs."sigv4".repo = "flake-nimble";
  inputs."sigv4".ref = "flake-pinning";
  inputs."sigv4".dir = "nimpkgs/s/sigv4";
  inputs."sigv4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."awssts".type = "github";
  inputs."awssts".owner = "riinr";
  inputs."awssts".repo = "flake-nimble";
  inputs."awssts".ref = "flake-pinning";
  inputs."awssts".dir = "nimpkgs/a/awssts";
  inputs."awssts".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awssts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-awsS3-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-awsS3-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-awsS3-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}