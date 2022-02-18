{
  description = ''A tiny static file web server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimhttpd-v1_0_7.flake = false;
  inputs.src-nimhttpd-v1_0_7.type = "github";
  inputs.src-nimhttpd-v1_0_7.owner = "h3rald";
  inputs.src-nimhttpd-v1_0_7.repo = "nimhttpd";
  inputs.src-nimhttpd-v1_0_7.ref = "refs/tags/v1.0.7";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimhttpd-v1_0_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimhttpd-v1_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimhttpd-v1_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}