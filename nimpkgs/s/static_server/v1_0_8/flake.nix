{
  description = ''A tiny static file web server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-static_server-v1_0_8.flake = false;
  inputs.src-static_server-v1_0_8.type = "github";
  inputs.src-static_server-v1_0_8.owner = "bung87";
  inputs.src-static_server-v1_0_8.repo = "nimhttpd";
  inputs.src-static_server-v1_0_8.ref = "refs/tags/v1.0.8";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-static_server-v1_0_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-static_server-v1_0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-static_server-v1_0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}