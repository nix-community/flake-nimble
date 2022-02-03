{
  description = ''Jenkins Hasher producing 32 bit digests'';
  inputs.src-jhash-master.flake = false;
  inputs.src-jhash-master.type = "github";
  inputs.src-jhash-master.owner = "mjfh";
  inputs.src-jhash-master.repo = "nim-jhash";
  inputs.src-jhash-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-jhash-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jhash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jhash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}