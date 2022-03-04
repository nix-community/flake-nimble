{
  description = ''A command handler for the dimscord discord library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-dimscmd-master.flake = false;
  inputs.src-dimscmd-master.type = "github";
  inputs.src-dimscmd-master.owner = "ire4ever1190";
  inputs.src-dimscmd-master.repo = "dimscordCommandHandler";
  inputs.src-dimscmd-master.ref = "refs/heads/master";
  inputs.src-dimscmd-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."dimscord".type = "github";
  inputs."dimscord".owner = "riinr";
  inputs."dimscord".repo = "flake-nimble";
  inputs."dimscord".ref = "flake-pinning";
  inputs."dimscord".dir = "nimpkgs/d/dimscord";
  inputs."dimscord".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-dimscmd-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dimscmd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dimscmd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}