{
  description = ''A command handler for the dimscord discord library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-dimscmd-1_1_1.flake = false;
  inputs.src-dimscmd-1_1_1.type = "github";
  inputs.src-dimscmd-1_1_1.owner = "ire4ever1190";
  inputs.src-dimscmd-1_1_1.repo = "dimscordCommandHandler";
  inputs.src-dimscmd-1_1_1.ref = "refs/tags/1.1.1";
  inputs.src-dimscmd-1_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."dimscord".type = "github";
  # inputs."dimscord".owner = "riinr";
  # inputs."dimscord".repo = "flake-nimble";
  # inputs."dimscord".ref = "flake-pinning";
  # inputs."dimscord".dir = "nimpkgs/d/dimscord";
  # inputs."dimscord".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."dimscord".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-dimscmd-1_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dimscmd-1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dimscmd-1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}