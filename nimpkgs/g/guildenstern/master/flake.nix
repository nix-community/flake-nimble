{
  description = ''Modular multithreading Linux HTTP server'';
  inputs.src-guildenstern-master.flake = false;
  inputs.src-guildenstern-master.type = "github";
  inputs.src-guildenstern-master.owner = "olliNiinivaara";
  inputs.src-guildenstern-master.repo = "GuildenStern";
  inputs.src-guildenstern-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-guildenstern-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-guildenstern-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-guildenstern-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}