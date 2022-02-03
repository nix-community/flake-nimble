{
  description = ''An Atom, RSS, and JSONfeed parser'';
  inputs.src-feednim-master.flake = false;
  inputs.src-feednim-master.type = "github";
  inputs.src-feednim-master.owner = "johnconway";
  inputs.src-feednim-master.repo = "feed-nim";
  inputs.src-feednim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-feednim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-feednim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-feednim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}