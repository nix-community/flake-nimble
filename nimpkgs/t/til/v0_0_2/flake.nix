{
  description = ''til-tool: Today I Learned tool'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-til-v0_0_2.flake = false;
  inputs.src-til-v0_0_2.type = "github";
  inputs.src-til-v0_0_2.owner = "danielecook";
  inputs.src-til-v0_0_2.repo = "til-tool";
  inputs.src-til-v0_0_2.ref = "refs/tags/v0.0.2";
  
  
  inputs."colorize".type = "github";
  inputs."colorize".owner = "riinr";
  inputs."colorize".repo = "flake-nimble";
  inputs."colorize".ref = "flake-pinning";
  inputs."colorize".dir = "nimpkgs/c/colorize";

  
  inputs."argparse".type = "github";
  inputs."argparse".owner = "riinr";
  inputs."argparse".repo = "flake-nimble";
  inputs."argparse".ref = "flake-pinning";
  inputs."argparse".dir = "nimpkgs/a/argparse";

  outputs = { self, nixpkgs, flakeNimbleLib, src-til-v0_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-til-v0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-til-v0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}