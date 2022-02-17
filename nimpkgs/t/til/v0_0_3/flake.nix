{
  description = ''til-tool: Today I Learned tool'';
  inputs.src-til-v0_0_3.flake = false;
  inputs.src-til-v0_0_3.type = "github";
  inputs.src-til-v0_0_3.owner = "danielecook";
  inputs.src-til-v0_0_3.repo = "til-tool";
  inputs.src-til-v0_0_3.ref = "refs/tags/v0.0.3";
  
  
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

  outputs = { self, nixpkgs, src-til-v0_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-til-v0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-til-v0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}