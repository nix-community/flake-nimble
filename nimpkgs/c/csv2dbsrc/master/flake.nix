{
  description = ''create db util sources from csv'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-csv2dbsrc-master.flake = false;
  inputs.src-csv2dbsrc-master.type = "github";
  inputs.src-csv2dbsrc-master.owner = "z-kk";
  inputs.src-csv2dbsrc-master.repo = "csv2dbsrc";
  inputs.src-csv2dbsrc-master.ref = "refs/heads/master";
  inputs.src-csv2dbsrc-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-csv2dbsrc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csv2dbsrc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-csv2dbsrc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}