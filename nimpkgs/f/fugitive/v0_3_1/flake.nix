{
  description = ''Simple command line tool to make git more intuitive, along with useful GitHub addons.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-fugitive-v0_3_1.flake = false;
  inputs.src-fugitive-v0_3_1.type = "github";
  inputs.src-fugitive-v0_3_1.owner = "haltcase";
  inputs.src-fugitive-v0_3_1.repo = "fugitive";
  inputs.src-fugitive-v0_3_1.ref = "refs/tags/v0.3.1";
  inputs.src-fugitive-v0_3_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."tempfile".type = "github";
  # inputs."tempfile".owner = "riinr";
  # inputs."tempfile".repo = "flake-nimble";
  # inputs."tempfile".ref = "flake-pinning";
  # inputs."tempfile".dir = "nimpkgs/t/tempfile";
  # inputs."tempfile".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."tempfile".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-fugitive-v0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fugitive-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fugitive-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}