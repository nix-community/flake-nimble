{
  description = ''APIs available in the latests version of Nim, backported to older stable releases'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-std_shims-master.flake = false;
  inputs.src-std_shims-master.type = "github";
  inputs.src-std_shims-master.owner = "status-im";
  inputs.src-std_shims-master.repo = "nim-std-shims";
  inputs.src-std_shims-master.ref = "refs/heads/master";
  inputs.src-std_shims-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-std_shims-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-std_shims-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-std_shims-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}