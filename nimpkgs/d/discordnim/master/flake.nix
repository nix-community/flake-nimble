{
  description = ''Discord library for Nim'';
  inputs.src-discordnim-master.flake = false;
  inputs.src-discordnim-master.type = "github";
  inputs.src-discordnim-master.owner = "Krognol";
  inputs.src-discordnim-master.repo = "discordnim";
  inputs.src-discordnim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-discordnim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-discordnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-discordnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}