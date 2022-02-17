{
  description = ''A tiny static file web server.'';
  inputs.src-static_server-master.flake = false;
  inputs.src-static_server-master.type = "github";
  inputs.src-static_server-master.owner = "bung87";
  inputs.src-static_server-master.repo = "nimhttpd";
  inputs.src-static_server-master.ref = "refs/heads/master";
  
  
  inputs."finder".type = "github";
  inputs."finder".owner = "riinr";
  inputs."finder".repo = "flake-nimble";
  inputs."finder".ref = "flake-pinning";
  inputs."finder".dir = "nimpkgs/f/finder";

  outputs = { self, nixpkgs, src-static_server-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-static_server-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-static_server-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}