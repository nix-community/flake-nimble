{
  description = ''Simple command line tool to make git more intuitive, along with useful GitHub addons.'';
  inputs.src-fugitive-v0_1_2.flake = false;
  inputs.src-fugitive-v0_1_2.type = "github";
  inputs.src-fugitive-v0_1_2.owner = "haltcase";
  inputs.src-fugitive-v0_1_2.repo = "fugitive";
  inputs.src-fugitive-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."colorize".type = "github";
  inputs."colorize".owner = "riinr";
  inputs."colorize".repo = "flake-nimble";
  inputs."colorize".ref = "flake-pinning";
  inputs."colorize".dir = "nimpkgs/c/colorize";

  outputs = { self, nixpkgs, src-fugitive-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fugitive-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fugitive-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}