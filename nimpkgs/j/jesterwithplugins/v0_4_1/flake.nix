{
  description = ''A sinatra-like web framework for Nim with plugins.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jesterwithplugins-v0_4_1.flake = false;
  inputs.src-jesterwithplugins-v0_4_1.type = "github";
  inputs.src-jesterwithplugins-v0_4_1.owner = "JohnAD";
  inputs.src-jesterwithplugins-v0_4_1.repo = "jesterwithplugins";
  inputs.src-jesterwithplugins-v0_4_1.ref = "refs/tags/v0.4.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jesterwithplugins-v0_4_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jesterwithplugins-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jesterwithplugins-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}