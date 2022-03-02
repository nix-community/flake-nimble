{
  description = ''Modular multithreading Linux HTTP server'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-guildenstern-0_9.flake = false;
  inputs.src-guildenstern-0_9.type = "github";
  inputs.src-guildenstern-0_9.owner = "olliNiinivaara";
  inputs.src-guildenstern-0_9.repo = "GuildenStern";
  inputs.src-guildenstern-0_9.ref = "refs/tags/0.9";
  inputs.src-guildenstern-0_9.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-guildenstern-0_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-guildenstern-0_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-guildenstern-0_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}