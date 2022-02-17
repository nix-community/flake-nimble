{
  description = ''Monitor the state and memory of processes and URL response.'';
  inputs.src-sermon-master.flake = false;
  inputs.src-sermon-master.type = "github";
  inputs.src-sermon-master.owner = "ThomasTJdev";
  inputs.src-sermon-master.repo = "nim_sermon";
  inputs.src-sermon-master.ref = "refs/heads/master";
  
  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  outputs = { self, nixpkgs, src-sermon-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sermon-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sermon-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}