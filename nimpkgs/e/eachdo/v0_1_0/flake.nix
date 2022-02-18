{
  description = ''eachdo executes commands with each multidimensional values'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-eachdo-v0_1_0.flake = false;
  inputs.src-eachdo-v0_1_0.type = "github";
  inputs.src-eachdo-v0_1_0.owner = "jiro4989";
  inputs.src-eachdo-v0_1_0.repo = "eachdo";
  inputs.src-eachdo-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."argparse".type = "github";
  inputs."argparse".owner = "riinr";
  inputs."argparse".repo = "flake-nimble";
  inputs."argparse".ref = "flake-pinning";
  inputs."argparse".dir = "nimpkgs/a/argparse";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eachdo-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eachdo-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eachdo-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}