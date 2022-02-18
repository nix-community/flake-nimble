{
  description = ''Simple command line tool to make git more intuitive, along with useful GitHub addons.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-fugitive-v0_10_1.flake = false;
  inputs.src-fugitive-v0_10_1.type = "github";
  inputs.src-fugitive-v0_10_1.owner = "haltcase";
  inputs.src-fugitive-v0_10_1.repo = "fugitive";
  inputs.src-fugitive-v0_10_1.ref = "refs/tags/v0.10.1";
  
  
  inputs."gara".type = "github";
  inputs."gara".owner = "riinr";
  inputs."gara".repo = "flake-nimble";
  inputs."gara".ref = "flake-pinning";
  inputs."gara".dir = "nimpkgs/g/gara";

  
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  
  inputs."unpack".type = "github";
  inputs."unpack".owner = "riinr";
  inputs."unpack".repo = "flake-nimble";
  inputs."unpack".ref = "flake-pinning";
  inputs."unpack".dir = "nimpkgs/u/unpack";

  outputs = { self, nixpkgs, flakeNimbleLib, src-fugitive-v0_10_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fugitive-v0_10_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fugitive-v0_10_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}