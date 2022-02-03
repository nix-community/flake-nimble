{
  description = ''Modular multithreading Linux HTTP server'';
  inputs.src-guildenstern-1_0_1.flake = false;
  inputs.src-guildenstern-1_0_1.type = "github";
  inputs.src-guildenstern-1_0_1.owner = "olliNiinivaara";
  inputs.src-guildenstern-1_0_1.repo = "GuildenStern";
  inputs.src-guildenstern-1_0_1.ref = "refs/tags/1.0.1";
  
  outputs = { self, nixpkgs, src-guildenstern-1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-guildenstern-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-guildenstern-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}