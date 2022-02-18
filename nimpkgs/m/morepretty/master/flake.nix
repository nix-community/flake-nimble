{
  description = ''Morepretty - Does more than nimpretty.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-morepretty-master.flake = false;
  inputs.src-morepretty-master.type = "github";
  inputs.src-morepretty-master.owner = "treeform";
  inputs.src-morepretty-master.repo = "morepretty";
  inputs.src-morepretty-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-morepretty-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-morepretty-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-morepretty-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}