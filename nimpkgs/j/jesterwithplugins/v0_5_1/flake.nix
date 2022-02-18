{
  description = ''A sinatra-like web framework for Nim with plugins.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jesterwithplugins-v0_5_1.flake = false;
  inputs.src-jesterwithplugins-v0_5_1.type = "github";
  inputs.src-jesterwithplugins-v0_5_1.owner = "JohnAD";
  inputs.src-jesterwithplugins-v0_5_1.repo = "jesterwithplugins";
  inputs.src-jesterwithplugins-v0_5_1.ref = "refs/tags/v0.5.1";
  
  
  inputs."httpbeast".type = "github";
  inputs."httpbeast".owner = "riinr";
  inputs."httpbeast".repo = "flake-nimble";
  inputs."httpbeast".ref = "flake-pinning";
  inputs."httpbeast".dir = "nimpkgs/h/httpbeast";

  
  inputs."https://github.com/timotheecour/asynctools".type = "github";
  inputs."https://github.com/timotheecour/asynctools".owner = "riinr";
  inputs."https://github.com/timotheecour/asynctools".repo = "flake-nimble";
  inputs."https://github.com/timotheecour/asynctools".ref = "flake-pinning";
  inputs."https://github.com/timotheecour/asynctools".dir = "nimpkgs/h/https://github.com/timotheecour/asynctools";

  outputs = { self, nixpkgs, flakeNimbleLib, src-jesterwithplugins-v0_5_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jesterwithplugins-v0_5_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jesterwithplugins-v0_5_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}