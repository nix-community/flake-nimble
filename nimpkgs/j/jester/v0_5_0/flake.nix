{
  description = ''A sinatra-like web framework for Nim.'';
  inputs.src-jester-v0_5_0.flake = false;
  inputs.src-jester-v0_5_0.type = "github";
  inputs.src-jester-v0_5_0.owner = "dom96";
  inputs.src-jester-v0_5_0.repo = "jester";
  inputs.src-jester-v0_5_0.ref = "refs/tags/v0.5.0";
  
  
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

  outputs = { self, nixpkgs, src-jester-v0_5_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jester-v0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jester-v0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}