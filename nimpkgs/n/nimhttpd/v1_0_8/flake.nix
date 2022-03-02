{
  description = ''A tiny static file web server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimhttpd-v1_0_8.flake = false;
  inputs.src-nimhttpd-v1_0_8.type = "github";
  inputs.src-nimhttpd-v1_0_8.owner = "h3rald";
  inputs.src-nimhttpd-v1_0_8.repo = "nimhttpd";
  inputs.src-nimhttpd-v1_0_8.ref = "refs/tags/v1.0.8";
  inputs.src-nimhttpd-v1_0_8.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimhttpd-v1_0_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimhttpd-v1_0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimhttpd-v1_0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}