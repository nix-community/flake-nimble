{
  description = ''A wrapper for the graphviz c api.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimviz-master.flake = false;
  inputs.src-nimviz-master.type = "github";
  inputs.src-nimviz-master.owner = "Rekihyt";
  inputs.src-nimviz-master.repo = "nimviz";
  inputs.src-nimviz-master.ref = "refs/heads/master";
  inputs.src-nimviz-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimviz-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimviz-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimviz-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}