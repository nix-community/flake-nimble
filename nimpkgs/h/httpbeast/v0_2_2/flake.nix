{
  description = ''A performant and scalable HTTP server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-httpbeast-v0_2_2.flake = false;
  inputs.src-httpbeast-v0_2_2.type = "github";
  inputs.src-httpbeast-v0_2_2.owner = "dom96";
  inputs.src-httpbeast-v0_2_2.repo = "httpbeast";
  inputs.src-httpbeast-v0_2_2.ref = "refs/tags/v0.2.2";
  inputs.src-httpbeast-v0_2_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."https://github.com/timotheecour/asynctools".type = "github";
  inputs."https://github.com/timotheecour/asynctools".owner = "riinr";
  inputs."https://github.com/timotheecour/asynctools".repo = "flake-nimble";
  inputs."https://github.com/timotheecour/asynctools".ref = "flake-pinning";
  inputs."https://github.com/timotheecour/asynctools".dir = "nimpkgs/h/https://github.com/timotheecour/asynctools";
  inputs."https://github.com/timotheecour/asynctools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/timotheecour/asynctools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-httpbeast-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpbeast-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-httpbeast-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}