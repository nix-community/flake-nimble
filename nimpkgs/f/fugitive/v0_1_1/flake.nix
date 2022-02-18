{
  description = ''Simple command line tool to make git more intuitive, along with useful GitHub addons.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-fugitive-v0_1_1.flake = false;
  inputs.src-fugitive-v0_1_1.type = "github";
  inputs.src-fugitive-v0_1_1.owner = "haltcase";
  inputs.src-fugitive-v0_1_1.repo = "fugitive";
  inputs.src-fugitive-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."colorize".type = "github";
  inputs."colorize".owner = "riinr";
  inputs."colorize".repo = "flake-nimble";
  inputs."colorize".ref = "flake-pinning";
  inputs."colorize".dir = "nimpkgs/c/colorize";

  outputs = { self, nixpkgs, flakeNimbleLib, src-fugitive-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fugitive-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fugitive-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}