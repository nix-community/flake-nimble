{
  description = ''A sinatra-like web framework for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-jester-v0_4_2.flake = false;
  inputs.src-jester-v0_4_2.type = "github";
  inputs.src-jester-v0_4_2.owner = "dom96";
  inputs.src-jester-v0_4_2.repo = "jester";
  inputs.src-jester-v0_4_2.ref = "refs/tags/v0.4.2";
  inputs.src-jester-v0_4_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."httpbeast".type = "github";
  inputs."httpbeast".owner = "riinr";
  inputs."httpbeast".repo = "flake-nimble";
  inputs."httpbeast".ref = "flake-pinning";
  inputs."httpbeast".dir = "nimpkgs/h/httpbeast";
  inputs."httpbeast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."https://github.com/timotheecour/asynctools".type = "github";
  inputs."https://github.com/timotheecour/asynctools".owner = "riinr";
  inputs."https://github.com/timotheecour/asynctools".repo = "flake-nimble";
  inputs."https://github.com/timotheecour/asynctools".ref = "flake-pinning";
  inputs."https://github.com/timotheecour/asynctools".dir = "nimpkgs/h/https://github.com/timotheecour/asynctools";
  inputs."https://github.com/timotheecour/asynctools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/timotheecour/asynctools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-jester-v0_4_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jester-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jester-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}