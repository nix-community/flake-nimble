{
  description = ''Kinto Client for Nim'';
  inputs.src-Kinto-master.flake = false;
  inputs.src-Kinto-master.type = "github";
  inputs.src-Kinto-master.owner = "OpenSystemsLab";
  inputs.src-Kinto-master.repo = "kinto.nim";
  inputs.src-Kinto-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-Kinto-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Kinto-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-Kinto-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}