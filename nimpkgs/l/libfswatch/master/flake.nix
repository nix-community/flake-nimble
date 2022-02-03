{
  description = ''Nim binding to libfswatch'';
  inputs.src-libfswatch-master.flake = false;
  inputs.src-libfswatch-master.type = "github";
  inputs.src-libfswatch-master.owner = "paul-nameless";
  inputs.src-libfswatch-master.repo = "nim-fswatch";
  inputs.src-libfswatch-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libfswatch-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libfswatch-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libfswatch-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}