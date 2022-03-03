{
  description = ''eachdo executes commands with each multidimensional values'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-eachdo-v0_1_1.flake = false;
  inputs.src-eachdo-v0_1_1.type = "github";
  inputs.src-eachdo-v0_1_1.owner = "jiro4989";
  inputs.src-eachdo-v0_1_1.repo = "eachdo";
  inputs.src-eachdo-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-eachdo-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."argparse".type = "github";
  # inputs."argparse".owner = "riinr";
  # inputs."argparse".repo = "flake-nimble";
  # inputs."argparse".ref = "flake-pinning";
  # inputs."argparse".dir = "nimpkgs/a/argparse";
  # inputs."argparse".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."argparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eachdo-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eachdo-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eachdo-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}