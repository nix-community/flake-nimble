{
  description = ''A tool for managing a project's changelog'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-changer-v0_6_2.flake = false;
  inputs.src-changer-v0_6_2.type = "github";
  inputs.src-changer-v0_6_2.owner = "iffy";
  inputs.src-changer-v0_6_2.repo = "changer";
  inputs.src-changer-v0_6_2.ref = "refs/tags/v0.6.2";
  inputs.src-changer-v0_6_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."argparse".type = "github";
  # inputs."argparse".owner = "riinr";
  # inputs."argparse".repo = "flake-nimble";
  # inputs."argparse".ref = "flake-pinning";
  # inputs."argparse".dir = "nimpkgs/a/argparse";
  # inputs."argparse".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."argparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."regex".type = "github";
  # inputs."regex".owner = "riinr";
  # inputs."regex".repo = "flake-nimble";
  # inputs."regex".ref = "flake-pinning";
  # inputs."regex".dir = "nimpkgs/r/regex";
  # inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."parsetoml".type = "github";
  # inputs."parsetoml".owner = "riinr";
  # inputs."parsetoml".repo = "flake-nimble";
  # inputs."parsetoml".ref = "flake-pinning";
  # inputs."parsetoml".dir = "nimpkgs/p/parsetoml";
  # inputs."parsetoml".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."parsetoml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-changer-v0_6_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-changer-v0_6_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-changer-v0_6_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}