{
  description = ''A sinatra-like web framework for Nim with plugins.'';
  inputs.src-jesterwithplugins-v0_2_1.flake = false;
  inputs.src-jesterwithplugins-v0_2_1.type = "github";
  inputs.src-jesterwithplugins-v0_2_1.owner = "JohnAD";
  inputs.src-jesterwithplugins-v0_2_1.repo = "jesterwithplugins";
  inputs.src-jesterwithplugins-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-jesterwithplugins-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jesterwithplugins-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jesterwithplugins-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}