{
  description = ''A tool for managing a project's changelog'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-changer-v0_2_0.flake = false;
  inputs.src-changer-v0_2_0.type = "github";
  inputs.src-changer-v0_2_0.owner = "iffy";
  inputs.src-changer-v0_2_0.repo = "changer";
  inputs.src-changer-v0_2_0.ref = "refs/tags/v0.2.0";
  inputs.src-changer-v0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."argparse".type = "github";
  inputs."argparse".owner = "riinr";
  inputs."argparse".repo = "flake-nimble";
  inputs."argparse".ref = "flake-pinning";
  inputs."argparse".dir = "nimpkgs/a/argparse";
  inputs."argparse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-changer-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-changer-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-changer-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}