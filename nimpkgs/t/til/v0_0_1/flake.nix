{
  description = ''til-tool: Today I Learned tool'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-til-v0_0_1.flake = false;
  inputs.src-til-v0_0_1.type = "github";
  inputs.src-til-v0_0_1.owner = "danielecook";
  inputs.src-til-v0_0_1.repo = "til-tool";
  inputs.src-til-v0_0_1.ref = "refs/tags/v0.0.1";
  inputs.src-til-v0_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."colorize".type = "github";
  # inputs."colorize".owner = "riinr";
  # inputs."colorize".repo = "flake-nimble";
  # inputs."colorize".ref = "flake-pinning";
  # inputs."colorize".dir = "nimpkgs/c/colorize";
  # inputs."colorize".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."colorize".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."argparse".type = "github";
  # inputs."argparse".owner = "riinr";
  # inputs."argparse".repo = "flake-nimble";
  # inputs."argparse".ref = "flake-pinning";
  # inputs."argparse".dir = "nimpkgs/a/argparse";
  # inputs."argparse".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."argparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-til-v0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-til-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-til-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}