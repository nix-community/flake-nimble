{
  description = ''Cross platform system information.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sysinfo-master.flake = false;
  inputs.src-sysinfo-master.type = "github";
  inputs.src-sysinfo-master.owner = "treeform";
  inputs.src-sysinfo-master.repo = "sysinfo";
  inputs.src-sysinfo-master.ref = "refs/heads/master";
  inputs.src-sysinfo-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sysinfo-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sysinfo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sysinfo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}