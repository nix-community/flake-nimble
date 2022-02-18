{
  description = ''A tiny static file web server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-static_server-v2_0_0.flake = false;
  inputs.src-static_server-v2_0_0.type = "github";
  inputs.src-static_server-v2_0_0.owner = "bung87";
  inputs.src-static_server-v2_0_0.repo = "nimhttpd";
  inputs.src-static_server-v2_0_0.ref = "refs/tags/v2.0.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-static_server-v2_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-static_server-v2_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-static_server-v2_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}