{
  description = ''Modular multithreading Linux HTTP server'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-guildenstern-master.flake = false;
  inputs.src-guildenstern-master.type = "github";
  inputs.src-guildenstern-master.owner = "olliNiinivaara";
  inputs.src-guildenstern-master.repo = "GuildenStern";
  inputs.src-guildenstern-master.ref = "refs/heads/master";
  inputs.src-guildenstern-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-guildenstern-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-guildenstern-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-guildenstern-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}