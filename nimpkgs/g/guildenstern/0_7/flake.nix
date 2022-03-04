{
  description = ''Modular multithreading Linux HTTP server'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-guildenstern-0_7.flake = false;
  inputs.src-guildenstern-0_7.type = "github";
  inputs.src-guildenstern-0_7.owner = "olliNiinivaara";
  inputs.src-guildenstern-0_7.repo = "GuildenStern";
  inputs.src-guildenstern-0_7.ref = "refs/tags/0.7";
  inputs.src-guildenstern-0_7.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."weave".type = "github";
  inputs."weave".owner = "riinr";
  inputs."weave".repo = "flake-nimble";
  inputs."weave".ref = "flake-pinning";
  inputs."weave".dir = "nimpkgs/w/weave";
  inputs."weave".inputs.nixpkgs.follows = "nixpkgs";
  inputs."weave".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-guildenstern-0_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-guildenstern-0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-guildenstern-0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}