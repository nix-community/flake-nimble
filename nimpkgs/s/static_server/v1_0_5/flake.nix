{
  description = ''A tiny static file web server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-static_server-v1_0_5.flake = false;
  inputs.src-static_server-v1_0_5.type = "github";
  inputs.src-static_server-v1_0_5.owner = "bung87";
  inputs.src-static_server-v1_0_5.repo = "nimhttpd";
  inputs.src-static_server-v1_0_5.ref = "refs/tags/v1.0.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-static_server-v1_0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-static_server-v1_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-static_server-v1_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}