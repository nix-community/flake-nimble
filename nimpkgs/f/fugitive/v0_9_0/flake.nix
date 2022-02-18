{
  description = ''Simple command line tool to make git more intuitive, along with useful GitHub addons.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-fugitive-v0_9_0.flake = false;
  inputs.src-fugitive-v0_9_0.type = "github";
  inputs.src-fugitive-v0_9_0.owner = "haltcase";
  inputs.src-fugitive-v0_9_0.repo = "fugitive";
  inputs.src-fugitive-v0_9_0.ref = "refs/tags/v0.9.0";
  
  
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  outputs = { self, nixpkgs, flakeNimbleLib, src-fugitive-v0_9_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fugitive-v0_9_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fugitive-v0_9_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}