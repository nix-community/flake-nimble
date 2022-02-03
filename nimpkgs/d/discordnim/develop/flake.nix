{
  description = ''Discord library for Nim'';
  inputs.src-discordnim-develop.flake = false;
  inputs.src-discordnim-develop.type = "github";
  inputs.src-discordnim-develop.owner = "Krognol";
  inputs.src-discordnim-develop.repo = "discordnim";
  inputs.src-discordnim-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-discordnim-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-discordnim-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-discordnim-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}