{
  description = ''A command handler for the dimscord discord library'';
  inputs.src-dimscmd-1_3_1.flake = false;
  inputs.src-dimscmd-1_3_1.type = "github";
  inputs.src-dimscmd-1_3_1.owner = "ire4ever1190";
  inputs.src-dimscmd-1_3_1.repo = "dimscordCommandHandler";
  inputs.src-dimscmd-1_3_1.ref = "refs/tags/1.3.1";
  
  
  inputs."https://github.com/krisppurg/dimscord".type = "github";
  inputs."https://github.com/krisppurg/dimscord".owner = "riinr";
  inputs."https://github.com/krisppurg/dimscord".repo = "flake-nimble";
  inputs."https://github.com/krisppurg/dimscord".ref = "flake-pinning";
  inputs."https://github.com/krisppurg/dimscord".dir = "nimpkgs/h/https://github.com/krisppurg/dimscord";

  outputs = { self, nixpkgs, src-dimscmd-1_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dimscmd-1_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dimscmd-1_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}