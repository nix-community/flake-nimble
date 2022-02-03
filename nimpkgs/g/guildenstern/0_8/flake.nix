{
  description = ''Modular multithreading Linux HTTP server'';
  inputs.src-guildenstern-0_8.flake = false;
  inputs.src-guildenstern-0_8.type = "github";
  inputs.src-guildenstern-0_8.owner = "olliNiinivaara";
  inputs.src-guildenstern-0_8.repo = "GuildenStern";
  inputs.src-guildenstern-0_8.ref = "refs/tags/0.8";
  
  outputs = { self, nixpkgs, src-guildenstern-0_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-guildenstern-0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-guildenstern-0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}