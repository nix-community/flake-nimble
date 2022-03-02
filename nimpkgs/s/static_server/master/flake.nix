{
  description = ''A tiny static file web server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-static_server-master.flake = false;
  inputs.src-static_server-master.type = "github";
  inputs.src-static_server-master.owner = "bung87";
  inputs.src-static_server-master.repo = "nimhttpd";
  inputs.src-static_server-master.ref = "refs/heads/master";
  inputs.src-static_server-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."finder".type = "github";
  # inputs."finder".owner = "riinr";
  # inputs."finder".repo = "flake-nimble";
  # inputs."finder".ref = "flake-pinning";
  # inputs."finder".dir = "nimpkgs/f/finder";
  # inputs."finder".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."finder".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-static_server-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-static_server-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-static_server-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}