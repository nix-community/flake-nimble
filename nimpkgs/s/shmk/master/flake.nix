{
  description = ''Smart file/folder creation'';
  inputs.src-shmk-master.flake = false;
  inputs.src-shmk-master.type = "gitlab";
  inputs.src-shmk-master.owner = "thisNimAgo";
  inputs.src-shmk-master.repo = "mk";
  inputs.src-shmk-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-shmk-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shmk-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shmk-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}