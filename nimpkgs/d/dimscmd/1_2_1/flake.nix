{
  description = ''A command handler for the dimscord discord library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-dimscmd-1_2_1.flake = false;
  inputs.src-dimscmd-1_2_1.type = "github";
  inputs.src-dimscmd-1_2_1.owner = "ire4ever1190";
  inputs.src-dimscmd-1_2_1.repo = "dimscordCommandHandler";
  inputs.src-dimscmd-1_2_1.ref = "refs/tags/1.2.1";
  
  
  inputs."dimscord".type = "github";
  inputs."dimscord".owner = "riinr";
  inputs."dimscord".repo = "flake-nimble";
  inputs."dimscord".ref = "flake-pinning";
  inputs."dimscord".dir = "nimpkgs/d/dimscord";

  outputs = { self, nixpkgs, flakeNimbleLib, src-dimscmd-1_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dimscmd-1_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dimscmd-1_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}