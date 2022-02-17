{
  description = ''Library for async programming and communication. This Library uses a future/promise, non-blocking I/O model based on libuv.'';
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

  outputs = { self, nixpkgs, src-node-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-node-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-node-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}