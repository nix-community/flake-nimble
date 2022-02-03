{
  description = ''JS {de,}serialization as it says on the tin'';
  inputs.src-jstin-master.flake = false;
  inputs.src-jstin-master.type = "github";
  inputs.src-jstin-master.owner = "nim-lang";
  inputs.src-jstin-master.repo = "jstin";
  inputs.src-jstin-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-jstin-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jstin-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jstin-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}