{
  description = ''A command handler for the dimscord discord library'';
  inputs.src-dimscmd-0_2_0.flake = false;
  inputs.src-dimscmd-0_2_0.type = "github";
  inputs.src-dimscmd-0_2_0.owner = "ire4ever1190";
  inputs.src-dimscmd-0_2_0.repo = "dimscordCommandHandler";
  inputs.src-dimscmd-0_2_0.ref = "refs/tags/0.2.0";
  
  
  inputs."dimscord".type = "github";
  inputs."dimscord".owner = "riinr";
  inputs."dimscord".repo = "flake-nimble";
  inputs."dimscord".ref = "flake-pinning";
  inputs."dimscord".dir = "nimpkgs/d/dimscord";

  outputs = { self, nixpkgs, src-dimscmd-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dimscmd-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dimscmd-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}