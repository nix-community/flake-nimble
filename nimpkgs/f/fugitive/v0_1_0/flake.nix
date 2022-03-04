{
  description = ''Simple command line tool to make git more intuitive, along with useful GitHub addons.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-fugitive-v0_1_0.flake = false;
  inputs.src-fugitive-v0_1_0.type = "github";
  inputs.src-fugitive-v0_1_0.owner = "haltcase";
  inputs.src-fugitive-v0_1_0.repo = "fugitive";
  inputs.src-fugitive-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-fugitive-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."colorize".type = "github";
  inputs."colorize".owner = "riinr";
  inputs."colorize".repo = "flake-nimble";
  inputs."colorize".ref = "flake-pinning";
  inputs."colorize".dir = "nimpkgs/c/colorize";
  inputs."colorize".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorize".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-fugitive-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fugitive-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fugitive-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}