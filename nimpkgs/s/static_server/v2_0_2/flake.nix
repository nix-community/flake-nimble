{
  description = ''A tiny static file web server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-static_server-v2_0_2.flake = false;
  inputs.src-static_server-v2_0_2.type = "github";
  inputs.src-static_server-v2_0_2.owner = "bung87";
  inputs.src-static_server-v2_0_2.repo = "nimhttpd";
  inputs.src-static_server-v2_0_2.ref = "refs/tags/v2.0.2";
  
  
  inputs."https://github.com/bung87/finder".type = "github";
  inputs."https://github.com/bung87/finder".owner = "riinr";
  inputs."https://github.com/bung87/finder".repo = "flake-nimble";
  inputs."https://github.com/bung87/finder".ref = "flake-pinning";
  inputs."https://github.com/bung87/finder".dir = "nimpkgs/h/https://github.com/bung87/finder";

  outputs = { self, nixpkgs, flakeNimbleLib, src-static_server-v2_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-static_server-v2_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-static_server-v2_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}