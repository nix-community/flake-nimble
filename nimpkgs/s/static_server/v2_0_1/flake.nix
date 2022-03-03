{
  description = ''A tiny static file web server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-static_server-v2_0_1.flake = false;
  inputs.src-static_server-v2_0_1.type = "github";
  inputs.src-static_server-v2_0_1.owner = "bung87";
  inputs.src-static_server-v2_0_1.repo = "nimhttpd";
  inputs.src-static_server-v2_0_1.ref = "refs/tags/v2.0.1";
  inputs.src-static_server-v2_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-static_server-v2_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-static_server-v2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-static_server-v2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}