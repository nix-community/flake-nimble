{
  description = ''Nim's function chaining and method cascading'';
  inputs.src-chain-master.flake = false;
  inputs.src-chain-master.type = "github";
  inputs.src-chain-master.owner = "khchen";
  inputs.src-chain-master.repo = "chain";
  inputs.src-chain-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-chain-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chain-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chain-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}