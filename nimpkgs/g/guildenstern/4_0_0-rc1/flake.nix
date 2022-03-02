{
  description = ''Modular multithreading Linux HTTP server'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-guildenstern-4_0_0-rc1.flake = false;
  inputs.src-guildenstern-4_0_0-rc1.type = "github";
  inputs.src-guildenstern-4_0_0-rc1.owner = "olliNiinivaara";
  inputs.src-guildenstern-4_0_0-rc1.repo = "GuildenStern";
  inputs.src-guildenstern-4_0_0-rc1.ref = "refs/tags/4.0.0-rc1";
  inputs.src-guildenstern-4_0_0-rc1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-guildenstern-4_0_0-rc1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-guildenstern-4_0_0-rc1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-guildenstern-4_0_0-rc1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}