{
  description = ''Modular multithreading Linux HTTP server'';
  inputs.src-guildenstern-0_9.flake = false;
  inputs.src-guildenstern-0_9.type = "github";
  inputs.src-guildenstern-0_9.owner = "olliNiinivaara";
  inputs.src-guildenstern-0_9.repo = "GuildenStern";
  inputs.src-guildenstern-0_9.ref = "refs/tags/0.9";
  
  outputs = { self, nixpkgs, src-guildenstern-0_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-guildenstern-0_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-guildenstern-0_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}