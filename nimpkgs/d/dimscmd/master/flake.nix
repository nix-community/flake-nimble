{
  description = ''A command handler for the dimscord discord library'';
  inputs.src-dimscmd-master.flake = false;
  inputs.src-dimscmd-master.type = "github";
  inputs.src-dimscmd-master.owner = "ire4ever1190";
  inputs.src-dimscmd-master.repo = "dimscordCommandHandler";
  inputs.src-dimscmd-master.ref = "refs/heads/master";
  
  
  inputs."dimscord".type = "github";
  inputs."dimscord".owner = "riinr";
  inputs."dimscord".repo = "flake-nimble";
  inputs."dimscord".ref = "flake-pinning";
  inputs."dimscord".dir = "nimpkgs/d/dimscord";

  outputs = { self, nixpkgs, src-dimscmd-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dimscmd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dimscmd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}