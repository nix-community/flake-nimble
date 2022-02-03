{
  description = ''A sinatra-like web framework for Nim with plugins.'';
  inputs.src-jesterwithplugins-v0_4_2.flake = false;
  inputs.src-jesterwithplugins-v0_4_2.type = "github";
  inputs.src-jesterwithplugins-v0_4_2.owner = "JohnAD";
  inputs.src-jesterwithplugins-v0_4_2.repo = "jesterwithplugins";
  inputs.src-jesterwithplugins-v0_4_2.ref = "refs/tags/v0.4.2";
  
  outputs = { self, nixpkgs, src-jesterwithplugins-v0_4_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jesterwithplugins-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jesterwithplugins-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}