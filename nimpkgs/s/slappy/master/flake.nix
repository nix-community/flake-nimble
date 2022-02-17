{
  description = ''A 3d sound API for nim.'';
  inputs.src-slappy-master.flake = false;
  inputs.src-slappy-master.type = "github";
  inputs.src-slappy-master.owner = "treeform";
  inputs.src-slappy-master.repo = "slappy";
  inputs.src-slappy-master.ref = "refs/heads/master";
  
  
  inputs."openal".type = "github";
  inputs."openal".owner = "riinr";
  inputs."openal".repo = "flake-nimble";
  inputs."openal".ref = "flake-pinning";
  inputs."openal".dir = "nimpkgs/o/openal";

  
  inputs."vmath".type = "github";
  inputs."vmath".owner = "riinr";
  inputs."vmath".repo = "flake-nimble";
  inputs."vmath".ref = "flake-pinning";
  inputs."vmath".dir = "nimpkgs/v/vmath";

  
  inputs."supersnappy".type = "github";
  inputs."supersnappy".owner = "riinr";
  inputs."supersnappy".repo = "flake-nimble";
  inputs."supersnappy".ref = "flake-pinning";
  inputs."supersnappy".dir = "nimpkgs/s/supersnappy";

  outputs = { self, nixpkgs, src-slappy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-slappy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-slappy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}