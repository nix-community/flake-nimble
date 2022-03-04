{
  description = ''eachdo executes commands with each multidimensional values'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-eachdo-main.flake = false;
  inputs.src-eachdo-main.type = "github";
  inputs.src-eachdo-main.owner = "jiro4989";
  inputs.src-eachdo-main.repo = "eachdo";
  inputs.src-eachdo-main.ref = "refs/heads/main";
  inputs.src-eachdo-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."argparse".type = "github";
  inputs."argparse".owner = "riinr";
  inputs."argparse".repo = "flake-nimble";
  inputs."argparse".ref = "flake-pinning";
  inputs."argparse".dir = "nimpkgs/a/argparse";
  inputs."argparse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eachdo-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eachdo-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eachdo-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}