{
  description = ''A minimalistic connection pooling package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-tinypool-master.flake = false;
  inputs.src-tinypool-master.type = "github";
  inputs.src-tinypool-master.owner = "PhilippMDoerner";
  inputs.src-tinypool-master.repo = "TinyPool";
  inputs.src-tinypool-master.ref = "refs/heads/master";
  inputs.src-tinypool-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tinypool-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tinypool-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tinypool-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}