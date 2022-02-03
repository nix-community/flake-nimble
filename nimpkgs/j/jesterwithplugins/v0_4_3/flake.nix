{
  description = ''A sinatra-like web framework for Nim with plugins.'';
  inputs.src-jesterwithplugins-v0_4_3.flake = false;
  inputs.src-jesterwithplugins-v0_4_3.type = "github";
  inputs.src-jesterwithplugins-v0_4_3.owner = "JohnAD";
  inputs.src-jesterwithplugins-v0_4_3.repo = "jesterwithplugins";
  inputs.src-jesterwithplugins-v0_4_3.ref = "refs/tags/v0.4.3";
  
  outputs = { self, nixpkgs, src-jesterwithplugins-v0_4_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jesterwithplugins-v0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jesterwithplugins-v0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}