{
  description = ''Modular multithreading Linux HTTP server'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-guildenstern-0_8.flake = false;
  inputs.src-guildenstern-0_8.type = "github";
  inputs.src-guildenstern-0_8.owner = "olliNiinivaara";
  inputs.src-guildenstern-0_8.repo = "GuildenStern";
  inputs.src-guildenstern-0_8.ref = "refs/tags/0.8";
  inputs.src-guildenstern-0_8.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-guildenstern-0_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-guildenstern-0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-guildenstern-0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}