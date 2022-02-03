{
  description = ''Modular multithreading Linux HTTP server'';
  inputs.src-guildenstern-3_1_0.flake = false;
  inputs.src-guildenstern-3_1_0.type = "github";
  inputs.src-guildenstern-3_1_0.owner = "olliNiinivaara";
  inputs.src-guildenstern-3_1_0.repo = "GuildenStern";
  inputs.src-guildenstern-3_1_0.ref = "refs/tags/3.1.0";
  
  outputs = { self, nixpkgs, src-guildenstern-3_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-guildenstern-3_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-guildenstern-3_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}