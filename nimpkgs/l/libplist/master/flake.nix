{
  description = ''wrapper around libplist https://github.com/libimobiledevice/libplist'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-libplist-master.flake = false;
  inputs.src-libplist-master.type = "github";
  inputs.src-libplist-master.owner = "samdmarshall";
  inputs.src-libplist-master.repo = "libplist.nim";
  inputs.src-libplist-master.ref = "refs/heads/master";
  inputs.src-libplist-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libplist-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libplist-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libplist-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}