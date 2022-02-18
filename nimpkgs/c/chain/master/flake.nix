{
  description = ''Nim's function chaining and method cascading'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-chain-master.flake = false;
  inputs.src-chain-master.type = "github";
  inputs.src-chain-master.owner = "khchen";
  inputs.src-chain-master.repo = "chain";
  inputs.src-chain-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-chain-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chain-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chain-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}