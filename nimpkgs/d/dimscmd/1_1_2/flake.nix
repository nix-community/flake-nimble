{
  description = ''A command handler for the dimscord discord library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-dimscmd-1_1_2.flake = false;
  inputs.src-dimscmd-1_1_2.type = "github";
  inputs.src-dimscmd-1_1_2.owner = "ire4ever1190";
  inputs.src-dimscmd-1_1_2.repo = "dimscordCommandHandler";
  inputs.src-dimscmd-1_1_2.ref = "refs/tags/1.1.2";
  inputs.src-dimscmd-1_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."dimscord".type = "github";
  inputs."dimscord".owner = "riinr";
  inputs."dimscord".repo = "flake-nimble";
  inputs."dimscord".ref = "flake-pinning";
  inputs."dimscord".dir = "nimpkgs/d/dimscord";
  inputs."dimscord".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-dimscmd-1_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dimscmd-1_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dimscmd-1_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}