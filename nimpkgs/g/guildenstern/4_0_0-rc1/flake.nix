{
  description = ''Modular multithreading Linux HTTP server'';
  inputs.src-guildenstern-4_0_0-rc1.flake = false;
  inputs.src-guildenstern-4_0_0-rc1.type = "github";
  inputs.src-guildenstern-4_0_0-rc1.owner = "olliNiinivaara";
  inputs.src-guildenstern-4_0_0-rc1.repo = "GuildenStern";
  inputs.src-guildenstern-4_0_0-rc1.ref = "refs/tags/4.0.0-rc1";
  
  outputs = { self, nixpkgs, src-guildenstern-4_0_0-rc1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-guildenstern-4_0_0-rc1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-guildenstern-4_0_0-rc1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}