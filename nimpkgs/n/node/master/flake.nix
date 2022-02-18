{
  description = ''Library for async programming and communication. This Library uses a future/promise, non-blocking I/O model based on libuv.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-node-master.flake = false;
  inputs.src-node-master.type = "github";
  inputs.src-node-master.owner = "tulayang";
  inputs.src-node-master.repo = "nimnode";
  inputs.src-node-master.ref = "refs/heads/master";
  
  
  inputs."httpkit".type = "github";
  inputs."httpkit".owner = "riinr";
  inputs."httpkit".repo = "flake-nimble";
  inputs."httpkit".ref = "flake-pinning";
  inputs."httpkit".dir = "nimpkgs/h/httpkit";

  outputs = { self, nixpkgs, flakeNimbleLib, src-node-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-node-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-node-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}