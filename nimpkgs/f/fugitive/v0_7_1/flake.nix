{
  description = ''Simple command line tool to make git more intuitive, along with useful GitHub addons.'';
  inputs.src-fugitive-v0_7_1.flake = false;
  inputs.src-fugitive-v0_7_1.type = "github";
  inputs.src-fugitive-v0_7_1.owner = "haltcase";
  inputs.src-fugitive-v0_7_1.repo = "fugitive";
  inputs.src-fugitive-v0_7_1.ref = "refs/tags/v0.7.1";
  
  
  inputs."tempfile".url = "path:../../../t/tempfile";
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  outputs = { self, nixpkgs, src-fugitive-v0_7_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fugitive-v0_7_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fugitive-v0_7_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}