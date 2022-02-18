{
  description = ''A tiny static file web server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimhttpd-master.flake = false;
  inputs.src-nimhttpd-master.type = "github";
  inputs.src-nimhttpd-master.owner = "h3rald";
  inputs.src-nimhttpd-master.repo = "nimhttpd";
  inputs.src-nimhttpd-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimhttpd-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimhttpd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimhttpd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}