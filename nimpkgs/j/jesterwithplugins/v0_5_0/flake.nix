{
  description = ''A sinatra-like web framework for Nim with plugins.'';
  inputs.src-jesterwithplugins-v0_5_0.flake = false;
  inputs.src-jesterwithplugins-v0_5_0.type = "github";
  inputs.src-jesterwithplugins-v0_5_0.owner = "JohnAD";
  inputs.src-jesterwithplugins-v0_5_0.repo = "jesterwithplugins";
  inputs.src-jesterwithplugins-v0_5_0.ref = "refs/tags/v0.5.0";
  
  
  inputs."httpbeast".url = "path:../../../h/httpbeast";
  inputs."httpbeast".type = "github";
  inputs."httpbeast".owner = "riinr";
  inputs."httpbeast".repo = "flake-nimble";
  inputs."httpbeast".ref = "flake-pinning";
  inputs."httpbeast".dir = "nimpkgs/h/httpbeast";

  
  inputs."https://github.com/timotheecour/asynctools".url = "path:../../../h/https://github.com/timotheecour/asynctools";
  inputs."https://github.com/timotheecour/asynctools".type = "github";
  inputs."https://github.com/timotheecour/asynctools".owner = "riinr";
  inputs."https://github.com/timotheecour/asynctools".repo = "flake-nimble";
  inputs."https://github.com/timotheecour/asynctools".ref = "flake-pinning";
  inputs."https://github.com/timotheecour/asynctools".dir = "nimpkgs/h/https://github.com/timotheecour/asynctools";

  outputs = { self, nixpkgs, src-jesterwithplugins-v0_5_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jesterwithplugins-v0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jesterwithplugins-v0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}