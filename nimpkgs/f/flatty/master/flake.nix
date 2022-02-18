{
  description = ''Serializer and tools for flat binary files.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-flatty-master.flake = false;
  inputs.src-flatty-master.type = "github";
  inputs.src-flatty-master.owner = "treeform";
  inputs.src-flatty-master.repo = "flatty";
  inputs.src-flatty-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-flatty-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-flatty-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-flatty-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}