{
  description = ''A sinatra-like web framework for Nim with plugins.'';
  inputs.src-jesterwithplugins-master.flake = false;
  inputs.src-jesterwithplugins-master.type = "github";
  inputs.src-jesterwithplugins-master.owner = "JohnAD";
  inputs.src-jesterwithplugins-master.repo = "jesterwithplugins";
  inputs.src-jesterwithplugins-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-jesterwithplugins-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jesterwithplugins-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jesterwithplugins-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}