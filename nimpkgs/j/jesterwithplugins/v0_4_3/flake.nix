{
  description = ''A sinatra-like web framework for Nim with plugins.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-jesterwithplugins-v0_4_3.flake = false;
  inputs.src-jesterwithplugins-v0_4_3.type = "github";
  inputs.src-jesterwithplugins-v0_4_3.owner = "JohnAD";
  inputs.src-jesterwithplugins-v0_4_3.repo = "jesterwithplugins";
  inputs.src-jesterwithplugins-v0_4_3.ref = "refs/tags/v0.4.3";
  inputs.src-jesterwithplugins-v0_4_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jesterwithplugins-v0_4_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jesterwithplugins-v0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jesterwithplugins-v0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}