{
  description = ''Simple command line tool to make git more intuitive, along with useful GitHub addons.'';
  inputs.src-fugitive-v0_7_2.flake = false;
  inputs.src-fugitive-v0_7_2.type = "github";
  inputs.src-fugitive-v0_7_2.owner = "citycide";
  inputs.src-fugitive-v0_7_2.repo = "fugitive";
  inputs.src-fugitive-v0_7_2.ref = "refs/tags/v0.7.2";
  
  
  inputs."tempfile".url = "path:../../../t/tempfile";
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  outputs = { self, nixpkgs, src-fugitive-v0_7_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fugitive-v0_7_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fugitive-v0_7_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}