{
  description = ''Monitor the state and memory of processes and URL response.'';
  inputs.src-sermon-v0_2_6.flake = false;
  inputs.src-sermon-v0_2_6.type = "github";
  inputs.src-sermon-v0_2_6.owner = "ThomasTJdev";
  inputs.src-sermon-v0_2_6.repo = "nim_sermon";
  inputs.src-sermon-v0_2_6.ref = "refs/tags/v0.2.6";
  
  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  outputs = { self, nixpkgs, src-sermon-v0_2_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sermon-v0_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sermon-v0_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}