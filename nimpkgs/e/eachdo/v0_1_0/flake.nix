{
  description = ''eachdo executes commands with each multidimensional values'';
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

  outputs = { self, nixpkgs, src-eachdo-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eachdo-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eachdo-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}