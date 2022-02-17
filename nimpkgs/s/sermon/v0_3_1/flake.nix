{
  description = ''Monitor the state and memory of processes and URL response.'';
  inputs.src-sermon-v0_3_1.flake = false;
  inputs.src-sermon-v0_3_1.type = "github";
  inputs.src-sermon-v0_3_1.owner = "ThomasTJdev";
  inputs.src-sermon-v0_3_1.repo = "nim_sermon";
  inputs.src-sermon-v0_3_1.ref = "refs/tags/v0.3.1";
  
  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  outputs = { self, nixpkgs, src-sermon-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sermon-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sermon-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}