{
  description = ''A command handler for the dimscord discord library'';
  inputs.src-dimscmd-1_1_0.flake = false;
  inputs.src-dimscmd-1_1_0.type = "github";
  inputs.src-dimscmd-1_1_0.owner = "ire4ever1190";
  inputs.src-dimscmd-1_1_0.repo = "dimscordCommandHandler";
  inputs.src-dimscmd-1_1_0.ref = "refs/tags/1.1.0";
  
  
  inputs."dimscord".type = "github";
  inputs."dimscord".owner = "riinr";
  inputs."dimscord".repo = "flake-nimble";
  inputs."dimscord".ref = "flake-pinning";
  inputs."dimscord".dir = "nimpkgs/d/dimscord";

  outputs = { self, nixpkgs, src-dimscmd-1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dimscmd-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dimscmd-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}